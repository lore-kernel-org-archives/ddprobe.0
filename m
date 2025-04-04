Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4684C1AC458
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743758994; cv=none; b=iWwQEnGSeQTPNuU/DZeOjgnhnfjOjwVkOs2eDI3F39y/NfLM5tW8aZwCvBIv5oYSgfTykPpbjTzh4U+RfBgsweZAVGkSZhlg84LhgZLLEnCENLewKy6FSNzfoeoS8M1hNE1ys59HblfgqYCQehPmWnpYseNfc68mCJQD95ucf3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743758994; c=relaxed/simple;
	bh=oDtGrbFpGiYlsZryyl+iATMnnZQD9MgJ1Yt6WuhWyIw=;
	h=To:Subject:From:Message-Id:Date; b=eGw1gvTwa8jMwT6Sx++M+OwWErzsbLOR8KyMMzGkvgomDS31eP2saSh7h8PoOI0GUQrZWQIU8D9Bd9UkYJNrsa16LOpISEwXbYWwuTjuK5ZGvT6rUqP+tF88QDn/65OyHTUhKVHYdHHms2DWWa56eUcpcV7RowB3ybZytgutez4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSFYQ9wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSFYQ9wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B48C4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743758993;
	bh=oDtGrbFpGiYlsZryyl+iATMnnZQD9MgJ1Yt6WuhWyIw=;
	h=To:Subject:From:Date:From;
	b=kSFYQ9wFSDjNW/4KQRypWEYvD1ZABzdeJ+bNHRtO2vKZF0jpZ9j6koRV9S1lZ4xyE
	 IwZnvL2YSw8e7I8iRBisH7BV6zaMA+NSIR6DyYHNsa8oG4H+ti4fadxVxctHAKB4ap
	 qIy6Il52zRuotcgQ+hSNpadloiZtxNoSRZ+tFEjzlQzES1aY88VuVO/2qXvvuZXIpf
	 puT0QnNi/rsWRp/vfzRDm6LDs152k3X1kCufaTkxfcUvUGipvpkHzj4JFL27aes6yY
	 PQY3LJIb8SsT26o+9Y76vV8hRaIAT7IrAl3v2tQPZ8nljTlFkh3BdVOrJwsmYz36Tx
	 TA7LFUkczX2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD9EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375899359.28140.10869269697298838469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d797c4e8ede454df23e006b7477e0ae7efc26a3e130822672bf96460239731
Date: Fri, 04 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743758993
