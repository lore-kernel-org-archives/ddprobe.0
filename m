Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4609B18A958
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721044463; cv=none; b=jVSdV0D9/CsvmqrLA1l+WebMO0n+Y+vKLoSrU8UbWX0umK+UWZ9ba17QpP+t/TQQJA9SCgwZGORCihZikDtS1dOCYbnHnv+etx1FQTj+rV7Jio1oqd/2TbKjC243KgHPL46WlE+UKkFoq0fkqcoOjxDReUlgWLJX1GG94dcmyLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721044463; c=relaxed/simple;
	bh=aGb/7dwgvhkRmNmeLc5v0UElDbKCG4CrAmYUvmjhwls=;
	h=To:Subject:From:Message-Id:Date; b=a9ZAGUm9QUBSzaKs1sKCxPJ0Wk/HpDmMrwZkiKwH4tgCgJpASZThVERApYeFFH+eq5cbuDme0UH+i+m6qdXBdb81uYqpbtkXLdyT1EZbyro6NALq09ObHpY1u8PfQtenIlMmmJBLekRa2v4EttNuJz9dTr39vgq5ijVxqbtfYnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9A6WNOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9A6WNOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB6BC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721044462;
	bh=aGb/7dwgvhkRmNmeLc5v0UElDbKCG4CrAmYUvmjhwls=;
	h=To:Subject:From:Date:From;
	b=l9A6WNOSU2TCVzx7WVoWU4Dvx4/qNBGGoPgWluTVDh0LKZhIvFwHbn/M/I/psVLji
	 dQpBTKiDs/Tp3XaRko0I3dMygGZbXXh6QUwYumUan1KpPBn/LvcAP50akhHPnoULQ5
	 NUlnYnZ37yRnv/C0MJQ5mEPd3HDAyXcP7Bdfs5kWd+XEV88H2ahiN3x4wWsJwOv9Z+
	 w7H796e8xDbpN0LwQHIiTwhpL3X0bzo/pr18ULd1a1PmslmxPHcuHMLk9y08azn1ok
	 P7WSoIjCUgLFTIYPaGP/OlLe5NQDJTvSyEBJB9VqtcpKrws2OCGXDWRTbalq5BIcGZ
	 SdiIgnr7CAY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BF4C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104446281.23259.18113835187444347266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df267d17a607c8f449d66d5331634f3865141f0c2166919448bc7b2cbcb78c20
Date: Mon, 15 Jul 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721044462
