Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9EE1DF75B
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750202994; cv=none; b=ULhPPRKGspTQyF/iH2Sx34EmuKGcq2/fYet9QtQVbcfMau6DPLAmAYOmuGdP+zlhVNDky8BYMYsdJ9WUfbsIKk5kvubu0LJ9Ph0yQ8vARWIISsJKOlbmLQxzHe64ixvsnEJRF/bL0IRDaOnJPe1nVrmbmbWniQ/sVOOSH/JJRF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750202994; c=relaxed/simple;
	bh=mFtzrqtfx37KZ7GPIQgauPD43a0iEoFFgEV31IrU/Zo=;
	h=To:Subject:From:Message-Id:Date; b=CsYdWVLTJ/jiy+Ta+ZwXxZ4R5TjRUVcnJ2ZPXte5gowomTOMIMYjWPlVzNbLdjXETzeNCA6/lhNJ66siMbcjAVxjlImDwHGWWGM8kUt3QzoqK7+o+fjG3Wa7sOebmJBWG1qUMWQ/2nqDxl/RrGOXmnp5MdwH5Gq1MnFX0QE91pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1qtkQs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1qtkQs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A753DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750202993;
	bh=mFtzrqtfx37KZ7GPIQgauPD43a0iEoFFgEV31IrU/Zo=;
	h=To:Subject:From:Date:From;
	b=Q1qtkQs2hkKDv7ockKadkacWjTSAlAmtnIMlYgY1OnWpc4HoVD+KSV7unx4OHvvmr
	 T65kCxlAF2R8jPDBMIUWA+H5hgvPtLNbqfgsVfhrSEhN2yvi/6TqlaWi0EmE+jqcfY
	 CQDdxDApWRC19bd++XVspT/BJdF8aspIQiW9kWv0OtbNJQt7b/pPSPo2WGXS4tZzPV
	 rePqIcLn/zfp5K84eNjN3D1ujoLai+NVdOXAZ44WeV5tMKghRNpawmkqkjO+CHrwtw
	 oKwibQi9uM+9O7jsX7Qgyrg7N7xwmFco5LX1WjxTL9z39bcmyrn3NpDX9WEpndyVRa
	 Ka3JrWR5h6wzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDBC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020299357.24909.13693179702881567721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cef5bc90d1bb254e01b69788dfee141e679ef1a44fbdb5a264c3dfe1c7df6a
Date: Tue, 17 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750202993
