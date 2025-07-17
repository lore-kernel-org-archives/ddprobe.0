Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8F528C013
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752757794; cv=none; b=OMdKM6C3j9YXxmyCxAY2XAmLE0p8cfPnAurFTqMomDNSX8wegIuxGT54LTe/2Zx2TgNMQr+RQgicrtAiIV0yYD1XBidq5TAh8PgvkY3DJ806oQkkSY3wOwK4A3wdwWxU42P8GogMNHY9ys5Pv4M/LV3rsRozPzgIAGaf0q/c8qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752757794; c=relaxed/simple;
	bh=e+8B4eNIrWV1/fNYSEt09R8F8HF9W2umvXEE1CDs24o=;
	h=To:Subject:From:Message-Id:Date; b=J89rip6LXRhIRmKScmyuH6iAntl/L7B1of7sDAJx2kEIG53No1DYIjsMFdvLLmZqlTXCbWfFGgy7AR9FtGxDwBJ9AjGPDqpdguvuEwXl+RRlm5moxofsqsbBXgJ1CPZH3yFXRQ8yFL2KqA4VKIUjx9UgSW5wC4QAo+f2u12wH+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKAuybNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKAuybNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F18AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752757793;
	bh=e+8B4eNIrWV1/fNYSEt09R8F8HF9W2umvXEE1CDs24o=;
	h=To:Subject:From:Date:From;
	b=SKAuybNdfgj2JojcdwRhp2bEuYSstewQktsPvOfG7sn8IHdSQAsMs7/uFoNQn/1JF
	 dguKJbg5UXf9ZVmArspLpzrkvs7475lDqvMAvjcl5G6Vk6oeWeFAlW7DsbSCCXaZE5
	 j2zrt8eYdI6FtzDEDcvqyW6QZaNeZ+Z9MfHVKlcxGcj21fdrRvESXtdkZZzfEIn4x9
	 HuURLv+H70fhrmH/X95BVAKl9Mj0k703WRMS/QyqU4QQlJ7898qrqqHkP2DyeRBG4b
	 /8q+KTWSJFpDurTAMUUu4VRO6+Lzesh6Md3tPshKaCMZcbaPI8TfAu15I6S1HlQvwJ
	 0vB5FlG3gqYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC99C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275779358.29371.8613160284830610681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a869b16fdd062d5f3b346a64c6f4155de9b471faf33cd6d14fd7464e37b32f8
Date: Thu, 17 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752757793
