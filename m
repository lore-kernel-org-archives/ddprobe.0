Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FD12EB5CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766150034; cv=none; b=ZH4usIVAQvL5PCJwaArj8S3LhA2fqOwX0UBgDifjn9lruce0PE5S+elWTk1bC73PudK9heKmctLZJcwbWTgFAdqnJSnXYwdL5ixyTQ4vE4MKPdyn5RAhO/Dc9ozi4uPpNAbJBwZ+IpoVuZ2h0bz8zTiyTNwn0HKNiuszA6IMTDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766150034; c=relaxed/simple;
	bh=Fwx0TtQcHcbunFdn/KjpqVOo2a0BwR1u7JuyaEdnXoc=;
	h=To:Subject:From:Message-Id:Date; b=jrgbV3NLEvLq7vp9Gt5ckIT6Eu67qANa2FeiAllfQbnbzjQqtpHE4GC8jR56c8lNEb7T4JcOl+DFXaUrH/i5vzAb53yIv3IMM2YnwkUkuMAOwyTazqfAbaoZkW8tjnAqhn9ROO6+Z5m6zdGCUpQtsNZGej6l3N5D0wha/gSAaAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2KtZgxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2KtZgxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE31C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766150033;
	bh=Fwx0TtQcHcbunFdn/KjpqVOo2a0BwR1u7JuyaEdnXoc=;
	h=To:Subject:From:Date:From;
	b=K2KtZgxQ6vVvhpNWgZONQIdC1kZcbZBJ+JZxbEF6ft33uWKH5IsjewdzsxkxYbpuz
	 2NOgsGhcUXL/Sz/7p+RE4NNuEg/n9pFy5fYvqkd9nLiGYh2zaIgEyO9f1RoGpKqxFL
	 j8tlD6ZMLw1bvsDsMYVE5B8+/UhwTZGkXvwuhB5/dJ7h8q6CaW4GH+sxTRgsXlOm3O
	 TaFi4z/9tqXTa54tEi9p4UGBYYToX4j3M5i5LlapMMYpUHBROmHBPzxDEuiTPbegsZ
	 QgdBcsgGDiTAyEPnA+bQdj5tm6XZFJUDxY+CNwh/OsnE1tY/hwysF2L8WLJR8fOEh6
	 lVIXnftVDKk1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041D767FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615003357.9393.1259851278260337493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ccb716bd2a2e21a39f21b476e6265ea841ed2bcccdb559d7aa252cd42d3a08
Date: Fri, 19 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766150033
