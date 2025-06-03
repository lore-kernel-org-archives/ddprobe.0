Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4635018E1F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748938794; cv=none; b=DkReC8ub7oRMdoraMGXpqgfMClo6GJ97DoS9jDRTGlXOtuFuoZnZHuKXtHXgGN+qrhrhAZir6ryhC8EWaBudRmmj9nnReSDaSjwFhGiGf59t3V02StuIShzj1vvpF1v6fEdDgUFETvmfxHS/DnOm1Ll2+2vTBDNlrZz1WD8jB/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748938794; c=relaxed/simple;
	bh=829wbyBG+89bUMJfsaqJ6m65popgSaRb45mmh8CYdPU=;
	h=To:Subject:From:Message-Id:Date; b=Njwp8ZTojwzXf4xR3VsrfZeeeBsF6DdwCOeGcr/lXwhnduaiuuoV0vSev0X+o2pSDq74CiiNYP1BT86UJHPvRYYBYJqv8KjMFkDhUvkoB0PQfKFgHDR0YZz82sAc7UDTtnnA0pLrHq1bHxyVkCZ9aU+4CA2lJqSbOdqQ2WyfkVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOH3m8ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOH3m8ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3843C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748938793;
	bh=829wbyBG+89bUMJfsaqJ6m65popgSaRb45mmh8CYdPU=;
	h=To:Subject:From:Date:From;
	b=GOH3m8ZAKXKyrvbbGkZiFQq9FHrTEy+Fkn7Ck8UGz0eDyCbFYcTy9P2EcQN+TFIuq
	 DEF2br9PqLOojDUrZnf/v9m7uiJzvI53iwKXuNCEc5WIrsmzNvR3jpzqL+KLj/czmt
	 hDjsWfC4/saQVaJbUJCqKurR0Uk/3JCvywTzGRHLNPO0jcLnDnYbkHK7ch74nnXgwl
	 CRg+++DtSX192ILLpdTs7Z8yBC0TL6Rnj6QA1tAuZBV4z6qcQMg0udJhASD+oTAl8B
	 +sNgs9vWf+UJXf3NN+E3c7Z33WVNIEdjnHppWhQOtgSpiBU3YtrhIxwTjcXrBeDk7C
	 N9bn7WZZMu0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D95C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893879358.26542.17803850329495847567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4dea4caac7932e62ffbe3bede90808e7f40f835649a2d7a2d0816978d3ce3b3
Date: Tue, 03 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748938793
