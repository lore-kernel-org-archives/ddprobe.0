Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCF73F23A1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786984834; cv=none; b=tQRCn312lPb+kago6auxZUN0c7u2prbwEsO7Xi7yBBHqw42i7dvaHAFb0TSMpN1bpDYVR1GZ6DxAAc3GuwsaI7fXCtiEisHjhmW6eIXGfUR2hYKspgP0Qvb1UgFWOfgrc9MOPfgUhnHRBdcgxRf2/ep1eDTZ/9TSm0AHIH4Jsww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786984834; c=relaxed/simple;
	bh=t6xZz1UYMMDIYYSSq9yIl9QKMdW/csEkX29lG8pvrOY=;
	h=To:Subject:From:Message-Id:Date; b=fSpk2L6+L4Yln9HcyPNFgDGFkMb5CNNsacKhKvJW4LBRu2MFnRXy+1QpFWyUHpNKBV4ucDh1jsBGms4Z9gguxKTI7B6QWN1g8NaFptPRGjAM37LryXSMgoHmIXScNeFL0OVSq194MB3QpupXeATErZ72r049l5jJFEcSu/o/12A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk5upjsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk5upjsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CC1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786984833;
	bh=t6xZz1UYMMDIYYSSq9yIl9QKMdW/csEkX29lG8pvrOY=;
	h=To:Subject:From:Date:From;
	b=Kk5upjsOfd+zUykBffu+KjC8yhn0vaxrVeWqIwqIqqumCQx2xTyUwJhl7fhwLfCKN
	 jOgUXg+NSlYrIYRFFit6mNRt8bOydj/fxoM4dgAfwIRpkG0suexkPDqQnIB5BrtP6O
	 PtSDZvC8ItqTG86oXJkbQze+MhiDL8NO4ffpVUlDFYkeWzYvOfPHhfLa3x1BWDH5st
	 yNzCccoAF38DQoe64k8zE3L5E28qENvh9CHFR04oMSIOwTugJWABE8Zt7WFXCrIHks
	 qCgn54gwacs0d57Ktsl8KSvxJqtZmgVpxZFusoPg/uP0jYYB88l98lztjHMixsWuJ0
	 EtnKp/XNTYcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC13C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698483369.28728.6992131528115428497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57174ed6a16490d21a2f7bc6a8a5cb443dc395498b1b9be83ca583153146a10
Date: Mon, 17 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786984833
