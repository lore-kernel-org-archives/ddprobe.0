Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EBFA936
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726026954; cv=none; b=KHXQmzHGgWp150lC7r/YgIpJSN19Y8DCPMLxF7sPhtgVKwDZVSPu6i+MwmRBN+NvVSZDniaSmS027QezoZbpQfzPn3U5bvIlMDZK8rzPbvB+W+mtMfs7qKelFERIZZR1CZ2zpdkAYSemt2VLllxNzpe1H+ekj1ViDbw8tkyQzjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726026954; c=relaxed/simple;
	bh=2zpHQIrvQC+Nn4SQcVFQtE79+h9/d4xOr/D4GyxtlWc=;
	h=To:Subject:From:Message-Id:Date; b=chHeec693TaBQ2IFdE0YfHXoeU8XrCndvgmPGeYv8NSwKf29mMgnVjaXoGPr6h3fn1QWWDzj4lWmn7RPRtFFaWmXMcTgU5A1K+cdOYyiMo64BVVx9/rYxl1+7TEDCPban6vCgR8vkKmFiQIJTg5RQXN5BurBRQrdNZlSlYeeYN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSL29vQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSL29vQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A43C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726026953;
	bh=2zpHQIrvQC+Nn4SQcVFQtE79+h9/d4xOr/D4GyxtlWc=;
	h=To:Subject:From:Date:From;
	b=nSL29vQDzpJANZRg7G6AI2MaSi8oxL1IrelA0e8e6sQFhP2Odu+9JZ1DrkTfqxxfP
	 keEQIuyP1Yw3hjGiQpkJwqPrF0vdAfybUZ5AmzkW/6rCGYe2RKjXUDz74rVo0SWglV
	 V712vZ/6Fwvn4DqKx1Anut2iW7orkXnn7LyrjAiZ/qwrPL3MLZ2mFq+8DjtlcTe8Fq
	 IDTfAFhomNYlf++erYp3TyMGuRogRHN6eLITk4DFuHzjc9t062cmgJtTGCI/yfBYwf
	 QOexZuy76LiipLDoKXjAyhUm/GZGU4xnYq2TXxHiPPWklUkB7u63W2l20XvfGy7OAT
	 XctWET1pRMs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50C0EDE997
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602695366.28602.13514097683297516458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35439b314d4f6952d3ae08c42215e3e181a657e067182f3fcca37bc8c91d73f
Date: Wed, 11 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726026953
