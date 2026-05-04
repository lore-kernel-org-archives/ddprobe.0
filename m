Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7D03E47B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777856254; cv=none; b=niBU5Gbd5gqivWLECDDreoeCZqxs/H0buhIWI3+xHwqkACKhSANwsVVoSUWWFUnr8BPEcgFE30Gl4QoVnXCUNoCBeqgVox4YOfKq0LPfcEwV4NxDnJxbtQ6b3OiCsJXz//9aqriLo0mlNskn9nlroO4jK9VN31eLd/x7IXljRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777856254; c=relaxed/simple;
	bh=MVb0aAybnul94lLrM75ieDa8mFtStX+Jct6MKfXenYI=;
	h=To:Subject:From:Message-Id:Date; b=K5gwoJzorLImVYUlhxDJ5nE+174iRBt5FV1cmUEiDZ+ygcGG+BfmrfkhDvpLHibjjFDCdH0EtkGf6JwE1d+FdPxpmzsq72JCTPWFGSKc6/QkvsUMZgUQ33CJGvYelKbmUK7Wa3F1NPTUeL+dg+SPf8vAusTIfABIDYixQCoqotA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTvpuZzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTvpuZzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDACC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777856253;
	bh=MVb0aAybnul94lLrM75ieDa8mFtStX+Jct6MKfXenYI=;
	h=To:Subject:From:Date:From;
	b=MTvpuZzYse1VJRp1No0F0z5vBq2zBsPC2t66fiOVHW1WpT0WCm5asmP84qfHbkvNx
	 qTMaBZn8jTcq6L6bsR3ztC2awN98e/a0pqKldCtYJ/QIN7TVqRMj3VBdxNaROKqJC6
	 25SvXFmvUykKdsgh40S2rvd3YT6jXGEml1EMvl1PQsmNO8QdMlhhGpIcQfcn6kEBYH
	 0yeawsQ505VQpSWoGpx66EXs0qcXwapQWHHwHWAGpaIRjLsfYAs/FuuJbxZbbb82jW
	 2j4cogBDdFPOAInjD+Hb8xNpkWxf69G60pTp0AOeLvUv2VvICe7VSm2DYahJsYIdQs
	 sUyOoY9g1cUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA34CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785625368.7613.10294302385542570446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149c9f66da8089e5ded4290c8d7f769db47016299351252eff57bfcba8b61bd7
Date: Mon, 04 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777856253
