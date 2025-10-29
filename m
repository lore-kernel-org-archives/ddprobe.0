Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D0E1F4188
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761724194; cv=none; b=tE1NG0teao+uP+xdt6Tdr0Dbr1Euxu/2/BuZ/vazNEsjWtH5xQ0qgCk4/mES1/F6hf99lDNuCCbrPOkJvy9xyTFNLg60Wjnj5et4fJ/epgxyr6YJCd9y/YpQVdlqhFGpcxc9HbsWDfacg9KgXOdnFpJSRyf9PBkxlHq0xJq1OIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761724194; c=relaxed/simple;
	bh=I+BwwinNtryxIrWBJmhG6tF09yH4i8i2uc84R42Kp2o=;
	h=To:Subject:From:Message-Id:Date; b=l6CYAw6sV+sRRYkh9n1SP6i32CKfhXsASHVEdh6dWRn8RgJkKmpBnP6PRkOy7GIzkgmY4UOf75nFWzH0TFDPAsQ41rf1meyz1V6N9PRKbsyG3IAz/n+9ja6kraLtUg0Vl0t5d2PoHgFq07O0OW+M46SG0EEL0tjYDPEVNrKjGTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbDbuXuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbDbuXuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7E8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761724193;
	bh=I+BwwinNtryxIrWBJmhG6tF09yH4i8i2uc84R42Kp2o=;
	h=To:Subject:From:Date:From;
	b=LbDbuXuB9IOwmAKb5mCh2wLWYHAPhQMq9YOgzXTWgPzah0RSohWh+iFVbwOsiHJyL
	 EMw/tgOa9fptH9IA5cPlWRnk8b96L9G7e/xSGOp3gT5+QdCmrzHvrKLDplb3tltvk5
	 IfBAPjRPKsQz3xSV8vCaGk7eieNNBW6/oXIvxvUYHIG5/ZADoiBzLbNXlTjGLEwbHP
	 a3x8kMwhFaPDbe0H6lw9gzaDnjFyiA7/3Q2ky0fT/pRX32XYDbS+WyW+t6croFv2UK
	 METkfrz1ssk+y9XcCxaW1UOgGbrZQaEkc8BANOS6hcq1SAYM3TcJBalXi0PZ59JD9E
	 OvEuoOBIvk7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B1CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172419360.24106.10157059301958878543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46bb88201849323a5cd96f3ee591e2f8606228296679504b4329dc6e0feb5cf
Date: Wed, 29 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761724193
