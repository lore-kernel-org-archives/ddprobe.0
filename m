Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7E4D53E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718653703; cv=none; b=BZlG3nLhcOE5NoADvUwgvZxjMJROJ94eoRzr6Qhvrrhg0NwJnV8XkBtuc1C3wt1+nH53mwNF3orAX5as2liHYiNJ6oRnEZYmjgkjJY544kZSAcURUVsh6HKofmw6EMuLZTqw8EFpEUn6NHAsssQAToCf3s17WmJH8gRZFK+SH2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718653703; c=relaxed/simple;
	bh=ZrEkzpv4IRIbbbZR0dKcB49t46l+JpnXk5rKLWwQqr4=;
	h=To:Subject:From:Message-Id:Date; b=H4cAe6ARTD56aRUvSKF4gG9NlRbRJXN7ZPwBP5IaLrMpW8SsVjmeSiF6TbCjBBUhH0LrcAylurfhsPZNy4lVeAIwDirKFKOPzfsNnG8oX+tN9cHCOL+R/TWUo9TPPvxyLUZtxn1YKhOQ2xXkdZ5WpBf4vXf/eFT5j8urkEUZsio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTcqyLzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTcqyLzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99B8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718653702;
	bh=ZrEkzpv4IRIbbbZR0dKcB49t46l+JpnXk5rKLWwQqr4=;
	h=To:Subject:From:Date:From;
	b=kTcqyLzfsP6pxclJeMmjIF80rLVc0hS3U76rsIvi6etCNrMuZ+31sC/si7xzOloHf
	 3MDW75LQ/FfdUhDXlTUH6fhYg6Vb2YHBE6NXc6wBiR0O6Qn00gaCCOn8Elsb3Io4Ce
	 2bj25fwjtUdSwdMOeseZeAdTtl8IxHM5IiF8N8bvQIJigR8Nn6zRJe314ME+qfn7yk
	 79vgpUApG74K0QwOF37zz1JotMNgJTYjpGUTdDQFbEoVfw9VlcYqBhajj5JFGN7tyZ
	 x20moJbE6KepIYaUC1sl30vQP4s2Ub3wdP/ZxYifjvJS94X/PFILNNlD1VR36wRKmw
	 nTCc4mHG7dmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68E5C2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865370280.25088.17685136579106137636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcda50ede3d5f18ea9d35e8b3ca64cfc8a93f6fe8ac0232fd51182568f40043
Date: Mon, 17 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718653702
