Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6800A330D29
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789788634; cv=none; b=ENiIQIr7go8IlB2+DECBtUkwT78M8P8S8BaYtGVJ/QV8VdTWednlSV2bFZL/8SglwYWKWj9MYD6sqXm2ODj/gEcDuuF6u3Xk7/pXdVDQQCdVCgLwf3gl6YPIu29TxrRZpM+XOvBcQcUL7JAX5qk9bVNNjeLQutvsR31oSW9dRYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789788634; c=relaxed/simple;
	bh=Hw8mahqRVEAbxkocsV1kBNAYY1MbbDuRNtglkCCCj+I=;
	h=To:Subject:From:Message-Id:Date; b=LjGQ73Z4sNy6SoR6ehA2QIiqVMoxcpIzPAqTIXfaHToOKzveajCl5w230PBFihYoqOByOgU2JRokOcyfrL64DfUnm13pVTsRZMwNfIDKitFM4dVLCqefEBTSbDCZPC11gB7BNEQZJLO1v99ejvFk03xufiG47AfgyfOYSOvYhqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcM0+l10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcM0+l10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3D6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789788633;
	bh=Hw8mahqRVEAbxkocsV1kBNAYY1MbbDuRNtglkCCCj+I=;
	h=To:Subject:From:Date:From;
	b=EcM0+l104YFly4PHmOmBziYfuqyI5MgFEnFuu7ngnPcQUI4uNsY1VPdAXKjg4V/+g
	 oHVW6B8P7S8z2PiCmAUESrsDctv7Gs8rT0hTm7yOLEyqJrHRDojWjUwC5TMhxWHnyH
	 vZjbpxXtFRVcNr9aGrssQN8G++VRDGOv6hyeMQEQUItBzdSVyOvvPgfft9+RcXhRA3
	 xAOuS1ZIMGtQHMNuua0Bk6jAxM4gnzvzlRWucbgKzHXPRQe6CjvKknsBc2/UaKukU5
	 7OIKS42hpwRfeDASdpYIcQmojQ0SZSkY2LuKgxz8HipzehDKr98hWKy9g8Vsn1yK5D
	 dutYgn9OoegWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAABC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978863369.10257.16916611921450409153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf3fe87c3e389f7ee75c3eb366067a272275765ef7f059539fa3bee85b70155
Date: Sat, 19 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789788633
