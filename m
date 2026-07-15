Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD223BB113
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784144314; cv=none; b=EWBw9g40bNDQlFkd8PxySbVs780wVpz6HTaUZE5scY7aAnrwLCAeLgIF8L5czfu0a3iUG2fgNHoDt2Q19qUM3t/LJF/4AMbRhLC1byLaCnpwFJ9wTMXw01hh1203IiZwpAvHM8D0tLsXsdlgLfDCkUy8tmM0VaUv0JO6Do8kj1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784144314; c=relaxed/simple;
	bh=PdoF9DPTpoiBwhCQdMJVHNFHew2BtSf09AS1fQDJLgI=;
	h=To:Subject:From:Message-Id:Date; b=BDCFhtwV4aIS5Kj0RMpCrQsldeJ+Yh7MwpsVnHOUOc4HThJJqxQqUDsz/TvZtq9DGgnUA6jkTTlpjfnV1zdLtsTFt5pildnraSGfdv31IWH2QY8x6pi5IDdEqbgc/RQmyyuuHgS6Ucdc6LaX/raYZl8XAWuMeT+d8boLRFbLu/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnyMnqpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnyMnqpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5321C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784144313;
	bh=PdoF9DPTpoiBwhCQdMJVHNFHew2BtSf09AS1fQDJLgI=;
	h=To:Subject:From:Date:From;
	b=TnyMnqppRLgKjKLAvAqnREDZ56/E3DGvDMxrfM30Xcx5/8XC2hWuyQ/lAEc84ZkiZ
	 Hmbttsw8HbV8PVPDZ5WXLSflTGAJMJZR0JX5kQ7PWInG9JEoj/2n5g+cZFEZYIqqcy
	 QdRBVpYXqD7ZrKjVi0mfUanj2tsZfrIt3HrFDwE084wAeD+8CpJQhplgNRn6PA1O43
	 vrHfwRrJkj4i3ujMwa0Du3O5llSHy8X/2D6+V6+90v0NEvM9c+MYahAQ4mrXolZVGy
	 GliS09DXj/STR4T5+ouhemWwC0AYvSvvNBEoNxjN/Hhmn1v51hnSmhRUd3S9jCE1vl
	 qkn+br6oxVrJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCA2C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414431370.30807.6874494119877882214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a793e9eddd6175070b1354abed0374d6a9a805798c95744cfd02291c7b76a0a
Date: Wed, 15 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784144313
