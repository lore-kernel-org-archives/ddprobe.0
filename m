Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398772500C0
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733273754; cv=none; b=Ryso91qywK04nf4rDPosgRdMSaV7KC12Em5trY/lF+EMFdfTe8Yl9JzbhCpoOqhEdYlQiDrFrXrfLSFtQJS7iH1o084/gRTkovz3BGjLbmcN0anpVMs0/q8XoZyGwP/ZzumnzeNgjR3tiv/2SMmHv+x821ncSXaSDvQ+GwNjmKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733273754; c=relaxed/simple;
	bh=aPyKI7A7ediiWng3vl4KlPI/SNf9bMeYy0xIku+92K8=;
	h=To:Subject:From:Message-Id:Date; b=U/pP8+RYB0wNjduSP7+sM5lo57lzQ635/h4a0+iUOhTHC9Zp7T2QYtfa94hH5q/XJ/ttp23YRPOKEk6wkdrqJrL4dlAUMMKtAg9NaWl/SbYCaUHgD9G2cvBsCi2qzs/KNvroCtw8Gxq3Lhy13sJc1dAAHsanMsIFX/YSAyoyZd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8LOb7IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8LOb7IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B263DC4CEDE
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733273753;
	bh=aPyKI7A7ediiWng3vl4KlPI/SNf9bMeYy0xIku+92K8=;
	h=To:Subject:From:Date:From;
	b=p8LOb7IH8smjUOeS1XoHqmoNo3k/EBQhKzQSPppy0fqaikR6RG/YfMLR3ws8CKW16
	 s/nU1EZvka2lLERZDI0jnwxfXARqzKMS+y5P4AJWeua+VExJRRVC0GnWVrA8njdirA
	 TRrWk8gLFPu7VmK8VPq41DtjjNYT5LhoA1u3t7k7miQ5uT0Kn9Ss+6sd+SZ+OJyj6Q
	 GMA/Auu8kgwg59KNGL2aZwx9GoNSNtx52181E3dpucS3fC8+vnknaEE3L3zeVMPZfu
	 90RSrusRsXfrstgx09/JEoTA/DHQhlEA6hAdgyHlEqp+goeGT7GAaD7CHANWjVHLCt
	 pYblF3Y0fDIew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C55E77169
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327375362.31089.2401132803190083280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eaea30d017642a328f2e00635878dec6e7e4fd653f3538d5084b4d0251ad5c
Date: Wed, 04 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733273753
