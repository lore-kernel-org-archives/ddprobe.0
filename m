Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529D15C3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726877754; cv=none; b=AL1mUCf4UazFa9G4121gIRnZ7mf4lYZ0+Dm54Xff6K88QtB7HQ1hGiymF4FlRNUt6RTGtSsXAyTg2LlttV4NmXJvC+QZR9wJSMqR60IFwzLNu5IzK906Z9a/yC7bVPrh3xFM/7/+sIOaoZwXWEaKbkwGFdpU+wLr9zT85CVWXTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726877754; c=relaxed/simple;
	bh=2vgFQvVbCYrGdw8Or4e0UiUz99mjw8wcsdBidNX9vXs=;
	h=To:Subject:From:Message-Id:Date; b=pbdALXEV2lsEzEUYI0UiARKV7dCm8TDNHNn3eyZxcWp2c5YWOAAxkzTFRDQ12XK14lgy8ozC7HHQQqjZb6OiVqX1BPsk7LZao1YL2c+hT4O0sdc/veoeMjdgi/05MXFqj1/J0C8vpDiyGbvW8Bj/3WTIJfIrryxGI4pbeqkoZBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqzxLlJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqzxLlJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD85CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726877753;
	bh=2vgFQvVbCYrGdw8Or4e0UiUz99mjw8wcsdBidNX9vXs=;
	h=To:Subject:From:Date:From;
	b=RqzxLlJJqua6+D0GqT2By4H+bLse2K0oVCcv5YQEyfgi/LEXKaS0V6Q4La5dPNCx4
	 dMRD6m7KRH4Sjw5kYq8vlFTTFnJeDIyj1d0jLBN8S7lvue3/f6lHy1DBbWXYv+RtvF
	 KfZyadxKpElXj4CCY/6DSEXBNfvt9dXVGaEYc7wvSbkKiEhokqNKbDEw218Rp7smPM
	 Mnd+t5UyHfMHJ2OCndF83GlkUZoGoAhsdgHexwA7kilO5pz9hHROFVavbzrgEgy9IM
	 3hiNAC6c0tIyhm6PQNmRYbA2ImVUFPDeyy2edoyIm72K1nEzDn8iImQa1It3T6OQ+Y
	 PbPKpqMyTCUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510FCF9C5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687775357.2502.4205873807373003513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb416e7fe4813fcc5c8ac0bcbee3a3a770b182dd96964c3bd6c89e5b4425228
Date: Sat, 21 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726877753
