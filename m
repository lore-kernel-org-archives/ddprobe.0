Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E9653
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734320754; cv=none; b=Ndm82rO823PWmG2z0Ph0/DiA4oj97zh0aW+XncG0DtUCzsDoFJF8/OFcPj1M9J4DL4/7txM9Z4nZPQeyIUmuxF1zsbffFiBSS6E9GNHloHGDQ9ut+/b/QecIADF41oqaHeZDNqmsoN6EQTOVXwLXXnp3Y+x2hWQP8F3Hs0IiujQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734320754; c=relaxed/simple;
	bh=E6agIy/PQmG2WXmt11wM3eTXzM/LuMq3JxRrccZqJ6k=;
	h=To:Subject:From:Message-Id:Date; b=XQlAnc4kvSaSxeSwBvN02Jdsj/ssE+WVlKGbCr8E80MAPqocAbN3hIw5i07nPEHLsYaWOVc4Wfk7t3LqULePSX2jF3K2OXFaPdLiiAN1Eqs/JVe002asMvti/oTszvZAJ2gJukjyZyITmqDHHcf+AUru7RrlqqzLorSGqPwBDKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7vQAKYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7vQAKYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BF5C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734320753;
	bh=E6agIy/PQmG2WXmt11wM3eTXzM/LuMq3JxRrccZqJ6k=;
	h=To:Subject:From:Date:From;
	b=t7vQAKYF/PlI62PZr1gPTaNRrV9jOjErqhaWM6FmJDmpB1/dsEgiZygWyrm0lp159
	 JZchFnHH6YdPUpk/Zkr5i3XLBz6tKVCwEk5DIBQY2UsAQW+OqIwISvo43ma7fpvzOM
	 Qw49VJDuUUddnDFEgwagqaiC5gmb99Dx67u0EEzsPreAB7IjjW2OxTTpLF3ymfEvfP
	 t4VkpIB5Lm/dNoHxkWBbbYOJuv6LvTmQR2Om5Wbb8CFMChI6GZEfMu9VekI+6qLujh
	 NDdtJMFBsuk0cnpdsq9wF/1h+MZ0TJV6ci0ncPE3Op15wPKT+JUlHrVo0dotzWxBDv
	 rFKnitsn/KDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C344E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432075360.13115.9591255846632860653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ca1c1e69794911fd4101c6311e7a322adbeaaa18607dfbce793aad1dc53859
Date: Mon, 16 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734320753
