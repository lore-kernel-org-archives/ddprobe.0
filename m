Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317F7AD2C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723509954; cv=none; b=XA5zg/U4sKq0er3e/h7gLov8wHyvafWTNx+QJd2P2aWd9T6o9gkFV4iwEahXOcM8Z3zuhWfziabA261yRzuulchU8ZugWwiuw2UmSls8ZqS4bS36nyXGG8xYVQeMLfFrT1lxPvOaWgc4w9Jg4gk/9mN7vVTTsvibhYLHK9fMgrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723509954; c=relaxed/simple;
	bh=m56JDGyRuNPvsKcDpTeE0qutjw6e0L8M33SaHWOaRfA=;
	h=To:Subject:From:Message-Id:Date; b=DhCDktv86CyCm7FgFHdVQSIOtSmF74B/uZ/HHczo0v+mi35TM2gJu6/3HoEg1iL5vlejTwJCy6/zxlBBdF+PS2U/3LSDz+FuczZXxuVQAxNVFHy5JyckrNRXRRVnEw6iS4r2KisVOOYtB8Xd6wJZiT10Zvs+wZ1meUc+R5QMfNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skxxhw6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skxxhw6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0109C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723509953;
	bh=m56JDGyRuNPvsKcDpTeE0qutjw6e0L8M33SaHWOaRfA=;
	h=To:Subject:From:Date:From;
	b=skxxhw6G9vKNLFbI408bYHJx9+GLZCP8SKagWgOJ+rybA6ABysYHRJ5kCtucTwnf+
	 yCEu6M8TQ67XCSFluz7WjXny7cGWoH6USTHTNO6orHz299wWzZkkQydXi5S9nKIeP8
	 JspjRBHwzOZ+ijvSgWH8Mvu93CTdOEMnKBvPb2eAkVLqchXidzkamYhbJfyN2XLLGK
	 v1hkt4i4akdSZRNIjIe+HtsWK2S6fAx1h9lGXxCg1CA2Q964ThAPxUM8DpuntSq2pO
	 01/LwV66cZ7Hw29LKuR4mqlia8UWEo3mu3zWtQRDqm39VIkbKGiBkLo1DlvytzEwgW
	 AEe4/qe+b6cSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B2C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350995357.13522.2517650023960510532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3b925bf00cb6d59f9a8d69a577e735a62423c34a34e5c74808cdc14acdcc3c
Date: Tue, 13 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723509953
