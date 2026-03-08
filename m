Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EAC28507E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772989494; cv=none; b=LNQObkWknbDsjgICdZZGyrfOfQFLlxitEM1n837Mw/z/Onj1uZNN+OnD05qbx4tC8TuhBOc1Gs4PtxXoTpS9+GuGXyqANo93K7PbAJ8oIrpn2Y8KZ5yb61N/7rW9adRAJKyiqAbg/dnkks938RiWRBtFRZmTV0i8K3TVu2QwKLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772989494; c=relaxed/simple;
	bh=psr7W+YWyvKNHyd6QbPR2DS7k6KvmdgiyzPFinrvxQ8=;
	h=To:Subject:From:Message-Id:Date; b=b2HhQ6bYjavK/lF5RzQkS3HJvURnomQa0Pgh6LOz1Hf4fStaUzdI5yl88l3UPK7Ffz0ax5ioHnZrDiygE/IrcUgG7pTNEa9PqC7yYSdqrsDJEf7qXAyIM5yIPHjUnXC4pF0pW1BJcPFp4H6fN700gICMkvHUP6gjcjqZXFTUAws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZVGhjOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZVGhjOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37F9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772989493;
	bh=psr7W+YWyvKNHyd6QbPR2DS7k6KvmdgiyzPFinrvxQ8=;
	h=To:Subject:From:Date:From;
	b=tZVGhjOENGgUxWnu0yArxwkS0GzC0wYZuqzjhlhtGL2SFKcBoAGZgXQAyuskmP4Ji
	 k86OksHv3aNVKoQHeDZtoNrmYZZURm5ul9qD5CJt/wQDxSUY44/UHCIF7DQPtX8xdP
	 jo5fMFo+8bvsIwpD7jPUKwSuVpXiVivGRFDRqNJOegAN1GYlH4irskwfdmybKhJrd+
	 hF4bDN0KNMUxEcFc+8XPI7fB1cQYQ0CFKv8yJpqgHGOV445RAtwG4zOHqx78BA83XE
	 3R4kAythPeLYBU2GBdbTRyQ23OD0ZYmFI2dJd9tYkCc+rNuGq7Tc9ipwyPYgpsHUAg
	 +arVEV6dbK9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B54EA8537
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298949362.32450.14956102770058992139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adbe1f8874b66c52d54f1d7e5385b8e1e62f13dada9d2f85debe2e998789662
Date: Sun, 08 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772989493
