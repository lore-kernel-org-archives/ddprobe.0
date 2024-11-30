Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4043D15956C
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733007954; cv=none; b=N5k8FLPOhmrr3uB5F8BFGv+UHvhXldkHX/cx1PxoV8+P/okkaLmgf3KbOoJFvITFb885i6TwAjNI7oOI057IFXytZPBK1Za8w523pRNUhDmUZ2b2m4ZOtrpP0vlPVqKn+kanafvNr2Bu0s628kH8zquZaSnlz4B4t8SQU5hYh6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733007954; c=relaxed/simple;
	bh=tA+mHjF1tsgLEyI27RlrhlmVv/3EsCSKvQ9L9c4xb3s=;
	h=To:Subject:From:Message-Id:Date; b=qc+mZbRdpiM+jygNuHU9psp6zRXDyDlABVj6Jy6jiCAHmg+8a95XQV4hSL2euVihcAtGXU1cA8+8d3ZdiscK+YfLydcbp0qJBKBBjBgUeOWNQKUDlS1WQb2ewSptaLMwyXiXou93VKzJIlqJWFDerl9azOXJ23psrOje3MZIrC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJiIy7oB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJiIy7oB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C6CC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733007953;
	bh=tA+mHjF1tsgLEyI27RlrhlmVv/3EsCSKvQ9L9c4xb3s=;
	h=To:Subject:From:Date:From;
	b=CJiIy7oBjoYlLaaVK7JexEPCBF0utnzF5ZMu1hVwcTRY5d19XQUFDQOysiuHDL6sj
	 FtMp0cNWIiGZm0a2vpbGHSiEdLQmYdMqFY1uuCHLqqyqiC+rpKj+u3iUOMrNOY7rbO
	 M7z9MWwGz4TUiu/USgkEkDmGdzcFi48PEr7nxloSTDuRx2fCLthPRpZep/gGELQrhd
	 yFAoV9THMjuUf5zP9NWZWsdR6+njpQGVgp9+HxruAEhOa3ad1N1EM8I+rht1u93cfq
	 jjCH/C5bFoUuomNKv/t9RBnXPfEghfV0Gxspka6+OeM0/HANxlyzfL6B8Du4DWoSEw
	 c/G/d8Rfm+kvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A59D73615
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300795361.1074.12931363876076324186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbf2acec56d688e000a977fc273a0683ebd858e0c46e1d53c390f3a4cec5354
Date: Sat, 30 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733007953
