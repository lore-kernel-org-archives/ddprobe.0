Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D26385D9F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778854834; cv=none; b=ZQiHo5lj6Ao0rBo17FFF/NoVzsl21u7Ce4uCEzmYglUvr3W62HxdgXlEcE8SWz0izaolmUBDlTranbv2eU1BPTnqZdaaklUfEaQpsgpoM0uaOXxdV+SBan71LJNMfp32NIRbMr/x/KWOo3AFJnIK/Hw0n8pi5uOdv6fl0t91yZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778854834; c=relaxed/simple;
	bh=9nIudivbD4iexg2YFNCcMqZ+DeUJLmg3fdUfJeZY5Dw=;
	h=To:Subject:From:Message-Id:Date; b=N98J8szDD9qfWhJQ5tVTHjju99AoMlNBGKpiDF8xPDIPZEH3CklPznQlPzv4j4l/9j6JFQYzZhW8+o+Hlz4BYoyw8XPkduAnxu/vrNTpfE1KXaAMedNOQmk305SO7AXkegJO1OfC4tmhiNmpSqOWRBmiciJgujXDK0IfUKwTFNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOFJX/7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOFJX/7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EA7C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778854833;
	bh=9nIudivbD4iexg2YFNCcMqZ+DeUJLmg3fdUfJeZY5Dw=;
	h=To:Subject:From:Date:From;
	b=vOFJX/7tTKO7LhxxztPEbvtEUrxorEMZdL7L9YQmWcSX8OBa4m+pPfV3bYPkDq3NR
	 60P6/NIpIAcRWY1D6+r4GJCctHP35T9TEDhlnxL733T9UFwRWdaUizy4+h+XrMsm4C
	 ZaahZlyybYTwST3pzmtHU82GOQGSNjlSwr3bc0lY74xQVs27KFIaqCUsHzq4J46A/8
	 xBpWkDtiMNvatukgJFOSUzTwpDtb898nb3cEZoDc5b1Ztw+XRXDlZ6c2bSY/RPsGBu
	 VH8KEuwo84SDjt4unEfc+um72Tk1u+pUPJ74UAzhaSvJpzR++YQ6Q0z0JvGKhTPg3d
	 rzb2IRyyvyB6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3066CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885483372.4224.2990949858826565285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cf17e1edcbfeb0b211d918e44f8cdaa9921dffa124f16124c374aebd8f47ba
Date: Fri, 15 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778854833
