Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F006D8F4A
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710899297; cv=none; b=PfXRNDnizcki+WUUToWSxbqfNC/gF3dosedh2NdS3ibMiXgeKR6qCR63G4BtRpOo+04idn2nwW8hDvkH6KZfnVEF2Wweu7HObzj9ubpIb0WOkOa1lNXZ8z2WsXGXcDYDrn+S9HpzgjLXo76d7ylZn04/q08EEWJRUPLmdjrDRQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710899297; c=relaxed/simple;
	bh=NzwYH6y8dc7k7HORZeavHvUHw9lgKgzWpfpojM1x/04=;
	h=To:Subject:From:Message-Id:Date; b=GZe3VYJFTQ8qDPwlO7Ammfw0K9qiIuAlTIaahmgVy9nemiDaWNIHarY+e4RekqSk6juXjzoqeoFuxNxZk/Ad+dWdQFoADJKRKnNihCUiGILSSu2IcwFjUvumijXk/zDhJ/mumoxd/87ETRa/vgkT/I4NBFskTm9XGqVAM2S2bBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/uU02FS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/uU02FS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3B7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710899296;
	bh=NzwYH6y8dc7k7HORZeavHvUHw9lgKgzWpfpojM1x/04=;
	h=To:Subject:From:Date:From;
	b=u/uU02FSGvqr6LiVb3abkTy/3GJKl5pINVfKhxOWYAaYKUr7si3iLQwjopAV/y0JJ
	 iartNOPK04fuTXsy3xhl3hiTYZnV4qStHAFbI1mqKic0jU2lUu7qMkBYJpGEObR+xq
	 +QDgnJ/uGVfx3I00tl8loOr224GZXc7xy49u0vISdaqx9osooko5LDeDdXdEFG6mzc
	 fdAa+VvXwgz68eaEyBqJVjQ6O3R0aLe/D7yTt5cf+rK5F+7mVoP9CVorlraZTs4YQ1
	 PlhFe00VfUUXHfUjcGYDmQnUtVAOrE/QjRhVFFs/NDLJtMiOkeIozwucHDcf6KndBT
	 1y9YH75x3VrKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C21C54E68
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171089929638.22806.4303921414589916153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0f66a2ca318b1c09b11ee9baaeec2c541d70a69c8de7324c22d111893b4b42
Date: Wed, 20 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710899296
