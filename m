Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B81B3B19
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782044794; cv=none; b=YwvMhgyGZxyDBBMtahDwAaIF36z84eV2cfvam9kPSmcXcx0/dV4fW8VmE0BWFWL9IvLR+2u9eGdVZXO3OOCa+Qd7YELFxhHqgLOL1IpVefBO6q/SkIsbzdFh7TvvQ1D1wQT3mhQ2TNM99RTt2eBOQMRMWht3fiukXR2ult+0eak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782044794; c=relaxed/simple;
	bh=pjHjAfFnGjoVejpaeunfSSiByqiDX3udmvtt0fqdvtE=;
	h=To:Subject:From:Message-Id:Date; b=bwKqADz9UeVXndN2AdBhd0YrlS4eCnXMW3fKw17ZrqnTf3ldQo3bAvJm2QnJd9EAODqFxbEtpjmn/GG8Ndv1d6UCf3r9wYKDrHdTrhar1TSr3HeBHOtPCa4YzKFzrgMPbYtUzOurKpKKbqhOyPCd4JyXqQ0GpPBpwIvZ0bR6xl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThhQddIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThhQddIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D15C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782044793;
	bh=pjHjAfFnGjoVejpaeunfSSiByqiDX3udmvtt0fqdvtE=;
	h=To:Subject:From:Date:From;
	b=ThhQddIch0v7lfLMb0c2wFX0rUTMh9hoA2m21bTThR7e7RD/2bx7V2GogEolFRKgm
	 kqki7CuvIfUM80tIlP9spPX/eBXfMcZNwMXuCQvBwXKAhQ63XPw43KWHiD/GAN0tYS
	 DGg+tWvAYSEWOY2njPhoAWSUwKXm0VYf/znzo+hQEuQSiXBf/tIesX8YLvsrwcWUvC
	 GseXCOF8wJ7m0oylO7Bi9xz/tMA92TGB/2BHXv+UZdbGA5McSjGTPe1B+X2E7qbDCz
	 Bm17HSK/2XDullT07S4wEBQqdmfh5dwWH6nx68bn77h9dviCM5kCNs/25wb2jv7HWa
	 HaT0R7Seg8W0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F20CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204479370.1436.5003821314641551351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623c0f18b039c47c63fc7bfc066447c4949724c1c21115191bb41b4d1cedc48e
Date: Sun, 21 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782044793
