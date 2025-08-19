Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB89320CC1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755599994; cv=none; b=okzyFv9FhQpyDaSr4kLTsPvBDtcDqfaP6T5GV7HcigWztvSB8Cicd3Dg5NipenoejPMt1rOsmDiN9Wv87xQXLQj0Sp9jo7ZzMNSR7VNcCbIT2P+PVMmNRWovB2JuAKruXbCS45mhtsRgxDkeMZTYv+mJfvE35gajTQy0VH+yUyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755599994; c=relaxed/simple;
	bh=HS8DkKK2+Q29oFt+Ayzw1nhW+CIt7lxA/P4kBeQCt90=;
	h=To:Subject:From:Message-Id:Date; b=PZ26nZqbOlCRLq9Dv0Da914szKs3vaT/8IXsWhRDJ1T2i8FGSqIZoM3o6Abs7WA9yduw0ZLBIo0f8cUWy+RHJMmFcItEnUbR0j5+2DxU+AKCT8ima0diF3hT74GZxQvgnygcgO/pdOKG6m77xr4Y/vcrmpA7hB/Z/nei1V+q5oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4iljDCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4iljDCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C163C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755599993;
	bh=HS8DkKK2+Q29oFt+Ayzw1nhW+CIt7lxA/P4kBeQCt90=;
	h=To:Subject:From:Date:From;
	b=V4iljDCfrVVEJ3xl+/6RF8EFJOnT/ZddDVMkbbDukO+bfolKpnTw+fFVxTxG+Yqug
	 gkrQLmEi4kD+kIREWKzffERfKgxdP/g7TTtDFDKfWLynfBqeE6jaUTgZPWPuGlII0E
	 +epuskqxQu9P8bnOWT3AnxjxXxHEHgAiURoJo0ACQ+XxAISKaYD8LRDgNKR60jWXME
	 3MKIgPtUhcvAw/0QCXU7B3u8p2B/bnmGoEK9gxswioczzcRsdHftDcnh2stRbNPsrC
	 4XaThLEq5ynb8NuS3mM7KuGJbKWpRMrQrysu99cAgmqEgA4BV94IX3R0+Y2iV61mAb
	 ao+ww1jdSXWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E567CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559999357.32243.14185275386329216905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c880bdd57c8974931ed63e691332023d6aaee2aa8a9ef87a88274452731e2d81
Date: Tue, 19 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755599993
