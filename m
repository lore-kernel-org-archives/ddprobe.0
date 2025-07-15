Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229064501A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752558594; cv=none; b=o1k+d6Rs27UYyUrLgZqAGhtcsMjw8R+yarSfx9+neJLBEDWUNi9svVP3tkZWIuSNnkUvE0+enmCuB8q9sCfw6rm8Z2XVjh6lvYwCkt2otfKg77NDZc7pU+O8vXLVjkVYX8lxuB6tr9/u0+yQpQOx7apgS6P6Y5SIdkcYDDHyATM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752558594; c=relaxed/simple;
	bh=Ku3BfCvQlhQLmsmMAnulMqXr3wB25erc0qdJzil6cnw=;
	h=To:Subject:From:Message-Id:Date; b=t9UNJNF00IrdxO7v3VZ2RARxaGCHEwBqd26TNSsr8Iwj/5iFKNYLlFEYhTqV6z9U8Vbam8CD9Um3T4eti81n7XB5gRn0FLc4B7LJR8TDWvBgpkAYSJDXTXvuEDCB8fK1KAKAqjymqCEyrIIIWhn5QhYP2lre1dAGsrG5ErJhzMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh/qr9xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh/qr9xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B92C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752558593;
	bh=Ku3BfCvQlhQLmsmMAnulMqXr3wB25erc0qdJzil6cnw=;
	h=To:Subject:From:Date:From;
	b=Bh/qr9xqJGUZXu8sI+XFgsGiN7OuIqvw+JN6T5veXb3vwbWcNP/pHpo53dyfaw6zP
	 0uowMp3EwvjwAVk8Nw7CYbzdjKdOLiLxufHPKp6sHGvoY4iIqoJ5pi/Vqx4zDrnr6G
	 yYKAEL1uHZaVwgwLTPI3zj4zfT4h9QXF6Nf6b6aN1nFmVtFXnsyEpJticVEE//adQP
	 C4+zFsV415BdNMMK0x7JyIupW+WRgQ0nbQKqgdO97WTkv3RSFHbtBm8Gq83zgoX+9L
	 eZDeuAKJlC4kzyL1aiqXGrdB+VZc52ZW9yDeKtqAopRCYUVttBUmpOe0AufF0zbvHF
	 RnyyFc2UUoSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A6C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255859357.20315.10149872889990791624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea23fe818fe3d59d707be020da883d4bfbf621e902c2aec6d589afedfaf2986
Date: Tue, 15 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752558593
