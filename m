Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CC9175A5
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 02:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715655143; cv=none; b=Ja2B0Tm0IJEU2cJlL2FcXlPHw2mxJ28uM3n0WawRkCdH+j9ehBlEXuaZ0DDJhGzHHWGIg0hyhlSw34i1jBkMT1w8gDE/gBAgdxmltGbD2aGHb/hQdQTrwx4DrVB4dB8/aYYezAcDPRTu++nx7zCxhWh+NCUC2HuT+jYXsxi/mBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715655143; c=relaxed/simple;
	bh=8KW+fFgSzDuZFDLIQR6xuVz6zTr6qc3T06/O1xyc0PI=;
	h=To:Subject:From:Message-Id:Date; b=CnnFqyjNjkotJxQOfjqzUfex34XNcLI6NWYbVeoDjIEebCQtfPj3024XAfre/VM8SoR03f3ZTFGjHYr3LBGQ1M9P8OuWWhkSxKneTIjLy47gGc3rqUlOqa2E3HQhEDUeB42ET2uV9BXY65+RHfdX7LCZ3ja9FophZwi9akZpGUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzbyh8TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzbyh8TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE08EC113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715655142;
	bh=8KW+fFgSzDuZFDLIQR6xuVz6zTr6qc3T06/O1xyc0PI=;
	h=To:Subject:From:Date:From;
	b=Rzbyh8TOtAmJYqiw21GaWTfyWmKPzHPgiN/8RE8M8miWEpvMCy4qtM6gzi0OMfHra
	 BtcVe7qJrb2JsKtjdOr9Omha3ondqZJKqTNsS3WQ4p7AZ8GB/sDWw6ZNIpfsc41IlD
	 qg/yP6RaX/jNpD8xHI75tvlfgJKI9ya6CiJHp9YfC9msfdMqBNcWCKg7w2S16t14aC
	 1F11C9qFabSZfaTyF6skaahquCMRkNM3y+/65UextbGoEamk7j8iuewQ8JJPxwiI4p
	 rt/Ln85zE9JsWdBafT2/67WnkaCp2k7AiksR2fXGgwAIKgqwnqH6HDzR8lY6JHnwRE
	 V1fp9H7m4V3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1E4C25B74
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171565514277.7621.12242588712681383051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f577065cfc0643d1fff04a80397d4b135737984d7e3c0778ab215043b73c62
Date: Tue, 14 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715655142
