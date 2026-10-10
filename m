Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5BF35A398
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791642034; cv=none; b=JGjcCiTRz3Log2S9Ln1yu3QEEu5GcYak3WTTXG+xQElW6nwVbndEDBhU5cJaOiR4Uhju9A7Nq/+a35QR9WjQBHvFJWiQhGTN9IFdB6RpcEEjoqIkLg7RWqs6/2gn13l9rV/UYazsN44QTc2lVGZNhQNK4kRzHHBHJxKoxLfg9rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791642034; c=relaxed/simple;
	bh=ekUyf8UnFdnKNk0EQ2poa/AlwI2ZeUpuBI70mJh9K6s=;
	h=To:Subject:From:Message-Id:Date; b=LlLNqnCv4MpIFxRjLqX8ADqBicw1bjPXDnUcghXGTejnpvmnx+c0JVSczuH1ZDAM0jHjHG9BNUR//Vcdns8CsFpR8nJRPnC013JaLEnhDG+FLMc3K+w9VIVL4RESxv9cH/f7iX+h0Qmrn3XS2zp7sKtqpkW9SuIZs1qqXs73tPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faWj5mS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faWj5mS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D725EC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791642033;
	bh=ekUyf8UnFdnKNk0EQ2poa/AlwI2ZeUpuBI70mJh9K6s=;
	h=To:Subject:From:Date:From;
	b=faWj5mS+j3iNVbPZUEV9knQ1CnPi3+4/FbHAJ0IiH/nFchSgy8BPvKssp4GLFmRn9
	 pTPrjl661UQJnYAr3wTnweOMWL9YWfe5lQI4S72MAxL6eqAhRqg+1n4TRBmaqOfdiO
	 UAm1Fbwg+7fmndvvZZKmX79O5wv7DpOZxxljdJP6/yE68M1Trt3tQkOUjuPZiDM4uG
	 A1G3OFJgK/wrzPRXXF2rJXhJrwAcQhnRQsrakH6htFiwco31xXqLmZLqK7Sw2lLAEh
	 Nc2ZcDTdDfI61WCyxkKI9/qxVyh3fOuoVNDSrL8vskDcQmG0BuJUFWQIKNC3sQtgYs
	 nKUViz7vuKosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C51CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164203369.22935.11321667475827147445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4787616cd273a78dd9786116b45545e1f04bf8fe19a14797db0b95e7215c2c
Date: Sat, 10 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791642033
