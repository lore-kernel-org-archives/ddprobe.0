Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C871E766F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753472994; cv=none; b=ipSdp89oA921pO7JBdbNThbvsELL8p7FXqBffi5wdfDkJELqmGuiZRdrDqnygaE/TL8/rYIjapRlkfVCjm0RpQvKSUKCEmqN4Fp8/46xAm6qkue4BTGi1jKCb2ehRR0FxXwCAaCbnv4pZa//onphYP/0jke2PWKkLm8jk1xkBCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753472994; c=relaxed/simple;
	bh=iJclq/YeYfWKUtfQLmNor8bNrSR03wTF2khKa6ErUO0=;
	h=To:Subject:From:Message-Id:Date; b=WY/FMLPQ+S2k1W4VkFIU06Q8Bcf59KD5uAF8keAOctaK9+J9NDOnD1NlZtp5W1A9JVO8gE2plwbqdBtqMhr9rXPBIG1Z9Bq7uEprnt3G/UGbfJrFyELXAAqfBvQXIJ84sUfM+BcahtDDNb5itAeaoofFIwk2F/2FY12Aw/0lKas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGxpQ0P+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGxpQ0P+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753472993;
	bh=iJclq/YeYfWKUtfQLmNor8bNrSR03wTF2khKa6ErUO0=;
	h=To:Subject:From:Date:From;
	b=bGxpQ0P+3I/WBRlAwKnj5stoJOKONamkzHQnIk752CqkbihlBWW0wBDPr9PVdQ82E
	 jpDlJo30vFcRf1o58z7PZjhnfywbzEkZ9OpoBlQ5zq9k2DGiPweVCfDyEls8qhH4un
	 mwn14C0C48RxwZFYfuq7Kdk4KsR2msZZtveEdrSz1R1QSoGKqNqjOKjvyZA8/1BMwz
	 RnyBXrAx0Gd44Qzhkpa7YJbKLdtRv9BEfduP9PA+Felwdie+6qbdjBr2K0wuJhZQqL
	 T8BzXrN9ZxAZHBQ2H9uLDe9IiVEz1RsZNzS4DevYn05ce5EkkZnjhgVTt5Uc4ru5Gn
	 0fxbqENa8zW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF82C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347299358.1685.2868174598949359858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911fbe9aafcd77e12a82649266a6d01db5f74ccd2a04f23ee2b9438ddac517e2
Date: Fri, 25 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753472993
