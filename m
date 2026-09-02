Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520814746A5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788349234; cv=none; b=WShdCniL+5DnY3R5Mby5Tv7sP+ZTYUpFOr1o7VCEBtcikpHyWtk4Max1BNmpKFVezXd/aCJfLEPiORabX+aNVQpagmINdP1tehy80FQUHFli7Pt+iV0NpDP69vkDaHaLbrcSZekeZrZjrfspqQiXH7X4n0g8yBYV7oIMjt7+S/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788349234; c=relaxed/simple;
	bh=2OeK5u2ijX2OWCqbYn0Z/qOrBumxe0HEpeld45Is9as=;
	h=To:Subject:From:Message-Id:Date; b=bsdTU9KRAZ/O8iRvBlPjC9Cv1MKayblKpfGPFooxrPw8F/bRlfUocN27yblRlPjyYMIZ5k8SK5g1+xGmXuVPwE3eiiFV4DA7+u9/GqpHV2fWZ+icB+RI6yH2W3Q4Ew3VysAvF0HSWz3pQqTTkwexYOJkROTvS0r6RdXHanyYSOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKSCwdbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKSCwdbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF09C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788349233;
	bh=2OeK5u2ijX2OWCqbYn0Z/qOrBumxe0HEpeld45Is9as=;
	h=To:Subject:From:Date:From;
	b=dKSCwdbJnDdvBBPJhqpzB1+4lE0CsaXjwhDriUqVHLlUhzgHT+3Jd3k7y2frhhZp+
	 cBSiK7DwCRzSQLgZmYsU4FHKi0El+qJrilVNbO4ksL/20RWrGrtAOCZBHKHuQeIjyA
	 fLcNFHpICQwQ3VyzuEAnyuVwGO+ZurZe/dVcIS+Oo/yRT3Xg3a2x2ju0Jdwre6cHJG
	 1guRW0rF65UOIaAUcb5/IMqdjO5bX2teaOYoqxthEIPYgJEqw78rMRnba/ko064wtF
	 v3IbG9UG9vrXkQvdyXQjRxCYlmEsdtpawwkJN2MV/6Vo2C/nfnF56xKa6gXZgvvLA3
	 5ZJXu/oS11QHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB44C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834923369.18318.8810956544431970822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b354dd8aa4fc14a52b49d0dc558e00b92e46b749f3409ba2d12cbfb75423bc2c
Date: Wed, 02 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788349233
