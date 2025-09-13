Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ECDC8CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757722194; cv=none; b=kAFMNJYEVOH025u0unh9NdL7Gr5kyIZEVSbV8rWYpmq+j9nvrvGEsCJmpQG7/nyjAGaVOUPCHDF0EYcdoQvkxZlu5WrMOALy5yyPmCVQ6hKfOfIiAaMjLUB3Bh8daXDed5tmA8NaDb2PDzasMI5KFqGzFuHRW0U1VQS9KglPNss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757722194; c=relaxed/simple;
	bh=qvfjgKEfPrRxaVmDO818mMy/iGtnvSAGx+PiXY1IP/c=;
	h=To:Subject:From:Message-Id:Date; b=cr1GbzHcf8aHLeWqOFjUfyeX20Nf2/JVJRU7j+tUbI/1ti0rpDq/48QBdcU/vKSEpxBblDWEcZxJLJEUt0rXc7o+4daOFRCRA8W8+BWogELFw2uGnCFARNT2K0W2djCKMUaCfCCCxTkBZoSlRubq/13IA6z4MVPCLlK2eiTiNH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYC7Imy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYC7Imy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC62C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757722193;
	bh=qvfjgKEfPrRxaVmDO818mMy/iGtnvSAGx+PiXY1IP/c=;
	h=To:Subject:From:Date:From;
	b=SYC7Imy04FY6z1A8lwxImipEDabF8EnznURpcgPVB/lkflW+SJozes5ieWRCicBSZ
	 cguOgjkIjFMBUsrZ+5O4xcq0HH6ARJynyVfS8483jdtx/YSyD8JLVCiKzLehyRCiWN
	 QbLiu988Y9Lm3HEV/RhvCXiB1fTZxdlkDDK62NTIMUZF7/v1jbKm3KbQqHMiQHvhvI
	 piujN170w0LNW4AdAaY3Yku9kyQ7+Cw+/tuQ0AwFfp4eG81ejmR+iOQLrpBknl2jJc
	 EwGXqz0dnJAOXzChb8xsIJYkk1eExhxR0OYhjLBuUpdujTu2Te/od/+ZVueKIjQkvc
	 TPXZZPbPyrIXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62FCAC582
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772219357.23952.14314740348316724226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6853e892c6d7430cf0767bfc5b3d42a07b9b22b63a5deaf5a26a314a87e9c71
Date: Sat, 13 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757722193
