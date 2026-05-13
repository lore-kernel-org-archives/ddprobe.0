Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E265B3A7D73
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778660435; cv=none; b=IW/T0cvYNAj5fBw8p0QChC32T2FpH+29Gy7tDhDrFDzQ4sq42tzWQxbZB3Asx4+hmWwdHTEkO+Q7O0dCPliE24zcOyekCKbwNqV7vHYDHuQBOzCt2FDCloLCBTAR4iiibC7AR8SnT0VqIq2GqEWYdL1ioBwWJWGLSzUs6qmZmI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778660435; c=relaxed/simple;
	bh=ZgX8nP7gkv2Dm01i2mvTmgZywY1wkeSNwIbhDW8fwAM=;
	h=To:Subject:From:Message-Id:Date; b=RrJ317Op418dYegRew4s1drkVP2tb3F4RwbZcxwotB7IC4uzbdzS0Yghbcu1NlS+1MAGhhVopaSObEr++NKFx+F5nEC0vRnNOfKRUdXszMeJ5xb6UjB3a+qZWDf72hJ5+CZqHfmC/j4VqNgOI45V2N9PNt9yXORp/v6QnIncrnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnQ7lOGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnQ7lOGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B57C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778660433;
	bh=ZgX8nP7gkv2Dm01i2mvTmgZywY1wkeSNwIbhDW8fwAM=;
	h=To:Subject:From:Date:From;
	b=CnQ7lOGgAxiNrvFJ2zRw4M8HTh+5xoikCm0GeuNr7J8Yp4HQcQKpws5gn6ts45Suu
	 6Wy2xRM2kpRdaLZsKAC6nWJRD/Y7QbDlthn5qRuu21SSUphQ5G50sFJGUTdCPV93Ny
	 aazJsf1iH1u8fnhZZJulIwRE70F7zsczrxHO5KmIYAOXcZXOE5muXAy0kgHm2NaTaM
	 2PjgJTRI+OVoTI+8YrV26xzfnWILFSuukR9lUN901HbXNp0b94oj6byfYvGJOPx1DD
	 BJxCBz/6cJCKBYBOEllt6ZtBfsCiW43lPcrvk23QKL4381Rg5bkpX0c5kxKvveLMk2
	 XVRBREz33WhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA96CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866043369.11462.12138086713751489819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0c0ffd6ba958b25beee299ad78177cd55901875dc24070c1ec74b837040f8a
Date: Wed, 13 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778660433
