Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1804027A93C
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761467994; cv=none; b=BDactDop89ZLueFZpgcs1IKXqXFTLP5i9a0L7OzvukzhcGsUGabnzif5hhBC3CPm9vSKe9gCxeKWOWXkRQZLzaG6jFl5vaY+cOpuTAMh52hKL7ez6ZUPGsTKwnpPageWjyc7cDMOsdflyO1soi+5GXm40Qpl2LyCZHMWoN4+FMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761467994; c=relaxed/simple;
	bh=PcCmjNkSn3AIYcZvYSzX7zYQJP2vil7nwrztqQ+4m9g=;
	h=To:Subject:From:Message-Id:Date; b=HisV+tHW1W3R4Mqltmpc1KAAhtB9Mr8CM4hoNF7UIq8VNexnnSN0dOtXKPvnAItECpsDNfdhTEWSdQK2uEMV2Gp8Jvyr/OYzUVANB1AEjQdnyfcKe2+sUPAu/tmDCH+fFLxZ5ESAmf/A5it5YjCcnnm/byMScuiSP5W27PSl2Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri6ZEpA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri6ZEpA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761467993;
	bh=PcCmjNkSn3AIYcZvYSzX7zYQJP2vil7nwrztqQ+4m9g=;
	h=To:Subject:From:Date:From;
	b=ri6ZEpA1kPKWcKLgPMOIkRdIBIN9X+tx0Iuoby7aB/NnDZZE33iiLep8Xvg8AxIUr
	 JfYHUHRWnq1dDtTm4eKQjQHkvlV2UTppAtLewoW+7yGWrzQBsl0OGuwIot1h/bzlXp
	 EiOQE64c6+mVbD9lcNelzmZXtImR20QhhJbltENC6TkbuWpbxNVT5/0d3hUOEggDnf
	 9WdFpQ9ICXETlFAvrgdN3RHFpTPDBd6Nz8q/JG7ISsgll44cozdaVIEtfVmKxU9wIG
	 s1vg9ef0kVme2fKT46K0Poe/oLnAM7RHMCt3Wf1Z4zAC2zeFSfCUfp2MCzloxYCVrl
	 /21iXS8MivX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA21CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146799358.23903.17806596160728635949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e126271e6ec9ecbaeaa02ba202cdb0444a46c66120b0a5d61a72e1f89d605562
Date: Sun, 26 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761467993
