Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2128C204C1B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736370354; cv=none; b=Prr93BucKgiJaJ6nx0zp7YMmEOU+SoiWxAigEkhkaqD51YooOa4xp9UJAK4pVQb5FbBL/NHiaoDafi/6LOIc+WCkhni9bXrNQHi/c6HaInWGZO++wEwtsvpErP5P01qVCG7+0dIPSDfDgxbyAbQJ440FWW7iTrHfwihDooaay8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736370354; c=relaxed/simple;
	bh=JkJHPdXnLqaWjHXd16JuJreO2J18N27ANMAuleFxAAM=;
	h=To:Subject:From:Message-Id:Date; b=YfUrQCwviU5+fqKNbBkel1rRh0txsZjx0XBip0JQw+5KlNjakUXs1cm4KlSEYBbf0Toqwiim6xdjs1Qb2BCORVl5kO8BFh9AqQdRJks0VvTbj7pYDIgHRg0p4bO14e8Y4qyLBoqZzG0g2YjHGuPEGV58MxKdvfz5/l+ckaXO6tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbAdKFpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbAdKFpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E06C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736370353;
	bh=JkJHPdXnLqaWjHXd16JuJreO2J18N27ANMAuleFxAAM=;
	h=To:Subject:From:Date:From;
	b=KbAdKFpE/Z5VahNcCJn67HwNolRr8a1i7LbhhSyUEdKF51p63XR9q+e2uSxrXpZO1
	 A6/osii9P0/qrEkNGalc+89L2KuLmj++jMiL5djYMriTq/KMnJagk/36m4fKnkbi6A
	 TYLT8ZV4AXdQifVZPnrmio5o0Iy8ZOdYiNdgPRHpU4mYEH36wIBGLkD8HueDLKamvg
	 /5tU1FmxRfNsH3ZVbW+EQvO5kW/JYM2UcLnR/e0uCjTsjOnulRGda6e9yojGihV7uB
	 13UmW9JetDDAKwmxkzv2iPklvkphRGcA5/hm8z+MbdCBP3d6WRhbRcfqGxespK8hQV
	 WHd3gILftry+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97135E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637035360.13899.9628199950657318712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d340ec33a108e64da697d4af3aaa4035631c71a05afd939840ff26f166b4db2
Date: Wed, 08 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736370353
