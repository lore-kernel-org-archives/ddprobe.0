Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DC13EBF31
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770210234; cv=none; b=qCD4BZfczS3X5UywDV9UhIhNZuJqHSRfCPc+v+PGCTXvADHrxf6+boZtM8Mqnaka5VcOvuGQCxO9U8lPBBq1UqoBuEAcfNI3d9JMBwiyDCiOhl2aYm+jAYz1a1CFc0Ih3TpJdQpz93yYRMPglOfZuDJwpY5EUTPiOOGelzgUSbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770210234; c=relaxed/simple;
	bh=3YmcVUfWyhhs1YfFdHt62UEWSmSpC6WlMb6XYZQIkQ0=;
	h=To:Subject:From:Message-Id:Date; b=JA/Mi18Wx5pGBlTyP1XuzlbrblN4SGVOe8SZ2OV0EzyjSY1L78SDfxecWvZT1dgPk84Zabp3jpH69WQ29/BpKF32AmtBzXP8NwX79040I8NskA6s1umH75877Pi63Ag5qCad7OA+aLeZdtD99bKBc9Et1p6FnvU7zhZeLDq58Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og4zNivc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og4zNivc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B2EC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770210233;
	bh=3YmcVUfWyhhs1YfFdHt62UEWSmSpC6WlMb6XYZQIkQ0=;
	h=To:Subject:From:Date:From;
	b=og4zNivcQ3Bj5yho49PqGVKjcLK3JzjRRv/kgsSuYGAldCtM44VdqYmm3pTSbAP6C
	 huFNXKp3QJDK8NZUOnlUTLuEVMauTJoa5DmhTwYhB+qaULLmxQb7q0v+soJFk/tZOS
	 01x/3rnzWs+XZh77EpvrKClXGUCEwDa1ov/StrruHKuvaoSsMErZjmv2bBlupehTmp
	 zYY6H/6H3cu9q4auBmQ8y3Xw/jDWmZ7I9a7QN8yxI//1LKytCQxLfyF6FYz9GSOwJT
	 eEpfr2O9Rh7znmRcHzU949h0DNyxDDeGk1sRxvRp3b/WajMlVrPv3F9qUExxeSpBPt
	 emwwlPa1SwI4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A008FE95392
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021023364.30770.12507700892002739472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805c07df296681440a0bf51fc0a03d014842e14f5d2ea910230017a13db4a7d3
Date: Wed, 04 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770210233
