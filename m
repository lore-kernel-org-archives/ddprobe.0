Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EBB33CE9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705659497; cv=none; b=ta+sHuSqkZaC2nJVLJn1IdiH7yXEYGSGREMvuwEdIebp0aFktjBm2fRzEUxiHKkgNARRlitIalmr9k1QnnZh5ba5cxFq7WmrKzKt46wPQo4bklCwGFjB+jjk9+Xaf/Fzmu1PnYWjcGfefHbMTO1Vou3SZG7LlrKpGtArV+fzaDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705659497; c=relaxed/simple;
	bh=EPIg1GJkh8Wjd/VrF4PyPn27vIn5kRlMgZEaRliMkbc=;
	h=To:Subject:From:Message-Id:Date; b=BinoRYVZ26HlHwQ0VQBpSZ8J9PPD9/FnjEiNh7/NLikDJDXZAP/jGsGXcxEW3lww47thVisSwM7X/Kb/sLSNSSOXVQQiGL/njnqASBTKOkaSIBLgzLp0XNswhgERdl5sSm0SBUqLyPkh/yquNwS7Iw3KX2jZOxWSi/VkpUUQj48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjgNg1UK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjgNg1UK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75518C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705659496;
	bh=EPIg1GJkh8Wjd/VrF4PyPn27vIn5kRlMgZEaRliMkbc=;
	h=To:Subject:From:Date:From;
	b=KjgNg1UKWsfhKWxBUG5rXId6Q3p8tsMOeMlVD14I3GMv4pz7bNTEZkvzRcyIFB/e0
	 QR7LtswXxiOC6PrYHoSVwIH8wHF7HaK+3zqJDF0T8scYN1qRf+cmxq9qoF2d7SWT3V
	 ojtKnxuUMmVQYlD3aCp48wdUks6kQEPEa+6nF2oFVXEOQ6MhrLAe+ehIbrpQRGFBaS
	 eRx8z8uB3N3KefJQK3pXRULTQWpft0U1XfdsdyovZ3pl9Mqx0pRLH0wRiz9lbXzrTl
	 owEgwwIeX0BjkrbTOw8lKlSF7OjOXxMDqXH0nUgPW8I0joOATcGBAKjV61NCsq4KW1
	 sbBJEbfkUDwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB7CC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565949637.7338.10616936994932375406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dc3defca7c6a4f26d8a19a5c778f4dbf64d1651a31037b9bb278f7cf9d4d8a
Date: Fri, 19 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705659496
