Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FFE19CD1B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750053594; cv=none; b=JpNb0HE8SFlLMooLcIvNNU4Bvj9bhf54eAbW/9fC60QtkJ6xsX6xgAaXlfdKluoV+YjezNluHabdepBuulpO1Cv9Lcy3ILCdSUKxXUbUE5EiMqjVm/l7SAGY6CEwnVHaU/OeveICJUYFH3U+lA/C29WNtLBOfdJhAOOkZl1WxlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750053594; c=relaxed/simple;
	bh=cAvakbaCKA3sWZakKNy5z3A28b7JQNTHg9e9zVEw5gw=;
	h=To:Subject:From:Message-Id:Date; b=OKugVhV3KV0AtmBXYGYXEjNcmEozyonc0THHIWQGWporxPGM8GtbyOxJ4GSQZ58yBKJJbxw3rgUlqtFAfGJpRh/icGHostFAno6UInlqBRh4R0hluG71zmBrrao1+wQAb1cFO/npI9LEfnEL4f+5UMNYDeCK9MGsML/X6r0RJ2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAPrCfvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAPrCfvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B61C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750053593;
	bh=cAvakbaCKA3sWZakKNy5z3A28b7JQNTHg9e9zVEw5gw=;
	h=To:Subject:From:Date:From;
	b=hAPrCfvn1pAh1ZtqT+b/YZtejYGFJZfFoiV1CBn+BoUYpo7kdcEMRTOX+al7pnH/n
	 8u+X/WTIikGZgfyt7Eg/ZBp8KBpG5hKxO6TFx312CShFzUedp82fqjgl8kOqjnXpqT
	 pBnKm5ASkiJW6u9NiRJw//0Zlzq/kNQYc8x3uQXGox94gc043UUkYWgUEoUyKtqDFw
	 U7YzmT3tXPL9orapIRyYIWYHYN/38WLjFTjMmu3Klo/Xv3EOLCYiaNWhpDjNmqBSpD
	 5cC3DWYDgKcogQv1dE8u7fFhDn2MsT+Esl2zO0ytPnPoPoUvJWdJ8kKXsxOU5QiUML
	 ANk50kvmlS93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025FC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005359358.5546.8005863014975893519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e37ce8129d7b61f854b85fdb9c818e03973a15501ea8d0a6f89d6c05e3af00
Date: Mon, 16 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750053593
