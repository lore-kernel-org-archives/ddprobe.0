Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E59312817
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761771594; cv=none; b=rsokTPOwMID4HqvUtCN07NuLaX+hmzZdhkGx5hx1BJaJWfHqSo4VqeXtD2X+iUS0Nc3r+9iFnlKuNoyutWEUNPgnLVbMVC1B73ufjGZC1A9/fEegYMrdAY14iHKdSQUIEMH5W9/FPpyxlHm6c5RZSl1eiJN7eKOnDsR46yrJRzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761771594; c=relaxed/simple;
	bh=54lJn5MA4biwkf8c9nPRSQmLEd2XvBPhNEfHe2Z7+K4=;
	h=To:Subject:From:Message-Id:Date; b=mq2zzdDMfi1tURLf52mA/ZZ5kg/FLME7W3AwFmQbgpAzv//ItmAqIpUjQ4l94PoDnKExURVmdcH4EWi4Py/0l5Tq7EnzZWJXJR/nch9Wo4M8n6jJxA9oSiQI/rPfkfSU5Pjuaf7KVvd1tN7POsAo6YGBmUYnj9yi3FhTWKj3ARY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSUdyMCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSUdyMCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A2BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761771593;
	bh=54lJn5MA4biwkf8c9nPRSQmLEd2XvBPhNEfHe2Z7+K4=;
	h=To:Subject:From:Date:From;
	b=cSUdyMCNwQfL5boz+5C2Q2SvThWgme/Ke1zUvNM6TzSJwo5Ou1jI7g9WvWm0/ksv9
	 RiZXU2b66PwR/6N1yqYDpcqTUr2wsLTmb/LrMDegXOj0qGpwKaHYTfwlMJRXIsq81q
	 rrCxWoDVw0rFZO/zUdDnk9drIUIHmaAYM+QmGfyHWuJFbkmCG/Fh7EyRK7q7L0woKj
	 GxbWmmNGzm1EAaMcZbVhUQMtmkqwvhTXzvWt7FktJhuAtxMpCsbT7YfXmOIh5Nwrev
	 GwVsPJjD3kYW9XMnKMx3vi7hA1TS5h5JzMBS9Tm4W0L/k/wJ4QI4QKTtHUI62Lio5G
	 VjS134CByhaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA24CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177159357.12824.7360908281937333806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b107fe709d41016ab005009ca82cef163cd445a4497acbe0fe4a6ed24ed9ed1b
Date: Wed, 29 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761771593
