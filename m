Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FBE1E498
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726012554; cv=none; b=q0TK3v+xhRl45lhBJOMx4Ja8N0SNqs8UjJ0r/n9vJtZfG7yDi6y1S2eKjdJhRFDXFvnZvZYqcnuPXCvuXJ9xxPnoKMKZioSsRrUCNwZD262cs5Q6yX46QNLtcpUg9CUxq0OCj9KxH10dMKPTMnnrUmn1JTEBJTPAu6vec81J3R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726012554; c=relaxed/simple;
	bh=02LXyfLmyF2xeFHYaYrOxa5c+GFDydqdLSlLRpcp1Ec=;
	h=To:Subject:From:Message-Id:Date; b=ndQ5w51SCyvzIGPxnaFgeHJOa8BMJxMDD7tvHOyl9How7qvkwDR1ljhTJb5WhXASoVu8XfBGLPCAbXwXV3ffS/OdMYxlmPUxZrSVZGoliE3U52Hu+eBPszMZAHLXHP6YbETrhRCXLwqWr390QThZGlDdbmb6NgbXidtBerS4eh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhGBWup8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhGBWup8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4FC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726012553;
	bh=02LXyfLmyF2xeFHYaYrOxa5c+GFDydqdLSlLRpcp1Ec=;
	h=To:Subject:From:Date:From;
	b=fhGBWup8gyGlyzOH1PWlfUIR54IFlHnTWWq7ArLqMsjYlDYa9yhkm9e4gJRRfMu18
	 pnpP53/yT1Fr1q8iys0GULzWVTbYQfjvnyONuw9h4l147PN2Zdm4UqNtB1o99zWMpv
	 83IoaWNa14DSN8fnD5Ykg1CKHV0fIxJtW6enBpbT09qkJ1jGw1j7tErtK6Idj7bJNw
	 akgqjDNwCz8Sggk6ZE1VeMuc/tN6zPjLDADacLL1sx1/byofEvQPD1h1Mt6fvM68lx
	 0syieEqaUbhh6I59y1RQblmEQ3QuMGXWAhkjooavdFOy1k9c5gp2JVlnyJxA/7GbWU
	 ql9c6f7njyAMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A4EE01F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601255359.28994.8756004626567089893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6a7d1ffbad4ad560266cc1ed3cf05900281a1e3c0f384efef4679c11910af1
Date: Tue, 10 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726012553
