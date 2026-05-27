Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400182609E3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779877954; cv=none; b=il/8VjnozgLsfYhrMOie3yK7MG9FNlcVk6SXsQxG5Wr468T6LK803RcdNqiH7/rQ22XnEXsseVtlAMz/mg88jaP9i3gypUrs8DvkUNkogXW/6dy66APGIZy7Euitay0GWRqMtTvYk76Y7C6eGlOguJMfQ3islqqCynp+bW9BKaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779877954; c=relaxed/simple;
	bh=GYcFqGY0bzTFhJSk+SLotzNVwU+aEGvad1hj7wSY5SI=;
	h=To:Subject:From:Message-Id:Date; b=htH6I1/6dbv7tFp6nPYYJVVMwTwcKsFLd4WXk7AjIKPG5WPr4ou+Sr3KZPQT9xgtasCeB0qCXMO4QNI7qweMcAbj3DUJAbJgA9sbNjcCGjq9tBEXXDSKRjeQLnIDEZ0hnuWhaQ3x7A3QO8a70Bs6ve4T4m2wla53WyBsxV7kE94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWYEvZsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWYEvZsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9849C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779877953;
	bh=GYcFqGY0bzTFhJSk+SLotzNVwU+aEGvad1hj7wSY5SI=;
	h=To:Subject:From:Date:From;
	b=TWYEvZsQokgc+SJOygbNLC6q74+L3WbZXGU8WiOoYZYn0OOPwbHVNs/T9TQ3fMBGA
	 kEyMdw+V9maOF2SaXI0Gku3asM3LzQ3COnWSjHAXEbhlqcpYeiIz1duRaC2QWnBlYA
	 0KW6YlIBHjDqsh87H8HmSiMm8A5tBAA1aSPVU+ojGCMqO1zP4LKSQpfznV19IYWpMZ
	 4vpOJKRlZCRW+t7Zpk45Vyu14DEMUPWfb1LZ5Bb3mBZyqfIzWnmf1Rh2tf3IiafV+7
	 grE15uivjKrBQO+OMMTSU+zhxgswx8AXSRQ0h7ktGOBY6STWIb7aK58hfO+ZEUEOSy
	 43jiP9hC3Pf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FE7CD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987795371.16585.1222401703157192753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6c5ebdc5a36dcfc3618f78a770213212a825cb5218acad3c35f8a47a699a0b
Date: Wed, 27 May 2026 10:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779877953
