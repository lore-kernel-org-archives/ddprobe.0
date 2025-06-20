Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2439D21C17D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750423794; cv=none; b=js14ML6ZMz57I5WTfg3ZLQkXhZeLz41NMQm/JCjhPjsZqCW5KkyKe5Q66e++yojl/9EhsdoY1TJdSSoLN9JsT9Q2JcPyobLI6bi/5drCkOchD5synBZXnbwlD5EMEMTwzn7fGh5I3fl2bBqVLX/meR81FbdqlyHoaPm+ck0rT/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750423794; c=relaxed/simple;
	bh=IdYWnmNk6E9Q+0jCOCSaod9cFUh9bQCj9KAwIlVqlRk=;
	h=To:Subject:From:Message-Id:Date; b=ZjL9t67lUAmu7h3+V8rcgkL3UuWecrK2VYYYxgmqAOov8BsG/+uwJ4NiRGXeVwHU2peEMZlBM3djP6NTWWiub/hN5GfA+mhmk3knBin37LQ+B10+Vq9FDRugN/kweicZUqWM7ygwoPE36OEBBObiGD4yRRIgcCLDxLrzN2jWLy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qha3N0aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qha3N0aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750423793;
	bh=IdYWnmNk6E9Q+0jCOCSaod9cFUh9bQCj9KAwIlVqlRk=;
	h=To:Subject:From:Date:From;
	b=qha3N0aMdpug+zXlPY9fN+sblucINMLZbQZkXdRjT0mdEGNGwIrtDzKVPRD7dGrsd
	 78OQWHPwKOG82R5QIH9RORoWld2LS+i8/BJLU3Rb+zOp1/5hdLYDg/GBKAAxyOGGL2
	 YpjdDXskY3Rm8Gg1yXOWTdjVf8Q7v684sti/3cSjxaXBt0/qFfIM5s7jl6djXuPEfd
	 MpdZ/Qf9vAKRFEPFg8Y5SnCLtvviaC/+8aDUhYp2pEzXwEHkql/XgXArSikpO8dI9D
	 BLRWV1G0mDkL476xOY08+ofLkNPDY3xbKUqsRUrd8rkgRaRGZ6vWuVJhXj+6kd3RY5
	 RKuIHTauEozdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F798C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042379357.24919.15329397874319648904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b33880fd6399f7d9fc70da0e8b7d607f0c3d7da9945da40e218c8296939015
Date: Fri, 20 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750423793
