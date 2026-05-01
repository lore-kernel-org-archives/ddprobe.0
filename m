Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D905839EF38
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777640253; cv=none; b=Er5AfVwVSgQB/zEU1CjWayb5Ah4kkhOcEG8P27yjkxyF+eAssEShVTpWaLzNH1Q3wL0kdyadPkcVbuoMVcRzD0miJUMCTFxKeDtKsxNR5y9EHQQKATtWmhOfi2HOW9LiuVOg0yjlIQ88Ci4amCMnFaRXklZlesSVRt50phRBwyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777640253; c=relaxed/simple;
	bh=xI5fD/rQKgJQsCXrV1bHRKzBPj24fOuFP9e036m11kw=;
	h=To:Subject:From:Message-Id:Date; b=HcllFFAkOy/gM1T1dsehLP9F6R6s8B8Bol5L/jcATUTuyB9wilSBt3qUKL4hsGnw45c9YLKJemv7TTW5vziVurBQDzM1JMlTBb+gVqNjXjwKs1gQHEcmu67OzETPgRjIdI5W5uP4/ilh8vX7/QJEz5n1K66yDH0o5kAFmbNjp8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHisO2r7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHisO2r7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1FCC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777640253;
	bh=xI5fD/rQKgJQsCXrV1bHRKzBPj24fOuFP9e036m11kw=;
	h=To:Subject:From:Date:From;
	b=gHisO2r7Ya6dQXSvjsJPilPCp5sq6FQQRjz4yb6uan/1rxSPNEVWR326oTdAC/rQT
	 +XfUCjICt8tDAoC88FfKKCyW2lwhmkRBC64+v8LlBeFqE+AIPeSj39bPKlTfw4AjCb
	 78Rrn2T2IzhA9a+aOxszjTufzcm0ilEEGviJ0dGiuFVPg5NCfTT6fo3KRql3LBCSmZ
	 8PAbUa1MzZH3IUYl+hWa4Xx/Nct/BgIQ/2YbrF44jN6R3IxIl6ijnue3UqUb21ZHNO
	 3PUOCwVI3S+8cLDTuba/wEiw0ssLvMGJXXNDVuPvILLBDWmxtt6GgO52zkAWTqdS89
	 VVKWO4ynNeYXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9075CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764025368.17798.13090202329012178736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2929ba1a2ced6c34360fe5401fa34c166733290e8a622203b10fcd35c331d92d
Date: Fri, 01 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777640253
