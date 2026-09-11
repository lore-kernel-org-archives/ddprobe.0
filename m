Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6612E2F3632
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789098634; cv=none; b=d+mKSbU70QdgzeoRd7dsUuNHKPpEh2wlKNgvObtyQCnO4lgHTQ+2CaF6WwPI0WKhJco6JyPDBk12L2xzkHGm4ZMyizbFVGTpYEyD0vIc3sqDLJMqWPG8yvdB/IcU9pEKopJUbS7LIwSLIB5TJcHJHn8DDCLUuJ5ecC2vLYQCytw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789098634; c=relaxed/simple;
	bh=u+JnMb8NUHdqFjhXcX1heOex7P7r+Pw6Wl4WI1FvmCw=;
	h=To:Subject:From:Message-Id:Date; b=VOPAu4IsMZyQavigmkmILmvXAiocCCvwVpw2t+aP/cAAQR9dCKgQgXAazyc6+GAzdoSOdi+LL/04Y04WCSVvWl+b/ZLiviBY2x2IEuJj5QxbWTWbkTz4ARCOZBWwAqxhrpFHDSawhGCOH5K1sSkX9c447crLLBpfvutZj15bQT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY2wiTSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY2wiTSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3276C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789098633;
	bh=u+JnMb8NUHdqFjhXcX1heOex7P7r+Pw6Wl4WI1FvmCw=;
	h=To:Subject:From:Date:From;
	b=HY2wiTSnSE0s83pd3WDWUuSGSIbRLIhdeDi+udL7EJpYa252Mpz1bpUhY+LwK3j2W
	 F3DGkNrjoZW6PwRvvNosIUmmg1Q9O7S08/QKJ6q7SbVgQgtkgiA31O/CDJKWStygtl
	 W2DodSiF/1Zqo+DkXiiTtXLzrv35tCVtGJ+XMA5l+m41bZ+aeiqioHCbJQ9lOQEHOV
	 sX3Td04tFcGImtAK1nxzGGEyNnefHaA+sbCrAmqoMP/Hxp+QNrpTz/VpHhmIz4SDBO
	 qbsbDcrNxBkFHRWtolrXukQNCYDtc4G8p/81vME88tXuOKamzBU33OiZPxFHzxxMgY
	 7y/+7FUh9u6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD606C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909863368.12367.9359221741343149050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db97374dfe122aafa84322f1694ccd20f7875b8d52b05777b5695574c6bdc9d
Date: Fri, 11 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789098633
