Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4216B2EEE99
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780997074; cv=none; b=JLTTbRCCEeCusnaMnmXf0LnIgbDgnMaP6xd9hlGxZP/qWM74q5lX1vVFJbVhMeWfrxqptxOJXwr7pYdKc0w8DQ/26S2tKun/ypSPQMBTCuP3FlK23N0fRwxy6SHpm4dGjC9orMOCMa7vNvBiuIUNfVbqvfqrsz7SRikhAhNhZ18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780997074; c=relaxed/simple;
	bh=0B6VO7HdQiqVtUgKEaBUYr+dmQVjWyFVSmb0v+aGs6g=;
	h=To:Subject:From:Message-Id:Date; b=Q3oEEQ9ursaLFMtfAAgj33vx2DGYcVZJJ8+P6pSUMgYgKZ+um+Kt1/G73GoTyKAQphe+zHMPo3kLO8T4KXHmVmPo/cxrjE9oAHZwufAM9CtWPY8PsMqs8Fi7NgA3t4pEq0Z2VcnkeRJiSmmnxtO3UvLAMc372+og2TV6YshB5SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Djh9tRyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Djh9tRyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C977BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780997073;
	bh=0B6VO7HdQiqVtUgKEaBUYr+dmQVjWyFVSmb0v+aGs6g=;
	h=To:Subject:From:Date:From;
	b=Djh9tRyEe77CIIFo57MAGY1YuTqcBPzD723yk2ONaKRoFm5jL9PIfsbuaGVvmHBoX
	 ev0OKfZHDicqYCqsXOwHiMQKiK3Ybu/oDs4SvIbn7scgzEtONcmDTfm/MaPuJB5Xwd
	 98S5+WKoVOETGE2xV9KBRZ1NDxmDYY0W5UXNWuaE/bECrneimvFxSxFmhfydCWekXo
	 QMIyZKjHlCIQj9xvl1PTq9rFmJMI4GeFnJgJJtlKkd2XHpNKTCZPGxoO0i+EBSbTBx
	 0dI+bmtxWbfO7m79Ypmpln84NGRZ7N2CLlQiH93PV+RzmkKtxqJq+AaBeyHcZhDUOW
	 TpUDbGWSK1X/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B7CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099707370.7138.7292713480937713315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a529a5b9e5fbffdc5ff8baf2bb9db7ab346dc205166f006371e7730f89ad44
Date: Tue, 09 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780997073
