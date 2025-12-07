Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1925A1FC110
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765098174; cv=none; b=V0Kv/UrnyDWQLiJNd7RqSeQpLOL+zxOeYezcW2ipXoyYPDz3oimbSjSd640sJP1mYsMG5IgYPggCzZadQYO076ybF5lMVIe6Abg1rMFQ9DJTG1Genr/dL4tik1YscvWbYxBJoPDg+p0+p/r4RXosyEEN6JVB/faEikpt1+A/pOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765098174; c=relaxed/simple;
	bh=YIa5raFFJZ35nciyx5VPszAQE8W1vMR4z7VpABYD0Ew=;
	h=To:Subject:From:Message-Id:Date; b=stZpKFk1EhnkXmzuevJ8eAjdCtra5eJMOiCDY8BDmmG89zYnbn+DXx8I5Iq/YfbhfLqLwYHRLAE1/VVfzBk0OPrX6vwsUCXoysPs375HScxlQKdzrtY3dB8bU9IpzmWAqeV2mDnkYm+wzIEhKce6pe+u6fB55tlw7eos1WwTyaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6qmbdW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6qmbdW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE86C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765098173;
	bh=YIa5raFFJZ35nciyx5VPszAQE8W1vMR4z7VpABYD0Ew=;
	h=To:Subject:From:Date:From;
	b=X6qmbdW7xd2yxfFY4lGyypUZ62Rs773odCN8AdfjKyysGaL2ex/iDmtec/5t7jttC
	 ZzE8R8nBsTiyqt8OWv3atRXr8W2F8kvsjGTThuNCfbOKUpLstvyotYWn2O8kcIEfI5
	 EHkkms3nN59nsB5H8P6hc28AVfseKyIm51SvWOectP01N8AzJZDuLwxtctaVvDYivG
	 QGyImTORJAG0O55kdYC5QpAWzNs63r7vf7tn/a+3sLR48Idab+Sf4Vt3eN/yTXSECK
	 kp5HKZzRj62DuJhcdzjTcKiEliTta6N28o0vJxqO7WFpogl08Z5056LfO4hs2nlBQU
	 WkEQWZn9A8fEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F5AD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509817358.13098.11171092662935271627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b29d84686a55ce8a35c342df6cb19f2890f637cf6722603049a2cbac57b62df
Date: Sun, 07 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765098173
