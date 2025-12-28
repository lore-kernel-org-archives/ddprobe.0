Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D608BEC
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766925234; cv=none; b=pcpmw2eIAfAnidN596Jl2qYvICekHEB6Bryl3JsQqy/13QLzBSnKRwkraNPgRlZyyKSS7zK57ajAEpQKYJhv7dCFQKMEBnnU+UJB+PgQQCLhHIUzdoCJ0z3n+dkb806dYZqsGdoTeYe8con3j8SQXGE94JhD2t+tI8c4kyhZVG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766925234; c=relaxed/simple;
	bh=2Y+av4TKpmYFvEwvDtJBjjLZACA4zcmXfOmefgMWF0w=;
	h=To:Subject:From:Message-Id:Date; b=dpbsE6muZ8vlDv2GTcrlvxvtKaFbqDi3FXvYGRuDiC+5jw5+Yfefk6AtBlMC9ZGfSsQ0C7+G65Nh8bH7XILhA6u6HeGkhlJaH6qhV7239JEvzix09li0eJbHetHutDaAgf6PMqrW6+7ZNwoc36GItDUvXW6lEHSpdK+9a2UZdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrt9oU0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrt9oU0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766925233;
	bh=2Y+av4TKpmYFvEwvDtJBjjLZACA4zcmXfOmefgMWF0w=;
	h=To:Subject:From:Date:From;
	b=rrt9oU0Qo9YAg3ID/prs6CbhXatbaZvm9xOyMOuFwZXckNgaK/ZOnhuhySGSpp2Ht
	 nLKPXpAOGg4Uh4pnNGIVAUHK+pwRsjjK0+8Y5Jhxau29Rd1ASbUVXfClBU64lLc8C/
	 741VNAB/n3OE/x5RCtKdpFRHnofXZ1TaeXtP1ymfCn3VwqRR4umagpkdnD7Hr4uLx3
	 i9HIjHQV+vEKSm+RWBpbnVFxRSjh1Cg4ngAB2lP92ulnwBlHsE61477+bHMOyVnvlm
	 5zdGOT21CrvugdNsOkLmOmZaCE0MD1yPVnHmNmsD9ORGx+KjaH92JwbJHQNbJEQ6kM
	 FpB/U70eseGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92840D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692523358.15289.1014555638500570227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13278128a47c5b190095ea2b9171c27aaeae95ca9b108e0efc6146f3a98e2e22
Date: Sun, 28 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766925233
