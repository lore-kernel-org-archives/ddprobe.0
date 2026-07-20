Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507CD3D6CC7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784590714; cv=none; b=ky0klhFZFxHo3HQ5i4Knyrb86eNQ/PCSXxkr7nDCaDvXYRg3uI3/vn6/teROQOa5zD1MX4ys++1w+WAVVsD9ek1OnTktt2BU2lVKNitZMd6Kx6crLo/DA8DNYGOsw2tuzpiFRXv726QPgkIHh5B01h4tCTnn133OiAmgGRYxvdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784590714; c=relaxed/simple;
	bh=GmrSmp9S7um2LzheSsLvKIbVMcxuTHVMYhV4N0lMOd0=;
	h=To:Subject:From:Message-Id:Date; b=smog+Mcp8oWkhnDKkrUlTfhbZ3+alNpwGyvH/NvgORs+4D0AWjQrq6vBbwDTSgxFAYlkQNty3zwOHTN8zvWuMCSw8Ll/eCeNG9zmfUypN6VDntgOGeHRZTrhgURe4eLAVnDdLegP5EPMXpPftlQgOIzmKq30C8/8M8V1orp/a+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqpjiHgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqpjiHgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2207C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784590713;
	bh=GmrSmp9S7um2LzheSsLvKIbVMcxuTHVMYhV4N0lMOd0=;
	h=To:Subject:From:Date:From;
	b=dqpjiHgq8LQr0y5Lb2mQgX2mg9ZaVkb/Hr7F5lBddtyMYFXIJ6LkwwKplHITezAav
	 ETmXwrNEOuic3Ou3EFcudSAK+IXhNA+hv7pWjvmBxcJsfCSZp+YAnduZPuMl/Q7E5w
	 5skog7J29ZTc1N2ON0FqZTg5OGx/u4iXpvi1GNAf8ioxUCZMN6MLcZIs9iwvsPlP6/
	 /d/Ssw38yK6Dbhtt8qutRHwY68UbRzjN/McxnAJL9KWvS0ECJ9/aIe+jkVuXC0krbO
	 Jfjpg0eJqvm99ONeW/hsgIhBBUDsvzNL33uL2i/FlqEe9dbKESNKCvZXfLB2ZhK17b
	 agA3i8OehhC+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAACCC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459071368.7470.2663071360111440545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a65da1c322150c2bdf3195a22997e258f6e81bea266be6000ff1ecc0db252ac
Date: Mon, 20 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784590713
