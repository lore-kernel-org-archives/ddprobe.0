Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2192D154423
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760319594; cv=none; b=PnxgroZ9wXGPAlWtBi5JP96CxboVLlwAFDUw1AOwk+laauoFVJD2ma8+RyqSoMhbd5I1OdIn+ZiBzw7zj9JxQ0AlxPygTmuf/ww8g4jlUYaBnfOU6ukYFPVYIhBLeyy4ZcXm8agCteOZeKUDnuoDX4vsUX5JWiFN/0ENvjIZwZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760319594; c=relaxed/simple;
	bh=MT05MFpL/COANwXrBIgKgQjM4HIpuy1vOmfN4azCbMw=;
	h=To:Subject:From:Message-Id:Date; b=Gyg0qiMZ8GhmkxqoqoImNZqsSVulaL3usXMnT2gxL3fHYadVNjiPMwtumKzgi3CfA6Dy3d3+DtF1JSCuWwRSdy2Z3HrrD4BcGw60sqawsWyNAdxWGowVaW6bo0BEUOyZtaTXkPSYCR6sRVu/mNsovha0yPRNTE+mAYCcNQPx7KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erm1EkWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erm1EkWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760319593;
	bh=MT05MFpL/COANwXrBIgKgQjM4HIpuy1vOmfN4azCbMw=;
	h=To:Subject:From:Date:From;
	b=erm1EkWl2p5HD78RQxMZG4cPG6DqmV8OPEyKjBPLa0h5U687yBs88DqEfx4/9PDov
	 kR+JuJclywokeIcYjqP1F093QDeM1uvHnvL1OpoA2xXdaBli7yDoiiJUzyFCAdV9Ad
	 D6uSwM3fLXFZfOdZn33O4WN9BEc5lzqMT1aFFxWzzOyqJA9rGRFWpc3kR7YrU7RJG7
	 4NHjXIKpqYfD2v9ea6TmfvkKHd6obR+ZkjTcmfIWucma7Uft3YRXHQORxORDNP04Di
	 s0lTtQRKpAbIs9aUVBbt1BimJcD5CqKHNgSjdo54sQQljZNyfeNcu6erIIOjYNptFW
	 5JjAf3a9xhDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9484FCCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031959357.11751.7742725257683648553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f18b8ea6926ecefd2adcd938bb4edf8e5d9b7e4ec9ed3bbda923b915b64defa
Date: Mon, 13 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760319593
