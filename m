Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1C45CDF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754675994; cv=none; b=DfMWQf8Ef3aVuokcNr8+HzCdUfSh+xnixQjDJoUYD4i4LR9/c3/8a1QrKtA5Rl/yTlav76OWVC42v3UdbKLruGLWD7F1AjHCpzZHRhoRhwjKtfYc5lF8NuciYGupzUEIg7A6Sg8AXL4XuNx9/BzeBy6xn2exJuYbG+hD0bZqHMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754675994; c=relaxed/simple;
	bh=ncDbTGAaBA81JyZXXKbxEpUxln//1qOZcSfs72Yswl4=;
	h=To:Subject:From:Message-Id:Date; b=BNHjFPOIY+aCcyHKz2iH+XwAejWOlmDWjqYQ6bU21quTjGekp8/4AKwd8njQu1gHK2yM5IzBNa2cCBQcS8DJs62d/y+46FYx2ikzGuRi11w1+MGHjaSEbmVrW5wetA7Tr9xctnO8CKUrIUoFJDjY2sGZmlKozq7U5Ko7b9AQP9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5ATGhLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5ATGhLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A4C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754675993;
	bh=ncDbTGAaBA81JyZXXKbxEpUxln//1qOZcSfs72Yswl4=;
	h=To:Subject:From:Date:From;
	b=m5ATGhLAKnktAL7P7fXbtOS2xZqtjc5x79H5F4WMB7ATN3w0XT9+Eh6DQEfs6JOUM
	 Fb9uZsRNQAnuklom7UFVOSoj/y2nf48gZaa2qgcqC5GLFeQhopOgFoqRplzyx2O8pV
	 KHUWMhxybZeHZLoMHX9AGLdMFFrvPdxA5UUvJHKscbX5Njc2Z7sf7IcLpel1vkTt4w
	 /zvbAh2NK2HRQo4tXlkxFiMve5O7amSuzR5uMMYN+WIu4w3wIg5CAd6oKnYA1OKblq
	 i12xUNnRGGtUtwS6Dov12f2FChLpodAwEK/Jdt2+xw5VSqnHMz/vYhw87vkhDEQfk3
	 Argxa6evmpU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF9C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467599358.12521.8427205853942963614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a56091908046faeea2bbfeed9c27279c22ea8fb0f7e4d77f1950d3653fd8b4
Date: Fri, 08 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754675993
