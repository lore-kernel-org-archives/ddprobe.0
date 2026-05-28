Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C753E7BAD
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779969754; cv=none; b=PyelVf8MIbFlVBYGmltf1CBnqV2bVKWiBFjdbS/h7C849EyGDrSBJlp9ytZt9nVJZNqZPxs8tg5ncDEsGkcgAPmlMxjMPa+TlICg5vF+T5fAKICXOsOWaucP5LPquW6T0E26jkEgNoTJtKwGOA94v5cW7jAeWSd5A82Cqmfv4O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779969754; c=relaxed/simple;
	bh=lxQjJWNCJOp4tjdFBQ6zrvXmpA5UjIWcSgCpS7BCzEc=;
	h=To:Subject:From:Message-Id:Date; b=ROBoMycJAqlfQzSpQ3XJBBG8X4ygvuPViYRESUZRD0XQmbctw+1egUvYvTAhnbCzOn93mb/rhY2f0sFE6vA4Cr6AaBKWhmQTTf5K1gkB31vCYTsV0T1qeyrGFhDezaI9sy3kjWh1g/PZNt6at0eWJmAcJ7jVVSaUX8E/pR879rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLnQ/KgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLnQ/KgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C001CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779969753;
	bh=lxQjJWNCJOp4tjdFBQ6zrvXmpA5UjIWcSgCpS7BCzEc=;
	h=To:Subject:From:Date:From;
	b=hLnQ/KgITkXt4S5QNAQVED6vVLPNuXap0fBc6CQN6S+I5Z++aaf1W4CX/nk7RwPaq
	 ZCh4NexCE+wL8zlSc5xf8DMjdezIhKNKIcI0LkIvRmB8o53DAoF4CQGtVo87kq55q0
	 aoepAxJsbejv16SSWttYL8FCFxF9ZBR4kHTBUoLyNzxR6Wqqo0+yDOHHPPVFrWReiR
	 U26o+cHmcNsuzdYiY0qgPXta/Z0N60xw8ZnXT6+bjvfb/U821W958dLlQcOX+SXjnW
	 PxLLMqmZbz3COf+o4EBHCFiIhBT81oI3ovnztrh7jnMXAgqMqVSh309jdjiurCeZ7I
	 DF9c3+TX79HMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89C8CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996975368.4527.2770620429363249860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b680ab856f0f620c6d8de266f2a6c929a34ac3bde66610e4d942a3b7bbb280c2
Date: Thu, 28 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779969753
