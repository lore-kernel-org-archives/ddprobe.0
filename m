Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49136770EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717655243; cv=none; b=c8/cX97OGu3pjMQilI75lFrJzaxKKu6LXeaFfM2zTkvlQl5k1PvWI1GRIMiblN1M3nI5i3QxIR3GmjceIhmo3ZEJoSxfvcEebnyiJAjk0Z0g8odeSZA/uqGX2cxqNnP5QMRnF6+LAVeDgjZIDgNqVwyc/bBkjKRaNWxCIldWfx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717655243; c=relaxed/simple;
	bh=0Jokx9XL3BO/uyrUg0Ya1yUi+c5Mt/Gj6fiT/TOW8F8=;
	h=To:Subject:From:Message-Id:Date; b=ALENIY6+XgKV685lMUub4CprrytzXmmjEeCUfRnC6ZufNaEVVhzGlr5dvzc6lYrfvU4CEfw/sGd+XP8tPJSpLomrTdyJOcTE04kjtDjGwqFnh4pm02yJFGTUX7ZA0amEGZHbWZxyjUUsVVvI0Cfakm3lZXepFeyBhb68rxBaai8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfIQUzOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfIQUzOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB00FC4DDF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717655242;
	bh=0Jokx9XL3BO/uyrUg0Ya1yUi+c5Mt/Gj6fiT/TOW8F8=;
	h=To:Subject:From:Date:From;
	b=DfIQUzOU0QAAJK9s28vNuhIPTxnFJfIoXG59MKMN2xcZeEda6WIkLhbT1qhNdVPUI
	 yQZpfMguuAJNYQhmX2Dod1elVe9fxqJAnOJuaNUKtyv8UVAzK8mE2rnCZXRZJFGLTB
	 wyP7+0BR3lFrBp781xOwlZ0BzK549SKyxIEdmlTAoFbYyefZcS4oFjj+741mnTBRGK
	 3SFN1Bz7pLn+9WgFB9Z62pwuDxS4gwwHLPBrgrYc3KQ61RJpjkeUDbtMtSEi1rh28u
	 9S4jIR/bjUU07NzS4mGzv0t6JbDC1sKRStwB+EEI6wLUhhpQV2/yqbSjDrs1aj8n2o
	 0ZzSZbl7wxFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A86C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765524280.22485.11345999330932851756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82784d4bc6c6ee8ba581cb44466c49b62402c36d23cfa0a15fd31e06a498687
Date: Thu, 06 Jun 2024 06:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717655242
