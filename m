Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C615B190482
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726140953; cv=none; b=dWiuSFUtFe3uqxcPTVPji1pAJCR3+6TyUY3Ol2hK1dMJm9ZlMeX3W0WBeS1xX/OsZuFDXMMmAOyU17lVoNlGtiKkRC6KjU0r1RGT+kNtXrAOZl9kl63MOWKbZNoHim4kCBEFJ9eMQ6X3YINCspIjRnnkcxrOpbmM+4X72YXctOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726140953; c=relaxed/simple;
	bh=2KSmqfTDsqotNCmdmI/OV/EolqEM3CrXBYlfTjMxxQM=;
	h=To:Subject:From:Message-Id:Date; b=UUUu2xcvCEd8HM5k2OI3TVnjK2Auk8nDZo/QdzyrBSrxy6OtrgHdkzNVPq4Mkky8gNWdalLzCxS+RbNLSq6WcT+yhwTsa6EWMNtZG3OlsGvMqFyjsSJRxsijGeMH1USDqExvUL2Coffk49sVpsPVpwozn//SW1cyzOMoiGAOM/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdGWvDEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdGWvDEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C9C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726140953;
	bh=2KSmqfTDsqotNCmdmI/OV/EolqEM3CrXBYlfTjMxxQM=;
	h=To:Subject:From:Date:From;
	b=tdGWvDEnlnBlJAI1EuY1EfHjwLxaiXoqgOZg7qXMXVdJj+GLQElIKxS3hxjH7T7f/
	 qJTY0nuY7Kan6cqlUb4d9CIOpCvPIljxxX6uvfwcCJH8+dC/cZNIKHNzeqKcr6rFho
	 12QIekA+jpFEggO9mzjJoKHsGAs7QXX3cQpqPm5K2gfZyZu/K2sjnxLCySNlmTs9s8
	 9wP1h3sX8moKfZp5lMYodTFlBFNjCQkltoxMLkWvIKs68tOmdObRhZueodw7cAwd95
	 UjfILh/ZTpr1T2AhV8baOCOL4ZBJ5fIdKdXo1VnHeQ+KbTpMDmI8LF1JvUIX6ITJ+U
	 l/9H1n4mV6R/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989F0EEB595
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614095361.8177.14235276735869687356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0244365314bae64db8a317a2c59b6154965606112e2c815ea9657ec3264c0411
Date: Thu, 12 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726140953
