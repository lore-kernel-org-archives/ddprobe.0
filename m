Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D801BC2A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748797194; cv=none; b=GSiPdHFDt2jgrNdAxdmyxyEjqhK83neK10IkO/4PiMOnuStXsitSXR7tKMlR8ytZEkonpnvSJx/LyiE7KFy6hsFM0Fvqi0iWheFVacwSAp7xKZLbQ+/JBUmlVL/79YbiAOtyyH6r1W3NWwDsX0YTUZ2GYPliJoZR8swy3qbu6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748797194; c=relaxed/simple;
	bh=Dwfw0tiCmBgq8WGa9xHKvg70QrGDRax6j8LxcqLN9kk=;
	h=To:Subject:From:Message-Id:Date; b=JjLNTgda+A1wJlXHQxW+SKzWWzny8hZQfMW+nhN5fr0jcnUtp2FlpD1Ct1BuGl5Og47DZgtsqno5Q4P6t1t2UL4b9TU5xVz21+KScQfzHa2ttd+GubqNx4AOBGAP21BO9v47izhdagO/40F5V3WOqlwTQ2iNud4I3QwLha+DLTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK87IxR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK87IxR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57F2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748797193;
	bh=Dwfw0tiCmBgq8WGa9xHKvg70QrGDRax6j8LxcqLN9kk=;
	h=To:Subject:From:Date:From;
	b=nK87IxR4aCpp+jJsDBQEIUV6J76FfMrU5cxjUKwM3DOZxESjKvdXfwUWeK0YKun2X
	 Pygu1zRXgElPlgJnThOmfHljUmzfAz9c51OWEb3q0C6wQKhgLUqevOWnDiNNvaGkfF
	 og46CT7oXOASqeaxzAkp3ljDBkicNBFTlgw6jRbQ4rNZgHsUJ8S38TP1VcBqwFRjst
	 F88deCUSIgK4mwo3VaE7mqexZ7B9802ewHNfHRQaq4l602RN57gO7bhqvooC21/7O5
	 7TFw07fKoTkzEr6bLfLutYAd2Fuae4RknOTXQ/MtkK5L8r19Bqi5PhRJtP/DE69lbJ
	 dAOEJVEgk+0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927CCC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879719359.17063.10995850169375219452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eac0e7c3401e451ebcc8e2dd7b979b0826f093913725947ac5dffcaff5ff3a2
Date: Sun, 01 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748797193
