Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C86D2D2483
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758962394; cv=none; b=OlSwq3LazC6GSBbotLLxwp7ZpjNy4uwXcHj7fxP6NJoq9CRxKOoWOKrMKFV1X0Cvr7ddN25L/7wwKzDA3XHmcNw4sLf71wlM9rFzsmpvFlVPtsIhjoqxAyq4CudmAxSYgzzA9j1qykoab7f2M8TxOZXs+m7AW4Q9nT/FpoVucXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758962394; c=relaxed/simple;
	bh=prgO2jxQ3xQTkKEQa6nKlXNmbRNJzEvvPWlRRU8cZ78=;
	h=To:Subject:From:Message-Id:Date; b=TibZrmnWEeDIAND3FYLuNqNEb7OPd0fcoXnIpvjEB0rLlYYSCa5KK0fdSfN6hKa9TxtlW1L+ZoJaGYHodOiqPDQYLi2T74SUjr9CPU6SWA+3W/yWWOEXRgLxhsDa4/760z0FOR+R6waP8cWtaAx/onl4+z3tZGxyLjYK/bsR7GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIOUxWPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIOUxWPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758962393;
	bh=prgO2jxQ3xQTkKEQa6nKlXNmbRNJzEvvPWlRRU8cZ78=;
	h=To:Subject:From:Date:From;
	b=iIOUxWPhQi3x7v/F8YFwVwTX1b7PeQTDaktXivlHrHXxt/A95oifUvFf/a9jenaYb
	 NuMYGSpLXz3qYR+h4rplcOw8PUh0NTro4lRPslNkWcz3DprvRb7vlhUo11KSxBcS+i
	 VzxVFkDSVr4eZjWMwQis1bcA4N7+6ahK7HvrFfjeKXCNN+1cE48U0UfVTAqPQdRN4O
	 YS1eSFw6QVXXp1WCFHS1yHwPYcs3JJyIQIexwJv4jcfkpe6MAun9ZdqmO56odagycp
	 Lms3x7itPclZeVpL3doMwlBCicu11/5d7pz252BR49pQ4RfhvqfJYoXPxIuiRNllRJ
	 grHUohJKljrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91134CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896239358.5130.18230994155403361265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd8feb3594d9832e5e4f8b343805486630a74811444e0790347ed71e3ccb89e
Date: Sat, 27 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758962393
