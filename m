Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8C93603E5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772129094; cv=none; b=pmMjmLMBB7VAwWOKNiRY3z+rM0CtuZm4ZHjYrhsJd16WjX85/bDgu546OhrAx4bA31vpyPwnxcJvR8nzadln2p7gcDOs74RcXQp+M7XJX7chFjcrGDwv2scYV+PEiMnvLsNdqJHUc8RnMRuhlNaULqc83jJihGmQEc+kVuZ1BZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772129094; c=relaxed/simple;
	bh=4E9GqyUtkkCFrEdFXzIQOTsQfvmrzjmgEmuXPxe24OE=;
	h=To:Subject:From:Message-Id:Date; b=Cr6GVdJkGeabCb3Kb0bvM9938RRaFA+1XrEfnxgQpsrLNML/imvxaBOj83UKB0l+1scEW6IHeh9hPyz9sx2EGn+FP8TxX7I0HfwG3Ndg7rgt4lN1MC6YCqgHUokSKU1jgkamilItYL1KgcHZIivIQjkLXe+UUS0NTEIzabKW4JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtqJGQHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtqJGQHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F92C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772129093;
	bh=4E9GqyUtkkCFrEdFXzIQOTsQfvmrzjmgEmuXPxe24OE=;
	h=To:Subject:From:Date:From;
	b=DtqJGQHKLLk4Idm6DjC9CPEqXodNFCgPWyE8YUIQzpSD8IOCGq4zdjSQgeHOc8Tow
	 azeJvunsYfgaLeTDt1OMLo54Fwt9e1+1InRH+ptlCCRIqVU/NXLGrjrV9V30lhjBEo
	 tnwG7J4FvhcXmTviBIFfBNyi8UjunIrsOVfQbfgONDsh2H2pVeo1r+IWXLUFuxyLcX
	 BhQIM6Pj9k5xr0MOCxMoi0OsxVNYy2ByFBH3QF+bt1BNDQeGVT3EHD0is/9tWhdaVd
	 38laAxo+csXSZdR99BhVIsMHoLyAYqt6OahPQtmpvM3iLiE6agP7Afas7rG0ZLy5KC
	 kS7tPXWfeGtpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA5FD8FEC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212909360.10522.11481759412356938169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3210bfddebe2a6285a1be94ab55c30c4076d4618e4ba235a9f68fa1f12d97fa
Date: Thu, 26 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772129093
