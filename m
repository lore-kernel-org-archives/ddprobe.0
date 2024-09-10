Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE9A49647
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725943554; cv=none; b=reU/NO3GwKAetJPhHApHRtAolmuY8BQOVotevWU4tCi8JW/MrdoYvckeTk2x7DXpeuVWfh9YqsFdBdwHlmlmt+PyLASayHMhYV4lNZsM0/UGSt9qYS9B3kNfOvb3MJLItlM/nUm/EAPzrV6OQDHKbDuNBY7G84zeWzdpQuV1VZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725943554; c=relaxed/simple;
	bh=tSKs1LJwfs+F7W1h6GTSf3xgOIgps3zIT5ijXif8YlI=;
	h=To:Subject:From:Message-Id:Date; b=Wv8l7ItYYdaNn/iMaYFQF8jFCxY4q9VwTSiMFGCmIaU7pBdiz3+4lfTwGCLz04lLODixjG8ocuAXrnMcA8ndoOCV51kRxGAjEfwCTSXuK0QeytWOlDaeKIvKGyoXu6zH2gJqObbY0IcMwWtVhMQ4clPBAdmttETZ8nxrIVtl8QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+9wHuzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+9wHuzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43A9C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725943553;
	bh=tSKs1LJwfs+F7W1h6GTSf3xgOIgps3zIT5ijXif8YlI=;
	h=To:Subject:From:Date:From;
	b=a+9wHuzAtVe8OAPObYdYiZc/E3vRZBeMOAEG70BPuDtfWnyKH71HI7Vkbkrrf5KV2
	 7nop4R8CXy4ictfOnHKQq4bXOk4w9mIC11j90CWZ+KvBjVSyeummp/gqKUECjdh2Ro
	 ZB7TXdOAkJtRLCPG8PwMjRW3ASiZe5eAqHjmi49nYI3HtGNgoiZkkPPAmFuSI/q1Eb
	 0G+xRYxdU0fSP1us9lIPED+YY72birwBd1hwaLND+gvZaY25wQ8onqdr9jW8cdHFa+
	 3famIKU30QZM3S4ikJaO4BCada8AtgnLEKu2oBUKDpGqwkiulNBN8sdKvIkEYoN0Kx
	 0p5R0GAeqeEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4611ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172594355362.26099.13019742650949998989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66da9d2e14b57ef04fbd97d04f7da4b5367e73b6eb677b233b51d0c4f71c29ec
Date: Tue, 10 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725943553
