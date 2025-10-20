Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EC61D618C
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760963994; cv=none; b=HdujcQnIK1ZmBb2hVXTRqt/47xxrIG9uOXO5pPn6T1EGSZlJckLZaqZWkEp+xITX8nEN24LZqkb/hlYh2b9Mekk+s+GVFOKAHQ5ELq+kU3gEst3OtjBbYFRXHK0GpFrG6na795Zuh2yPhMOedlUkVztVEvwcEKMFhCAtNKF7y+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760963994; c=relaxed/simple;
	bh=FMAi/pPOjzdtZcz5U7jIiTDqEi6gPONRjOxbYEAYfY4=;
	h=To:Subject:From:Message-Id:Date; b=YtoYrthCgi6aIfoYb9pGcGnVKWUwsDrT/rKG58oNIY1OQ2tIEUXprENZKgHQvpDkgNvRjWnU5Bz12BFY8PIa3bcGurCDkGkL2Ddwnt6rlFzZrF08LZTAhAyapMUUC3RiRKYZ4g834fX7AeLjv6qAvSoQQIQy+v/PNrXZAoDL/I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jkv7/ikX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jkv7/ikX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A780AC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760963993;
	bh=FMAi/pPOjzdtZcz5U7jIiTDqEi6gPONRjOxbYEAYfY4=;
	h=To:Subject:From:Date:From;
	b=Jkv7/ikXwYCuaKVmY+Labd7kL5m2jk3UuqdBKfQqVkz7YyynoHQA1J36zMdoiIHGP
	 8sSA4/s43IWlj1z/swmnSfME2hWpWYotdX7mxtm5b5u30531E3Mb8MxnJcnh0tAUnw
	 lCQnEhntCfA4nngrXMOM0pgBvL4t5Kdev6Yk1zqAlx8gaeucMh2mlAqAeUgqLuXdfJ
	 8YzHKOdjIMQw8r+sdNamj1eWGRHDpvI6PT/aNmI/T2cnK9Ar8GUTcLJP7SwDIodr8c
	 WPFSSxKeSbYEe2e4Oyu5i2A2NbADwNAgAAe8/MZI0RlaZfdA/IolyuKckUFpXjm878
	 WJyoN3VGBeUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2DCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096399358.11698.5160356079547941200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77b86e97ecb5c8e2f7d9a52ae399415da66a4a6b325a9ad1351f96e8cd73568
Date: Mon, 20 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760963993
