Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D8236934A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756929594; cv=none; b=H9CL3ZwdlGHmvpOTWhfv0BoE/cbVe/7Oe1BvdLMePWOiqaGH/uNp54uJX2EclntHdWtktLESAt2DJ9mDup6b3hPy3hk22dUtxXyvQkQLUfEw5qdc1vOnAGswuVutM3YxRyZ1OmAQfaIzGsGu1s3yDtkvEeRae7mSzFkmLkx4PhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756929594; c=relaxed/simple;
	bh=Sw60fLYmqgQy7tjvS/g9I8nrLCFItvxNHgFHm7z/tBk=;
	h=To:Subject:From:Message-Id:Date; b=PTjflDxZiuY+PQyvEdF4JiF7kdwcLO3Y5AitHulKouXEwa5kA16bd6LSa1CRMHEbcnkRi6d+7UrOpS+6iiZuiXpOUt+Y74aCGf0dkkjKrNdiuhlyL7xfbUoarYkDFCvAhizDkmgaF23qYyCEZWiwRi50kDERbHSBG0fVbHyj7UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvcU9hQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvcU9hQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2908C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756929593;
	bh=Sw60fLYmqgQy7tjvS/g9I8nrLCFItvxNHgFHm7z/tBk=;
	h=To:Subject:From:Date:From;
	b=RvcU9hQ36hbiBGKfgIm8FWBv9K3/lC2KyTVrWgKvo4rBsmMmQekwtKuUOjupj97zD
	 0hBjHOyj5IA9xRgqbu+X2vGkKlwMMwHilXkPTtUKxI7E1E4FQAVB0Wx92i6njZ2vIU
	 vf3vpyWxtM2usOh9Qf/uaDRDJU3QxFOhInz8jIq7Q5xnWfkg+iZ45TWWZ0pR7eIXpu
	 hkC/9rI19u/N97/6oxjHK3KCY3x1BBuG4/atH7Xb5EJDh178Vn+kL6NQKZZxh0b6Li
	 99ZlFMd8kFe5Z3bOM8Q/NUmPRU4NHxP02rAES8hOGHt/ZOpiWdGCLjsc5o/Ochw4A2
	 qLBdZI802XQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F7CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692959358.1186.9250214131762188794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78092264564300d0da939872eb6c6e41245355c034749f8a4919ea74ca2038b
Date: Wed, 03 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756929593
