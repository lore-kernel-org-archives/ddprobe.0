Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5874930DED5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787885434; cv=none; b=l5KqJ41coLnj/f1xeNa87vVmMx9AP3WSVg26k8PlwYFt5NsKD57GF8j3/zP3x2mpJKYDyDpUSuKwOApXgvoJnFDgEy6UXGWXXWRIRvZz0TktdQS8ipKvRURky+dCbMdHD+FOFe0QZ4ph6k4Dq1agQh0joHvdVkkqR/Svon+6YPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787885434; c=relaxed/simple;
	bh=Q9lkdjjEOdCEUVVw4YuXJWatC/Zi4izAeqo6qr/PIrw=;
	h=To:Subject:From:Message-Id:Date; b=XBQgaBth0vcoKWceotDFMAFr9rbtbgRwjfzof+Cgvk++/u/F3QqSeyB2/47rZXOJw/d6Fqvlr2ZQ6nkjlSPfaLNxXdiYBMj5lY4xPSWgHyzkDO5eiwGtE1YXpRmiD/ufTcrt550FUbZdZju10EbZxVzZLK/qydZThR0qpkSIFNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkVpHDQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkVpHDQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0410C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787885433;
	bh=Q9lkdjjEOdCEUVVw4YuXJWatC/Zi4izAeqo6qr/PIrw=;
	h=To:Subject:From:Date:From;
	b=kkVpHDQjUcrJjfs9h4RvsPS9/YSb3KMA22plr4j/VVwsZbEfI4baVfjy5Ipaeuc2K
	 SaKnFLME9eMqQ1b0jTzruyeQvtrX2qh6gUeL6U6/89Oze9PCGlSnIUzcby3hvigwcP
	 8F6F74mcwdE32hCkx0qTK7ZBtAlT+Yv+rTLNNnqZe3oDRo1KuaKLjZOfhT/la3+bfS
	 Y5LOxnQ2SZoa1w+Snfsj+y5MMGcTDrsKSRGxPW3hf9T9hsH04Il69zgwBSDLG0D6sg
	 cXsszoGtlmgQWoz0l2bNg2o2Pv2buVd5nUXo0UtSVb8dyPX1AkcAKpmevK3vb57sy8
	 2VR1KleieXpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD539C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788543370.17109.17396442257209808804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778924e45353d16e712f7cfe4857bd0ea7ec70557442eb10307bae6d6180e3c1
Date: Fri, 28 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787885433
