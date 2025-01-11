Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7D8199924
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736637954; cv=none; b=oHT1pvQVfiAX2J4RKV/jZEKFygx8lRXT22BXXhdMPmrgxt+iTC08NWXLjy0SD/e2gBNFQUSbNiCBDrsmWEJQZsy3UhxaLfmZKEM9Oduyyoxtyniun9E4j6Czgb7+S8jB53nz31vY3t0BqVo4FLGQ6aXMF7rE/KPMIfWN5zkoacY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736637954; c=relaxed/simple;
	bh=tNDuDn8Z6GUcuhqEgQ/mpY2s9XkdCxEwd9UVa0gqqls=;
	h=To:Subject:From:Message-Id:Date; b=hrxhhjJvTAoOchXVeAGZ4CKvO7SQM8cJHdXWz/9erWw8rUaDQYc+jdWvvIpzxdJOS5dS4qWLseL8vmmCCDKE/dWpR/fLiV8W/EQomVrRdrCtODBA2PrU6W4W/EBbplWNOGnqttJjcSQSTD5UU5Ol3lIH62gyjuW+V0a4+SSMOg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDsM5s/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDsM5s/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C1C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736637953;
	bh=tNDuDn8Z6GUcuhqEgQ/mpY2s9XkdCxEwd9UVa0gqqls=;
	h=To:Subject:From:Date:From;
	b=PDsM5s/QbtVvq8g9YX/TgnYeiBbCDZzrulHTKFSZ+TK57bhZydNa3z20fSB/q0iKg
	 fsjyOuSEHZRCx0b/kyW93L5UjtrNpvLpygHTBKcZeDxXi+K7xqi0874MePrj6Lr3/C
	 q91DO7Pr651hxeobvXn/AHw8ITxJucwFbuQk7Nd6NipdeyC3VZRziFBmBkBdCvTuUg
	 MpOcHEtilLrytps5UHvtjIKZfRdJaAoATk4WtLbw1eXriKnxNsWL20z02RBwABK2Be
	 UirDxDFVgHKDV5LT86sScIidEWDePqfoffvCDUgA0xxhREXDBhdk899j1kmZ6ADfdn
	 NUxgd/n8FqpLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95074E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663795358.23949.13075048671680206417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993d1735a8ed975070ee0eb5a880d3b6a14e395eee73fa62922c37da75d84b31
Date: Sat, 11 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736637953
