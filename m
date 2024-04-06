Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1904947E
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712366297; cv=none; b=GPqPNeh5VI7n+cdQoCxRGAre7QA8rrQ2OWNMWWq+ayd7+65uAegNE4T/bTE5IzG1BGGBBXOvjsfCcia+YEh6VOYiyxofIq2+iVz913cY+h9Rk31cw5tFBNQu+U76THCMKA7PRtGQBfzP4gW298CBzDYSMjcHNwI5gGTix/mAMNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712366297; c=relaxed/simple;
	bh=jHO20UdlSoZKLZ4os9hycXY6Hxdn44mdbjQjiIySMlk=;
	h=To:Subject:From:Message-Id:Date; b=a+OkCyOhFzl1VcSr5j0lrbdqUUYG7b/BLay0uv5WrzMdXCLNje5yJO39GZOpVVF5X8iJmbBR+PE+Q99eNeSVYoDmleLmfETxfEzn0rlpKnjeJLKMjZvq20N5nqbYB+8mgQOBoUX0es+dafzfhyZJDZ3ANmJy24BQxXAmT6paD+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdplOk/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdplOk/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7979CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712366296;
	bh=jHO20UdlSoZKLZ4os9hycXY6Hxdn44mdbjQjiIySMlk=;
	h=To:Subject:From:Date:From;
	b=DdplOk/fFi/ZKmkB0NZGg1Uy5i+TxztrVOV0Mof4E1HMJSBInEXh2TDc1aQ8nljzL
	 k2FCo6CjNyBT5AEjCY6cF49iTyRqSbQTBSUv4/oqn8hnn8ORIiszMN+dtOv8pPstoE
	 dgF6zbYF8McCGcugpZBFV4L/jKyFbhbZNAkBgIk0xH3IAegxxLdvr4aMRpaao0Rk7N
	 RjPGEwbCETntFTBOmUkFd1eLFvfUNkKVlN6KdB2yLD04r7cCH+GcKXlbcV9YTDqzQP
	 /957Jewkk9WiXz10jcKBJQpefRJgIi/a075KoA4emoCDsHrDQ8qwAr+2a5f+u97b5t
	 5ArvFnYXI5wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6393EC3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171236629638.14162.11414027187827729728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6becacfcadb81dc6dc4376a625521c31a6fa36bce988c0e6575da3c9cbe93cc
Date: Sat, 06 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712366296
