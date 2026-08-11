Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6E32FFFA4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786447234; cv=none; b=PRyIAzu8inkfPYWBcAobWqNEe6/nL5+VJQpaHNYJcxw0ebnFq/4tUokw8s4Y6CNo8gvkU+unYjbvvj7eboiBOXi6zoi+5VVLc4uRsfXMTOH58uBT/a/qliumKdPLhgIJOU5pBf3ksxkqBjT1cqeCn3Jhd0Gg9mlJbYaGL+pI6uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786447234; c=relaxed/simple;
	bh=5zuhN1QtlhcrefpTjoMT02R5TSUKIBMFWbDzXNMmIgw=;
	h=To:Subject:From:Message-Id:Date; b=sXQwfzafUHJuADLGF5SZUaCdS2ZifL/wwoqO9vUIZtY+A3Is4HWPYGbSRcDovfSGMq4mLjSMUuOKKDArnglGuyQs1k8mfepdmm3JYtvoUFG3LaUQwPUsjVh9xCD4Vu8FxjYSUYm575GhzNns124A27hrpxfL0sBpTybqIn6BZfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geIe57EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geIe57EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D82C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786447233;
	bh=5zuhN1QtlhcrefpTjoMT02R5TSUKIBMFWbDzXNMmIgw=;
	h=To:Subject:From:Date:From;
	b=geIe57EHStmxIeml8ucleJ9mS6u9a2/tuteiNYDwg6DLIZzAkkuEDwxeqo24K5ZX+
	 F2cEzWvOII6Qubm8qfAU2l1lOMLfO9AhQ55/mPj9XchoZ19qK4BDNUtwl0pVIfHAOY
	 tzIxZifv28vREt/R0NHoHrjsPt1IyiPN2EkQtUzgtLsmGQS0s4Lmmbgzapi1cQceNr
	 GRqsvIW/lpbWSsFp0whvzYIahVesY3HkbrrrGNOEcoHtm3829B0Duv6v3JV5PnvcsA
	 hS5SVVXtAkyq6G5IOWMjTGaPpHXUH/yZXaBMe08dhJLlyXWmX8feMYeud+3LVFLfFJ
	 5I7duwxgSO5bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F0CC5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644723368.25838.16586129337426306123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2814369901ea4b053cde0a87da7c1c21c61f0da60eb9574acb9703974b6c4eb6
Date: Tue, 11 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786447233
