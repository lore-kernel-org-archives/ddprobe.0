Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA676ADD
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752299394; cv=none; b=eTAtkTEOLbu2YqXEbXeTe63EDGXMblx/fAsSa3HYFUUDim7ktuLtcWeO9XwMvbrCAibkJ3STRrSiC8wZt4FRlojnzzpMW/btrbyC1tabAsPD9LQ6gowpiRjcGxzFoZtuFXv7i/SdtzBpYsHZxb8CmsJTagwVjt8I0FpGVdOzHG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752299394; c=relaxed/simple;
	bh=rKOIbatmDpjIuVdzdUnI4NUkgHO1oHJeLE+99xceDf0=;
	h=To:Subject:From:Message-Id:Date; b=H9v6mi9he6bDZCrgMncUzQUoygJPDDLlyUzPLTlCEsU26O2k6j2ZPcN8ygqvAq6HDsihDAvt5FhBTOiJNruaEn/BHk9mv10C3sG5k/5w+97YHcmGA+nHH3Wok6JBPkgGmyBVh5PFafwfyZ459nV8GqXQsCzGPQngWXSkMT0ihaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZBFU7Eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZBFU7Eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752299393;
	bh=rKOIbatmDpjIuVdzdUnI4NUkgHO1oHJeLE+99xceDf0=;
	h=To:Subject:From:Date:From;
	b=IZBFU7EqXo6nVcenmau4YcbZE6z9ahpN4ZvlLCfPvqjPFX3w6hcDbvCme4AkuHAV7
	 nChvtw85M/Rhly7cmugUczY5LMFrRALPSpKlOht7oXsfz21UBuD2Iw4TGvwFJ3RpyA
	 uydIL5aDZUnY3KiNePgRKuxX238hfjfsNMt4QpKyegJhjddGDncDaZ/X2dWn7Ldh4b
	 ji1s1iV6t2cvgFcwH+CkI+DnWwff827BFvlTfb4r6HiqTqfRbjgoIzf8Y2rEyyo+/J
	 CTHajBLqGcnjZRXvauvc8PlfYSstgYQR/IQS4pTqmQnQhN+LICJKqJfhCDIUmVARwW
	 KJAu9hMZfmlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F180C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229939357.25499.13537805116565940813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02c579d449c7196778798800f7c79599ce623cc6b147212f596e559a8b12f35
Date: Sat, 12 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752299393
