Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B4A1E519
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752590993; cv=none; b=g6uMRSN4A0TEi5Jc9cb4lFX85wNoKZrQmnrAWbrdO27RpkxUh6NXGPQ7HlRFmH57UmzeCrn2H8lnixxeqJjCR150v6cKgkPrgbdDAlh8OOty7Rquk5ETM5rg+4v2PsrZM1AdI8d5uBPRsynqyfBj9dAGuPbIV3Lcv7uwe1nUAK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752590993; c=relaxed/simple;
	bh=+YZHOZ8zKzR02Qyff9ytXkXhR1IW0DbmO2U2MpoXVjY=;
	h=To:Subject:From:Message-Id:Date; b=EvJ1Wr9sVC2Vqa3TKu1Hwrp7+LNWGEmw7nTJh3JIb/xv8UTWLrKKLKrGkE4ZQqXrdueGhiGu15TK8bAikz4GLueiqZgLiervhMsEjP8/MIbqez1zUYYsZJtOqgjKPwEPS4pc22LR6FD8ph0/smVfcXA6TABfaBQkPhIjt7mnp/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDYQVFd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDYQVFd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752590993;
	bh=+YZHOZ8zKzR02Qyff9ytXkXhR1IW0DbmO2U2MpoXVjY=;
	h=To:Subject:From:Date:From;
	b=fDYQVFd6nxbENqt7WPbcQpWIFeAr6V/YKr2YZzmmQDfle4ad5MEdkNbWNKSfCcpTC
	 nLFs0UURq9kEmzXOc6L7c3R5vph5eDxzDE6VDt0gCEFEqxzqya+Q/tFxcIgFl6u4Sn
	 PK9LM0jxuKCY3f5GGFarz4eoZb5Dac7S9Jt/AnHUL0E/mkYnTaruCbyN5BwqMACej7
	 A31K0+zRJhC+CvADDDRMeG8j+1gd0WjFDfwFwnTHa9Rg+L/FeGgSP1C2pgUTjvxntD
	 KG5Qdx2eiJ5Zqzpj/OKa3bcqwL/KexYtiORQO/XaQqE51xnQwOLjpulSSUuQHE6Mpl
	 iI6oZSDOhCyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91869C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259099358.6341.18068625302988349328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583efe61eeffebfe52e4b0d26a6d2cf6bf220647851569b6e1f33834545485fc
Date: Tue, 15 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752590993
