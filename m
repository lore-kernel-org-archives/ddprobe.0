Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329E1FF1AF
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741955334; cv=none; b=Fp/fTahQ99ryACtkTOtIGZ6Dx+N7KHXn7hGpDKDnv2LQn2u3puE3UJ18G2MtePe0hlSI6OZnFjIFGiemuSEwbpwhIBz49fYOtVzMDHAIny4Ze4GhFYALKbKEXWmWUAMBJdrWw8755ESL67pLc0rlQRFFag+HSVilPw0P5V3CWzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741955334; c=relaxed/simple;
	bh=+S3J2WETXJrRn9Na6d7+idhZXP1WgItWiPXLnHPeA1s=;
	h=To:Subject:From:Message-Id:Date; b=S1rxpZY17eMAbBqrbKlx6FstHwa3I4ZjOuWFtbU/yV3ElS0iIcQPBhX/o5JnfkO61XnvhWUmrwzn0wEUWJUBlHKBb2RqGWiz4kdnZlsVCnzO6u4JyL0SPsjRiaqkAmNL39y0QXU34fvDFqVDq8AKYQb5H0r6C8P6erC+J+Jqpuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C94oO2RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C94oO2RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD508C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741955333;
	bh=+S3J2WETXJrRn9Na6d7+idhZXP1WgItWiPXLnHPeA1s=;
	h=To:Subject:From:Date:From;
	b=C94oO2RCB9A5lIc7U4ryCBJIuzgtNEdyE8HG9Xe1idYSuvwgeOAQcUOZU9bFDy5FM
	 EG6gFJQ1CJGHc1tUn+Dz26QZ/wSi/UxHXxkecxWWwCTF8P30EE84OeMwIxx3gufwze
	 SFR2ST+s8hnGS0JDOiPC5C7ywSC3K/h2xXhoK/siookbYZTTScup1O0kzs/DUyGhpr
	 plgM/ABP12p54Yru0Ki7IXArusnxHvzC9r2a6TaCtLTRAr4ADG8hxmBq4/+yoAYZan
	 qvpEi6p7PdwT1h51AW0COmIO+v+N4P9fYcYJZIIxjjSOWlusDxOIap9e1cYVzB8n6k
	 26V6Sonpkxuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C92C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195533359.25048.9662783747446725346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a35d467333349c27018eb1dbe5d38abb69a84c03690a4542bfb938830ee3cc6
Date: Fri, 14 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741955333
