Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939773DE420
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777468054; cv=none; b=Mv1rQfZ8zcaH5FOisj9X6/8PY/Gl1ZED/c9wb/wfLvY3QURIQqhKA2AwTmtAaDXdTBPkHH9EJfyamYdQK4j5xtg7whKqXPMh7b8z+cBpUrKPTmXbhk0UAbaFyQJM0qIQEyBRCKi0n8k0gjiq/NXqehoyNonqmbHdPvBpkFIfLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777468054; c=relaxed/simple;
	bh=NkZOB9rxsDu7yYe3E3L6GIIRtJhG9UnDw4inOSSKI9c=;
	h=To:Subject:From:Message-Id:Date; b=jeYhBpF7RvMZNcq3NBr+hkIoKaRNQgWdhGSto6fScyl2Y+TSAZti76YFFLxYUBYpksgNbxv6qYrmDCUY0d/MckVm39Qqb4vmzCZBTPfdEW2LzkZ6ATiwCxMHqW+ojZgqmzcOxroqYbTOjlXg9AAxYzJMiHXFkxvlWbZC1IR4n2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emU/QRpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emU/QRpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7A8C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777468053;
	bh=NkZOB9rxsDu7yYe3E3L6GIIRtJhG9UnDw4inOSSKI9c=;
	h=To:Subject:From:Date:From;
	b=emU/QRpMgR7LuAilEYwsUxwDEY3eCmzvhV/HoQzNfXaEhR170IckZ8glSQ/dIlFbE
	 KM/gPZBdiSyPlCz33lLfCwJv+3pCNsTKdZz5WuOYQ2Hwo8pGeZ9tuGUiBhycbslbCq
	 S+S09lQ1gSxq01d/+sAK4Xq4kNve8lLUG716pi5Cd3XzuDlfpzvS30Aq75X35WWaZq
	 s/IseoJR8iD946lr5TRf4xQZwN7Q9tebi11yfdhbHwufRXBxxNZCIg/4HUpmv48Yrl
	 iaiSkZN1mNAiPWle+YJ3EikIY3jLYAe6n5ScanK7hqNtUUcVhcIsntuvk426pJIZHK
	 nzzuUk3zF3h4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A4FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746805370.16160.10584143941473725962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea19694aa46630ddc51ecb6f1cde23d3f34dd0f380770a39eae2151d25cc55f3
Date: Wed, 29 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777468053
