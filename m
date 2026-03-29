Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13DA24B28
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774771494; cv=none; b=KLj9D29wNkQlG5LOwSIYbUT/FF1x6zcQq7hJBwxNKb0ZVqlPXkL3rTZ/gEsNUFeN3S0Rkt7EuXzgYafodcDHBmypCy45WIWcEe+Q4H2iUDPMJt9FxcOmfRklVuTI1ZoQRn5QpkPJ2kZsFo6RMMpGvrGVwkLT/6CQkOaT6maniTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774771494; c=relaxed/simple;
	bh=HL03BmcYX9QF3arWzrdah1B2M7GKeI0er2PLaIU54TI=;
	h=To:Subject:From:Message-Id:Date; b=tJcyGh2fWdG7sL7afJwtb97oA79SAw6vFqP4DGHwJ+L/dgGA+8nRHLPUnZPSPEsaHbaWYEcuO1UxIwzXT1jQWHoa1Eyowg1dMJyFGIQp73bxiBH0ZJGPLnvKQZ44Sb2n7/05lUp7SAgQcBMY9BzreQcKYe+ZQ8AYHYQyrTJRJN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjup2Z/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjup2Z/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AC3C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774771493;
	bh=HL03BmcYX9QF3arWzrdah1B2M7GKeI0er2PLaIU54TI=;
	h=To:Subject:From:Date:From;
	b=gjup2Z/XwMcr/QJy7zvrpwX621yinngqGIMX/wHAoa6LubOk/ff2q/QOnyfE+7+bN
	 kiGGKH1FecYrDsKrKv8u3eF6i+CpfbLwt3CR69h9AyYHePWozXGOdWF+QFuUevHDKO
	 frn7w3EoBknpUpArriF7spUlPU5rXD/PzB8IObVE+1Eojtu9621xaw+XLGga7J4sby
	 tZxr66+RcXg0oFj57oCNpr7Znk1eZ0gIPZvSVGzmChPk+P3T6MT2x0vm4OtKT39dt3
	 D3r946TPMut7GOm9aBwSiA52U+fWddvBH8glwNQBSDa0hsCUOANLIyN+dcHJW6lid8
	 D3ClZveEftXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD8F3D5F9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477149358.15372.17980057736732624242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8672b55eeea2050c7510ade704b552aa65fa0b9b7ac065977093ededff2f650
Date: Sun, 29 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774771493
