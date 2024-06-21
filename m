Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5D182490
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719009143; cv=none; b=OGZhZI/vyIbCpwZDUH7UaIAGM8O69cPOuZw8H4cbZOVTd2v6vm6caN1xgG69hOb8IbWCVEi+HkE8n1Td2jE5Eo+9DXosi0nWnkt6l46GLqrrqvMoqtQs/q/zhiD1DHPIAUWL+uRjsM93NAg2cVXhtHnXy8OnVATH2tETvqLzMcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719009143; c=relaxed/simple;
	bh=Vwe+ow5n0VtHrKyddTpPoTn6ytzsexjTqBqAIFJqp1c=;
	h=To:Subject:From:Message-Id:Date; b=p1DqbsWV9qDRa5Y8Zig1lkPfO4YUVagOyzAp6R8rI9aMn6MJEZwQDci6HDpUH1kx9NUs+TTUi14L95pUOzWzQDTXzR8iRNNtPKMXHqTCf61vFm9kNTvbVTyC9XLQZFVqvTGoiWrU144+lntNt0ENoqcYQvlk0V+7nMZ7XTyBjrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPyoqgTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPyoqgTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1969C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719009142;
	bh=Vwe+ow5n0VtHrKyddTpPoTn6ytzsexjTqBqAIFJqp1c=;
	h=To:Subject:From:Date:From;
	b=PPyoqgTNdfv3iqNmdvcC7ZvKXwmkO2nK1ID9c6qsVURt0mZFMP1OVjJ8f+rQDmtxO
	 2o6WYUhGEzloAlCuRQDm6GksOh3DAK1PhES+LAjIwOZ05vCmnvGqtAeflVfKn07VLw
	 qQeaHUk4jRfwhpj59C3ZmfJ46hoQG0MfzT+Dr2hypNmAW8RtZZeblB/eLEbXu6mdDK
	 qiNheAg4rB9PSaNVjlGlScn28PQrM58QqYC3X2COWPMBh4chKLLjWN7DLPtW/AMneR
	 iJi7CFWIW81guF3RZnFNM0rRVXm/PxcU1U3HlzpXjLa/cs8N6hqYYPiPhEiqgZQ/Zd
	 pRBIrV2i5dUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C604FC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900914278.11777.2873430571948024232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93da1d2986896cc0d8c0c5fc4656a95223e93c4f4eb7320c83423dfa2cdfe1a7
Date: Fri, 21 Jun 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719009142
