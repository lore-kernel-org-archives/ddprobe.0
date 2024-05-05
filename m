Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DB45CAC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714906943; cv=none; b=djDCrRmDEcaIUcLsWksuYpc+2el4Rm3Fzt598HjZJQwWX/81wUrXwu3L9Wio7ZWWzc43wGaeRCimqi4nnoYMCZa07FctfKcov1S/N9JSTZ1XuNjxvNTPLMCZkhekX6GLv1gMOvpOmTOzTNGZzRt5Vi0APsPrD8fP4yZcOd0aWd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714906943; c=relaxed/simple;
	bh=IcBv3sJvc7dSji/crt+gpELHYMlAKVz/NvrneePgJwc=;
	h=To:Subject:From:Message-Id:Date; b=mCEzx2j/brVCEjIQYSPQtD6Q3EGMAV+zXuIN5VGYZQmj64XOdNyyFnifYLXV8iW8B5duDnd6QwhNkl6rqsAbV3PO7B2H/ZGHbWAXhBiBKdY7iyjjyO0vTvU/MDL9kgX4O78oPTWqJphbdOeFLyR7nbZhxqOj7FXbEroCHJwicMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOz++lxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOz++lxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1F0C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714906942;
	bh=IcBv3sJvc7dSji/crt+gpELHYMlAKVz/NvrneePgJwc=;
	h=To:Subject:From:Date:From;
	b=kOz++lxkIAK9YX7GE/ijUhsp00XN878utoNIHpBTAZL9aZs8PhORGgSJJXl95xyeo
	 VnAx0bOR8733Jw9BTn4QMl3tpgeoFNfGQMDrXcJloQga8c5QUxDqxm8s01a0uQybNr
	 BZu4dBmZg8IFVvSealJW97G6A4M4AbOmrnJACufctfN1BdMDx+RAp98oKem6Px1YCH
	 Rl5F6ii9Acu6MLD1LlBqdFP1H3+DoMXedUA7JUveW9jYX6Tt1Ne6zIFTkQ7ucq5Asq
	 XdGerwYut771LZrw4QPsGC/iXD8+jgMsWqAhOhVilPzeGQqKUROuzFMYa6gsSKlFy2
	 +1CyVIi3XO7iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4855C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490694277.9349.4828058274628614267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b844bde9525d34085c49f3be51919ff20a596a7c9cbc75c777b6014d7d7205
Date: Sun, 05 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714906942
