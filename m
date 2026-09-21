Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3872F2580F2
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789977634; cv=none; b=iBL8EfhyH7GUKA8qKrP3YdObaiZIUxmsYAbsHtGatu9fPXEN0t2/57OoJt/pzR0iLxhHw05aw7R3xwB0q11KSvKDKzHvQCsRG0XEqpNBkPchT1k8YfQNWS+x/swJGb3uRCUKiE4ZlcWfR/ZSiwmS6XFvbAQnJ6zJs7xwtjN8HJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789977634; c=relaxed/simple;
	bh=ZQLX1CAGVuEJNAfPF1QZ/66KyTUCe4ieiS1aGIbLbF4=;
	h=To:Subject:From:Message-Id:Date; b=Z6UUevBAVr4p8ivQO8f3TXuaRzZTVoUtAKR2I5Iy1I8urG9hZO1eMNeikCHmUDv2Z0anUaZFP3Db+Pm4OUBuxATRA1hu2Ywizg7D5amSCiYPgRdBZrBIqa6/BAGaKewCeu9D+0EnUZ2jjbb88Xw3rmQFt0aUogBAUt5Rqbdvr78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rj2+LCA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rj2+LCA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D7CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789977633;
	bh=ZQLX1CAGVuEJNAfPF1QZ/66KyTUCe4ieiS1aGIbLbF4=;
	h=To:Subject:From:Date:From;
	b=Rj2+LCA4WN7Egpv4cPBFAyziAB9z2jvYy3waxOmV63zDVacnW1BSupcHQ2QDKyDK8
	 aMbxAjXtgPk5dslTI0TiBgFZsjuOsKRQ7S54ltkFq5mwaPhEuLlMog2GfqXuPB2L+g
	 67CN/rsPXjE48+DUmMj9I1+xaZdjeEU/WAfBEjBrVa5UJYdWfhO8OS/L4XAGNHkvc+
	 bKzjmwT92hnjCFUy4H8T2ebfVgfZpMLjBaYxoew70Y1nuRJKmtLLMvaJI1aYafiJDN
	 R+4h87b1b6GWFdvIRrXOw9PuCye2lRx1XDcmMiIq0a6HCYs2qPkLTlDvZJ6YxrvYzt
	 +sKEhPbeaBLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0140C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997763370.31749.10600093513311206177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3745da1777e9e84b45e49e365804c364a8cd7001efa1898689642381f2cf3e
Date: Mon, 21 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789977633
