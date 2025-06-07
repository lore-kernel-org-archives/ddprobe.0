Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE574C81
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749267594; cv=none; b=rywwQuHBC6ZPWU6HSxLpZXxyhOGZTd1li3W+qMGuUHi17m7UQmGBD+7NqTyeozNTEqxXGnqtLUwNacoC/esFVQuas5BlCTLEX9ZCj4nXyCkUhVya38mcGsret9VBXK7Pjz8qr43GaEAjN5GzAF7LQjU5lVJ4Z1ScpkMJQS4pxe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749267594; c=relaxed/simple;
	bh=qVKE4f2+OMach5Sb2C8TzubcBxKZr6VWfPgLJLx7v5I=;
	h=To:Subject:From:Message-Id:Date; b=OGK+h9bIutRgy7xMsFeZ3YBPxpgbPXT1FUomaBoDlRWn05tIy7rlGTB60bmPwLWXbIB+e1VXHH9uXFZpWX2uvjTAPFfSyz6l6nPqU6A2oWCQkp8v5cPSbHmOr13tKG3nfZQap63DjrTZM0pjuUgA8Pid5r+nK7EBkaf+QkyEjTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Czq5E8xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Czq5E8xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BCFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749267593;
	bh=qVKE4f2+OMach5Sb2C8TzubcBxKZr6VWfPgLJLx7v5I=;
	h=To:Subject:From:Date:From;
	b=Czq5E8xl9mUzKVSOInZYFBv03qNBeW5KeE4zUMoOQtldlI5Rq7GYOalfFrz/miqCk
	 s62zNbyNMRzAn13QgsgNrkcpQ4eB3L7DBnik4DRewVVNB5gqsyVQt8kOw77Ym6MvGI
	 20djz8mq1CJEu670fxxk11YDF159c105BVXcojfuUtNTuEFQaW/5Yxa+ndkFYfaGNh
	 MykGd8DZu8nJ+mQyaDh2Q8lwCH78+JMCBecvwG23Aa2ZWWaO6WQfaGPOjUrN0G6HIx
	 0z7l/q21b/H+pwVMhB2NCa8uvsSeiqZhPw1a4oxsQ9Yviy1slQ+Gi6jaE0PjEPEg65
	 6puPBleKqIdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A7C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926759358.6146.15612810996162757477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8de61ebf4304b492b241f5229482292fdea53f87c519a59dbbdcec7ac4846d
Date: Sat, 07 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749267593
