Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F227E049
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778209054; cv=none; b=VgKqx1GhxA8cg37WWxPFjNSv/i35XScqUciIhgvZrGMcx+rh0evSpSRl3tlUTWLRYJys5I2H9TrmTHK8pcynUVXreWIGVLvpsV3B8YVO0S0tbogACYX9J9cl8jQxn4IL+7ZgKDExiqlTSqa9LbNSWBoWmsZB1wJzlIeH9ieFYiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778209054; c=relaxed/simple;
	bh=lxrceGX05fncvMSRV833X4OkspISTgQD3qFhadRJhk0=;
	h=To:Subject:From:Message-Id:Date; b=aSEdxo+RTW9QiYcdla7uvGXxlN8Ak3r4u8ImcIYLQ2DgSkOUIgC8kYZFcxH/M6Q/PwvqJYMd/Ok4E19+uXswCOtmrYwZPigbsCI3j+DMP82Mbk7iVvUkzCSOgCEgRDDS2CuMJM17/uKfjHJHLQ0QHCDvKUS21O/bJAcxakNACJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCYHWrxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCYHWrxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC288C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778209053;
	bh=lxrceGX05fncvMSRV833X4OkspISTgQD3qFhadRJhk0=;
	h=To:Subject:From:Date:From;
	b=RCYHWrxfsXNCopO7W2gaPwmVWKrIjMyZ+IwvV0n0/ZGsAIbnQDKL0VtisVYjFQVHj
	 eXE9WPt1CjG1WjquMlLuXwnmtSVJVpEqS1jkNN8cmteXFz/Xujs3AtGvoemZOE93o7
	 sWvGojtMXcwgucGUf0cxaahVDkLSlika8QdGlUQUYaXrnx9LBH7fMpVDKJRL5xgg2R
	 NjIXi4MvbpwzXCyunX0wREC39bXtGQNpYpXymYc9wMRQ5S7UxzwmWPlZXSXlWxfhmr
	 hTrRrljytIeBqOQ7DphxZYaok4i2q0I9nnJ84d6+pqeJJZ4vAulPXVuJ+ohDdRGbNY
	 yYixZXeV1VxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE28BCD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820905369.1183.5691135546230733945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626fdc3fd7dd9ae80d53847b494f27927199f8d8c0e8b2b63837f057d7d6f712
Date: Fri, 08 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778209053
