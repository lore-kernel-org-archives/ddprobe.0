Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E7E25A2D9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747763995; cv=none; b=HemEJsCh21g3Sv4WgEbdW+oDNezc/u0IJU7hjdBBGTJJnKrJOev8bKRjGbkWmI1R6AXyPpyncGvO3rEzcH1wIN9QmSNBDBqmOh/ARIfUPY5rHpGuylc+yWbUMgwCvZPAQVTKOfPwQaKGoMH+0eLRcw7ARgYa3k7GGN4yc53AyNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747763995; c=relaxed/simple;
	bh=BkMAuzbNwiuFSOyXjTZqNtlPLNX5Y8RFlSZY7baiCPE=;
	h=To:Subject:From:Message-Id:Date; b=XXJTR0RyJpA2LCiQrEIoVwpOMJWXJGxjF8jQO/bN089ptoKz+ewFqH0bHkJxlF5fl7PS+EbPx7Un0KpfF0oK1N6+3J4K4PyBg/iB1UDATnQZI687d64RfyjOcYP5kz0sgHfvyrv1Q9I94PPTibgdMfS4FN7AKmBIODg/X8E4sYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX/2U0fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX/2U0fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747763993;
	bh=BkMAuzbNwiuFSOyXjTZqNtlPLNX5Y8RFlSZY7baiCPE=;
	h=To:Subject:From:Date:From;
	b=LX/2U0fjGkW0vrDPRRrsc6cp9WPk9beqh/m/MbV4YXOKPumU5/wlmx6pGrWyCCXpC
	 g0Z/M4tw0vgNVQNDwNmXgaetxIXHJO9L5kyM+2pODU6M1ksu8POmhZQRviVs1TxVaD
	 F9B65ZUVjO0EQQqbdmkksCddVsMxe6zEQwQoabvIq4qk0y6fm4tLfeIV0Rn68w8/d3
	 EBbL9HV3ncah/Fdy1jT0J5h3MJSdKDFUb+E3NHRC1Xx1qdoWBEhxqAnbwz/+zAi4Gn
	 g2xs2VTUPecMqLdsoRhTUbMkJcnVnB34h2/9xotkmzsgP31yB2qxvYOgKWYiJ9ty1a
	 yByoZD9UoyzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA23C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776399362.28334.9786333740921939261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540dfabe8a1b03993add414bc80dfd45a5c26a1b2ca0eebff161ce5bcd91e31a
Date: Tue, 20 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747763993
