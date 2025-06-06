Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4072C3242
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749206994; cv=none; b=VDu0RGePJp2Hdtnr96KZQYY6CBXWeb4mP4nsr3utrm1Ghn9yGyOnSdJvie+4HGzvrspQ5r7GQuBTgX0OGw/rUcJKx6HxQjXBHj38NwDZJJNYKNjjEppUL4WlQdicB/rsF4Wp1xvb7nsrOKnSV2Rp1/JT4g87FIXHodI6K+whDHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749206994; c=relaxed/simple;
	bh=WuA0YFkS21uKePXHfIAll9ZL/C62FqLqXX99en56RzE=;
	h=To:Subject:From:Message-Id:Date; b=pjZagOTQ79BgMeAA02MDR+T3NK9nXaNaVLmG6MXvVYqciMefm4LhclbT2XSAQSxv4KTiKAsfUFm3zAUlp0k2GAD5RDulv3AUdKxIcmIYjhXuder9lN/Cyf8EebSIbIjNoCTakg4y2bjZrRljeqeaULJIP77z1nalvH5MG5J1htk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6+ckqcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6+ckqcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3783C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749206993;
	bh=WuA0YFkS21uKePXHfIAll9ZL/C62FqLqXX99en56RzE=;
	h=To:Subject:From:Date:From;
	b=d6+ckqczzDzNVymQWDLOTMJh4yllRsvSG7kWTGA6jLHswX93GktIlEUc16EYLejls
	 SmtWexd39NP57dO8ugzJmNANg95jzKz3up5XF/bZ+d6Oa8Sdek1pBkL7W6gbYx5O6j
	 7Z6opH/xS9ntHs0AJP/yQ4PBfpr7+Sle7Mqr9E2jnHSnVRHGzdMZiwGTgNKZZiY0AS
	 4vLgQ5cq9VXnWR8FCvXa/0/ccfHV3XzlkW6U9bdkCC0BXXLU7/h2dz3yVlMu6bBBIh
	 fCM7lKG9iyOj+FM/V63tvAgg0kl8zQ/klXRJfDNr8e2Do+qzsvrqLP+GgJdbbtMnA0
	 hT/S0aVYU8f9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C1C5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920699358.20173.9720628644541668741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c54678fada2707ef5f67329d2d2196cc87167c9271d4c805554b5aeadafa8ee
Date: Fri, 06 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749206993
