Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5316B800
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782598714; cv=none; b=IK+2LfKvbGBaYpV8q3TNNpqJ3fNjAHyh09tZ5emrCVBz4ADGEaPBn4PWbFtD2Ykwos28D89LS4X+o4FI9RHdOpLZBK5W6L3DNayfAhFrRUJEgBVc+es9OxNxivDMmnWdg82g9hAQM/WT33VjkeFkVSdSk+godSmTS86KUxtYeQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782598714; c=relaxed/simple;
	bh=35ni+asSbu1S+5gpyWyhcAZr3d4n4kC84KqKfXoVTHU=;
	h=To:Subject:From:Message-Id:Date; b=CI72B3aIgyWHRCmRFvKI/BGssWG6b+uUB18g5IAzWaPb01s14KcUQSI/SThixhNwui2Njv53Tf8/TZ+LGQRTN6xQIJ84iIRZGL2O9LBhdutIhlX5FN3OI3lvdooy2nZ75VfUldIuZ7U8Ub7GuBZH4wGaOz/8RwxT9rBXxQYgnTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq2OURvv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq2OURvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEABC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782598713;
	bh=35ni+asSbu1S+5gpyWyhcAZr3d4n4kC84KqKfXoVTHU=;
	h=To:Subject:From:Date:From;
	b=lq2OURvvPgG4fjhZb4oqE4JF35/JTidapNwxDXonbPo68vRGtXWyAggWcFOBobQOE
	 61QshR+UAzOH4SJeAUO0f59GWGIvp9nSDCkg9WfsyHLjTGHEYRovgWQi/9u9CXU3IK
	 YYZcyW3Ub3hEOm6R2ItjCpIVcPAjVAMBeDcmT2v1SzukkMKbEqRSGL3N/Pn0bmCNCt
	 /FgwVY6zCPuVjh313ggsK0czXo6CLHNxvr3co8BSo/sVcLlgv1TIsH3kgvpcEL4tlV
	 znJnRzLM0joxxpk+lkXds1X4vpBq59NbAjAvE3JvTUMasCWG07VDkP0VHcAK3Ek4Bz
	 Wo0FaumhYAEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA75C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259871368.10878.17932603986394020354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413e6074712a34f38901233db539c2d7c86b5db0ae32fd940db3ff441af24009
Date: Sat, 27 Jun 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782598713
