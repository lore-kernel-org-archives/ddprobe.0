Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0310326CE23
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765396974; cv=none; b=S819sEIsM+4nyarX98RAWApssoKFWJ0r1N1nwS1EkGxQoVB/3AdHsa1991JZwbwuHHtliPXHcx8mNkPbb8hJ3td7DFcnoECYKTaYCocWlItmsQLGkcTcCcp4Bly2tviaVxXmST8Y/rHGZfgl+QF9jYWgwH/GbdMdl/AfYrg9D48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765396974; c=relaxed/simple;
	bh=jbMA3clNYSY3gDCKE8e0lFf9dzXl7HZk7jorgX5wSY4=;
	h=To:Subject:From:Message-Id:Date; b=fjIgczS6ggfz9jkbAQY5yEsI3E7EgpzNbcNCvT+fuCEFvI4Z8J/1c7WeH76biw59lwdACieY+5985jCyxFq/uh5nnMD9k7Ohttx54WUYnRGSkMpMoQBxLqVAVOKmiqnMe+UdZLbfRPdQ5S3zxnU0zBDLOusih9NHED6uX6iDoy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5f/OXTF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5f/OXTF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765396973;
	bh=jbMA3clNYSY3gDCKE8e0lFf9dzXl7HZk7jorgX5wSY4=;
	h=To:Subject:From:Date:From;
	b=V5f/OXTFXqP0bvT8xnVitxYhCUkhDJyXG6oZrN/mnI4UvmuJJVm0gTX0SZ030CEWa
	 ENtDyRRHuNh9MggPRkGD7YrT5BogIfOLi+sbfhws6b9h6TP7kWFiUV6g5BGhQupdcp
	 MIfV7V3PH0nXcR2tIiyXg9L2xKkOXTUqKzisNdHEuSFTGP3+49dQFnyrivgibeBCjK
	 WYTmFco9brmcG8PYcJWol7jzo05s5g0wFjdPGVyPLk7xsYWKUo1RMDbv7bKQd8vQTU
	 M7NqVGaoVwXUba4Dry88uskW/hPqdNybitj2U5uIzQivrxZQbY6LdqARNmyNkqinjp
	 U1nJU1fc3xC3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A4D3E774
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539697359.24781.5573427208079296975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0b56e1ccf35e877066673406e29cff13f20ccc4227649bda803d2d5427269b
Date: Wed, 10 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765396973
