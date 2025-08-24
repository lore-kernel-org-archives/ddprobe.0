Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BD02A1BB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756061394; cv=none; b=H/XW6Pi1OyeaNdbEd6q5G0F6+Roz6O+NMmClB4V9kd+6CQiyiI7FDKYcMA5WtrVEw16xa/zprXXzY5Ep+QHjp5w41r8RM7beCB8AkkTezoDS/6nPZzPKIKekigx8gdNhTnY8+vgd7XGBrlRDB1Nkdy3Xg/a7hJz79yNEu9pZYg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756061394; c=relaxed/simple;
	bh=OUTGt/+7R4HzvwHQy2gMhC92QkBMP5nz1g7ZStUCRAY=;
	h=To:Subject:From:Message-Id:Date; b=TGHmoHEA/flc6wfiWkrMvbtrNG901GQHYYiqB5Q/v/FwVczdOjud8YB6LSEb8o5PRno9eGQunxiiwLzm1XDey1F4RUA1gysAGEVd8xUb3ODPDh/+wU91ST2ddqnjnUywtKzRQSy/AFTTdiKlo8jMV/xemQBHUM/kJVJs0SeTosE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi3Nnubd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi3Nnubd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F88BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756061393;
	bh=OUTGt/+7R4HzvwHQy2gMhC92QkBMP5nz1g7ZStUCRAY=;
	h=To:Subject:From:Date:From;
	b=Oi3NnubdZzUwUKEJOyJo5QJWDvmXMyrj89IlLZxHBdbXDjlCPHjVVhLy/03i4C2rK
	 Z9Gjbe9+lRxQE6d8RfIjvxNaHaa/TxUhxFpXu79aLxzMtw+fl0L6JPrkOBAHNu/qJ2
	 o5czAkwsVDTxTDyLg/I2nJBuXweE1ytDdy8ws6Dx3UgHWwgOKQPryFfIutVkYiaR7C
	 2PJ+rdRnO4zSOZ8QJMftvydSf+WMd+7TDdT8TtPxCKkFEpRBPOJQTmsdSG0DMm2JTy
	 ne49eKPqaJQOt7G+RxbuPxZr80HQiWn8ldsdeNbC+w2u3COoaljusLfMvu3QLxm8bJ
	 13q9hNAfhDhaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C9CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175606139357.31448.2496103465094722824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463b8ca583b20d00aac3c231cb99b7a5a74f3ca7e1c245c77a6516ce94461ccb
Date: Sun, 24 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756061393
