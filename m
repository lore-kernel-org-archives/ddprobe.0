Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B5CEBE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718944343; cv=none; b=XY5OfSyWN86CZciSYXNcr0DqZYW6AbM97gxU8qzyXkGftES4O0dAbvYd6r4jvuFDJLQWRsl/yqsF8S6+2Cf7z2WImCyNYfdtenD35baUFkgTEoc/BjW4jCY9oOmad0UcNymxgciQuBbD4Io1IhPOoBzn+0kzWoSI8xwiTVA8Bho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718944343; c=relaxed/simple;
	bh=4OJLm1i/7U5NXE1SPiO6zY47AK/APPcEj05cVsVtskY=;
	h=To:Subject:From:Message-Id:Date; b=OGyTa1cS+uvyJYy+XU8ZjhdO0YNy3TvaeIn2qnreHDn57eFgD22zx8qbyi/I7Uau2eHC4as2EGoy1Nf1ct84lRM3dwTrrVWrXEIn6Z69g8z9LTGtJOysA9KZ1i76vndH1pU+GOzex6CAii3xEGFTaDX/X2cVS9EMms/5DavZ950=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9bj2BQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9bj2BQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A56C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718944342;
	bh=4OJLm1i/7U5NXE1SPiO6zY47AK/APPcEj05cVsVtskY=;
	h=To:Subject:From:Date:From;
	b=t9bj2BQcidZVZYc+TFdlJpYMp/p3X506uXwztysltxPsvtuH2OmFavju0C8VmdAsW
	 Rkxl0LyLAalnOOVm/NPFqzu+5hM2nX1oWcdCUnukpHtGxAJiW0NKuUnbbXxNf9OYIt
	 frDxKOCi7JAprcVDjVBKSKxXVGBgDDdkU5dWCK+vrc97rbCN7LFJEQ1YFPpi/43YPT
	 adHvqpEFC55YSHUQFGuTxLER9aMNCN5Uj05WdF+jH17ptWTaGFlfL5/S6oTAl3Wv5G
	 zqu5XdwHz/qoA7QAMTkQ3ldRJfeL0yhIYqpoHNmcB92OA3AFtNgYfmOWXUzTZTTzus
	 JnXTnkul0SEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CBAC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894434279.4524.12331219355191274889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f912adeba487578e4d3b2fe5fa881221df34b2af54120ccba0331fed9470f6fe
Date: Fri, 21 Jun 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718944342
