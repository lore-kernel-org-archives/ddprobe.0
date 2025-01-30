Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EF11E4B2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738279554; cv=none; b=cNiolcH9tGG9Qq/lvLMDHB3VJwPuuwBGrgfY8t5dBf8md6BG8MgJlM7alsJORMCJ/MlZCXT4hJSsK3I50G5N8xESBxMOghxgidQC6r+5DmYcfJr2QlJYEAM7GND1Q1nDHSuKoIdnMyhfJuLDRLtYADcqpe8m6Y+na7h1c6iH168=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738279554; c=relaxed/simple;
	bh=PW408aTqTHuUFRLzCeslk6aClwDM9jRQ0zt6AIgBdyo=;
	h=To:Subject:From:Message-Id:Date; b=HaxHueYsH0nBgPbyBUvaEze1JEPeEN1mmVJqdFK10mNh1BQ9Y1QZt/vgbb+CSiy4tdAqek3cpC5cLfKGOphouuxx+wRsbPBooVFR9yAn5ljv5bY3szNuf4uDgHJ56N9VefKwbLxEtMLLuA5sTR+F0phQS6y9neaJRA3IKW/IgHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUTXVuJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUTXVuJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A19C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738279553;
	bh=PW408aTqTHuUFRLzCeslk6aClwDM9jRQ0zt6AIgBdyo=;
	h=To:Subject:From:Date:From;
	b=sUTXVuJYZoq2TTaUT5V4aI3jucUvLFdMB3AK9y/WGOiaX1oiXEkyglS62qGv37hdA
	 7ya2TdQgJQhLC8ZQfSTNPpJYT2gzoE1KG5Nl3+sJFedIGa/+tNNckZAT51fsckeMtO
	 CtXMwaehqgAdFxKoHh3MJ+a890aekAyNXHH8LRsVX8fcDau+IWeTMXXPxV29UmW+kI
	 FaXKHZB79vX0czRT41iCCrhyA/OHssDmV10RDrpZX6JoiYF/QO78E7HNAn2zdNRP5j
	 yujHMS6RhzdkVyNFI+DE0NhGJmm4Rb1nszfw1UbH4ABVZEhA0hbhdVMnYZyUiDCcG2
	 W2krowKxUcVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33DFC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827955369.12410.16913926134915876488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bcf9f971e52209b6e5700fec23c557da6722321d7463aba729f82313f2f53b
Date: Thu, 30 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738279553
