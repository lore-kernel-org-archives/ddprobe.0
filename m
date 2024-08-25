Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F59372
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724544954; cv=none; b=NAm1yaAwVunywgbMwtuZn9M0DSOsjimwflRkYbIMsP5WuE0t9tisKIrBhQWYXsvvoehnAvz8s2cMn6fsOpTt5rk4w9xELthwjjL32MK/uxmL1Kt862qJRXA6HsaM8w7E9KMC95dh0Ed2o/xjx+XoFiGlLTvWGdgQENKC+EJAQ3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724544954; c=relaxed/simple;
	bh=ScjT7GEME4mogjWyDOKoTHeY8XNHEwHLvMYpcgPGDHs=;
	h=To:Subject:From:Message-Id:Date; b=MKRUQe7OzSe2I3C2+MFDhEgMB9p5xgqhL0ZI+cpi7o5jnOk8AZwAQpO3qAhJQtgVaSVZJSMIkZLglP17+A2R94YquaQFJpqXnydlmE8Nc3ukgaoWILKyOcRH0mEgCMsYqISQoNEHh3N0jUizchUFrTHVWYJDZNsUK7v4hajOP4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGQ9FbWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGQ9FbWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D83C32781
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724544953;
	bh=ScjT7GEME4mogjWyDOKoTHeY8XNHEwHLvMYpcgPGDHs=;
	h=To:Subject:From:Date:From;
	b=OGQ9FbWExG+yz5j49MOMKN940vaxfmef2o3QTzlBItI3C8Azkf+fKexkQhC/UfIdq
	 N48MQgSMOJlyRZwGLRBAif34dZzqNJgOmJ3rG2FXITn/eHXhHH7kuqwPVChUTmrgsQ
	 bWc+BEv7opPOkAueMiqqqPHnTFn5VbCIYdoLCyQa+kQxb83vXyu3aPUeEg9po+XnsT
	 ZJagz3+6nt178eNzEzcU/PSDoW6gYwcyB73BEz+X6WST+wKy8J7oAu7bzqSPt5wKvJ
	 9+oWXGLBBfx3xUqNmBjliZvXUD0RvaYkQ83RY/8sH18nR9ULmJdaMoAT/F48+bDmcG
	 Tw+GX1FeTt2Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3CDC52D6F
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454495360.14226.12909011585349698445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7151ca0d14f251578da81b42196639f7be822cd337337ffb1cd2f8718dca5016
Date: Sun, 25 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724544953
