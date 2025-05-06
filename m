Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6728315E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746494994; cv=none; b=h0B2AKF1KG/ab8rTpPSAp9cU9eFypuQfk7ajJ46ogV0ZfjzqiouKHIeRgL/WWqNU6Q+SaYgvDxxusZfipgWMy0Oi21JjSa/0nfNEY8I+oxVlohvwfKQREfVQGNZ/MHz5dvcYLoocztSJ+v/Q97Y+1pgKBYLVVZXeWzi7JFWrI2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746494994; c=relaxed/simple;
	bh=DSHuLGRV4bHVHRQ0CzHffjfx6dgbpCFA4G6BrJJoXUI=;
	h=To:Subject:From:Message-Id:Date; b=No6SQ1Tx0dvZ/FMcEVtocIDQaIjJ3dY/uxEZVWnJRzsu/f443nHLjH19kRyA8EAJ/KU7HJsbh3bbXlIR32VR68sUOgQHH+fAaoPdY0acX4U+xB6+/tW288tcv3bxgj+vpd2MiJawR65gSeXl53YeEmyL/iLnkt8wH7P3AxnTa0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md1GOtzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md1GOtzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B2C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746494993;
	bh=DSHuLGRV4bHVHRQ0CzHffjfx6dgbpCFA4G6BrJJoXUI=;
	h=To:Subject:From:Date:From;
	b=Md1GOtzZrAHNXABvidcrKNMLxVXWRkk9oYLlGxv9ClB+Kw9YRyODagg2Qrh6FwjHE
	 qNGp7cUiFJcWGpw127xWft5H+FhiTG8wohFGKIGaH0ImXWbF0/w92W4wtcaQc4KJ1s
	 IYatoMAwnSDciabS4y1ViyzUXMlgad3cXdDys5KQz3PqtxY6XGePufMjY+7LPoWLGT
	 pVvPt0SnLT8i1B2G1RkrCMxIXlHM1xcKXWM055p2lFsF0a/jnZxpjr4ahUTqd/Jdwa
	 kpngz33ChNJ5FxmCkgCp9XJZ+OrzxJUbKiRMBVoGQ0/g9mFDKoAmwe/XhjQbaRoEff
	 T5wVOKscYnOhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92156C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649499358.26598.2248146747437272135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7e24499543ee417d6e7cf43cbd79fcb0f83689cb351f1343f0cb74a20dbad3
Date: Tue, 06 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746494993
