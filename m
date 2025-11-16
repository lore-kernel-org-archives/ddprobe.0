Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8343C1F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763308914; cv=none; b=Mhv59mtcpZMxSc9lxGT2kWEAUI83xlVvuWtwxjMKb0IlnxtLtCA+JcQ3XnHZtGxC+CZ5w5SQdhqf74ruyECmoSgmwT9ghfb3q3AIIF5D5l6vzQ4M8rFyZxaHwfxb2k3+RrVfkjpNRGj3xAUUEf5B9546/5Agvd/u96C15e9PZ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763308914; c=relaxed/simple;
	bh=7ijFgm9gqFM784uRRwEm9/n+ltlcuuMtgLWsuhRUrMA=;
	h=To:Subject:From:Message-Id:Date; b=RmHP/POjsI5yGJNqNR7kykfv0ZApmdZHMTD15vUGX1CJmAr6erVSIJLF1+wCRje/OSo3bvTPJuAMOR+/gGOq8uX0d3PGMOvQfPZpZ9Mj15uOHrGG6Wol+5meNJA/QFC630RSRsVt2DxPaYfEqMVMU0KklAlYh2oxAOvTR6DvhD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcSogVpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcSogVpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF522C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763308913;
	bh=7ijFgm9gqFM784uRRwEm9/n+ltlcuuMtgLWsuhRUrMA=;
	h=To:Subject:From:Date:From;
	b=pcSogVpXSEBJ/JvI/YncJNQVK0+TCG+G69PsEjC+BoNaPoBqvCJqeAqht1p93ZF3/
	 3BY+/YOYwZsl1lFXnf8fVlnBOUUaH74nbLo0T6fJJcPc91O2X7iFruatKWyn+a0rb4
	 iPixdaumrqNdWQK/M+LnPafc2US/U2gxPhtDpb5eAGQQB7z9DM0qLBKGfgNyrDkyYw
	 hpbMsr1GyOPqLf9ryafz8iETs9L4ILylg44xuVoHgbRR3ZZyMD1VztgKnM1KrrRyDB
	 6ynH5zxCqJ0iqOOAnJKUMH3Sk0E07RhYxKNsLpWc/bLO0UK+dCOifuXMCTpU/XFm9X
	 rf2bZjkn0iWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E7CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330891358.21865.9427844028825013791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4152bf255aaec9c4acae6936612f1a0959e40b7a00e218bddd85b6257d944a
Date: Sun, 16 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763308913
