Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D728F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715430143; cv=none; b=F8+s9ZkY3stgavx9+pG2pfge0IvnYQhpJO4QvbXAkgMMjzyjUVBZzYrc0AZCil9bvEwTSk/UqEvNHSLy+kqTvuyqi1J21MGr7/HK8JB7q3CvF20z1WJpkuS2FrEWDViNIwf5xtb1HMzwnAWBO2FfHmtcB/+8n/DzVKEVvYdr+Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715430143; c=relaxed/simple;
	bh=Bg7HWgInpTymSNz/X6nyvZeUnmpHaFA9c08hHd2se7s=;
	h=To:Subject:From:Message-Id:Date; b=IKi1laWX6P/eCIQQDLAprPAbG2TOpUvF954UcTp1L9An65RDiLe544XTGeyAPdPxeuOFOKuvYeYKH/DnBmPjEdniMdY5NTN/fy1QW5EtlVhSOujnLBMaoY24n89/cJxBaq5cJlctFJlBRyGtFtJs4RxSo2tztqxdE2VudFge+5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkrhhBBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkrhhBBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4436C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715430142;
	bh=Bg7HWgInpTymSNz/X6nyvZeUnmpHaFA9c08hHd2se7s=;
	h=To:Subject:From:Date:From;
	b=SkrhhBBP7OfOGmZZxxUPjF/o0EfADZ1SyDZuYNtkP+Q5meKXVNOqx0VGZofFOWWjR
	 MueTp8F0FWe4fivy40jw5q8X1H/Tj0svLvhWBtcrQ5bAUjbDdxlKNS6BImw8n27AKN
	 Z5W1Op2UrJW1cAc8CCsemRM+1sym+LrgfAvX0RWcWQkP0zH31NdFF7aBx98TGDKNuj
	 zBsnTELqvATZN7H0FeuiCFrNMzldPla8cLtZd3FGPIMsjWlSF1K+2BR414FWKR/vFm
	 tTABV69XgTgJuriMtVljWzr4chn8M0aJrkItIab4CK5c47z+eXM9jwJKaKl9xEpVee
	 hXjCdFJtTIXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D2C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543014276.1716.3641312908361823875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6a2f51296f34ed39114d8632469d09a660dcd1630f0ae3c4ece41e14de4dd
Date: Sat, 11 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715430142
