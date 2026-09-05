Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43792289E13
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788585034; cv=none; b=biPsZ5/woEjD6SPcJI4mZfBLJ5QQpM6vFkFlWyVPEs2Zab4ssERkFrUFDhrW31aJkA5/1rcRcR17Y2DMvhT6XaoiaZ828QHmRhj2SekyF37ZOFCVupHDsDp8EW9eO183vaiU/qw0lMuNOxWn9euvv1VumSdjjc1eGzF6YkN1N4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788585034; c=relaxed/simple;
	bh=JztH+FykFTLk6Ha1beYRSxnwULOCUfuQJloWL2/bbPM=;
	h=To:Subject:From:Message-Id:Date; b=H6mKb8ghJEGMuif3a6vMv0NYJmG97+Lv9TcBeeECBHHyFu0TBVHJvwyJW4sqQdDLQjDW7+qm+7kQpspFRzH2y0Jhsp0zHNv2UyiB5s/L2yt55NtPV3eF6zs4W41UlVXSJwFnI04VV7K/XOAb6ntU7gnMuYOGabars1qE2uZ3SmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4RSEGF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4RSEGF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB657C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788585033;
	bh=JztH+FykFTLk6Ha1beYRSxnwULOCUfuQJloWL2/bbPM=;
	h=To:Subject:From:Date:From;
	b=I4RSEGF1g2RkR0fdTqsNMAdG3L0JGOY1LZhuzNzzqqiivEM4YWK+SViPfjFJXvr3M
	 Z772Gif3mylqFYmXHrdgzJDOW3pXw3xCK1VL/Hu1kFzg3RKqfVD0o9cUqGgnepC3Tb
	 zz8c/2OG1y0gaHOPTaqO6eHf7/fklOu16EZM9T3AYSvsPfRn1yUdFzdDWxrQlhu/19
	 Enkt8HITHihV1zRuuL1Z5NwKbelT4hRGYdrMqL53euDmc3Au0pBe61ytUVIGacfJwo
	 C8CCieP3+Bhx9IDzhS1rHyF7JVQ590ui3aONIMA3s8+SkmWXghdWvH1w4Abx3CA0c2
	 QE0i8nY1KXW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA261C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858503368.30788.4342028081092953431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2989c78e430461bc5d3001c3a2b6f2207c70eda7c3c9697dfb77f928f405250
Date: Sat, 05 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788585033
