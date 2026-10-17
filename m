Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A585E4F5E0
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792212034; cv=none; b=fiQDk0G5fdmpvxoz9kwjX2wPv3krdUxWWcyW9mUW+hyOsFuJQJFYJNkL46Z7Fln8GZuCbM3jTzB6qirXessE9VLg9ag+b+APHd3iVMoHXXv8I9YZsa9QGsS6/ac1H0h1Tgth0FLV0FM35klsgWyrrE6EhXeb+b7wDlszU8Sn7oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792212034; c=relaxed/simple;
	bh=NSfy5QwLGlGRUJpJr5N9PizRJdWevOcglnE+/W5bKHg=;
	h=To:Subject:From:Message-Id:Date; b=s5I2vGO18mmbZUClajhBZyjWLMSdNd3zxFLwtcBjDOxOKQA7eEbKG+yai7R66vyzpwCGaCTv4oG4dEA4c9rBGyMW1IiuFS7lUn+2hwlvhVSZ8BKgLxbvQFFvwLkOydDfo1PKGBub/WtHawYQhC39KrKut69vM30kiBH8EVmz3mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP59zC2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP59zC2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10FEC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792212033;
	bh=NSfy5QwLGlGRUJpJr5N9PizRJdWevOcglnE+/W5bKHg=;
	h=To:Subject:From:Date:From;
	b=QP59zC2akyHE7l6nwVDKANeCwySSi2gAA6sm6FNDtE1tXFB1OJQ1vjIpjzlMAUJa1
	 uRoBUFifly9fASQc8435IYjlrR0jrLONbDaB6j3lKcS4QBxj0DbiJp+RoIDcNvQ8+X
	 tjbQzj4z3vqQKPLFTfCIlvxban3IeZD4UtaKVXdClvHd83YUdZm+3bPICv2iinjrYY
	 PGnHlLg4iCiMVChrj/GHOWkvCQrTr5xcPlyPwG4tnH6kscAolQ32xJsLwK2ZGlSh63
	 UUGw8xB6+jNgBnnQECE2y1V7J/z+ZADm2PQKExwvlybnXVBi8Z+BfzNHwxc5bIJeKX
	 SihOgzG0IcBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF7DCCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221203373.4164.16037453232465769165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4cd5703832bbd344bfa737bdd2c9172f88dd49ee61c410a5ba71aed5cbd9c4
Date: Sat, 17 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792212033
