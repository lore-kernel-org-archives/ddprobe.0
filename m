Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EF1313545
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771631094; cv=none; b=ev3YQfPucGvoi4aUJma4C0L4qKp5q5zLWBJU8EjQBWjiw1feoWcoNHPfdJ0flQc+6aBs2ln3yRSkf37ww8QcL3qGrMepf4K+pVY4wAeKMb+f9m8Kptbo4MEWJFWS2V4EBIpDCbkuuwnkGd4DBCfIVti7ilaA8HTLkJnxMR+VfgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771631094; c=relaxed/simple;
	bh=q4pP5jBAgN4eyLaIKtv+KzfOY0u3VbIgPkcRdq6g6wc=;
	h=To:Subject:From:Message-Id:Date; b=u3CYtb6lG8l6i2ETCptM7A6IhqlYKzMGv3SFjwvmg80pQZ5BDcR78F6HrzOygRuNV60Ox7K+LLuGPyBvMolS+wbab6yXORe3txtHWlvZb+EROTLVNT+kHJq0uqkvsAF5P3RjcElj6uxZ+3cUGYv08ZNRys+MdWdg6DrLkoQJLwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ixk+Hqrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ixk+Hqrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B13C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771631093;
	bh=q4pP5jBAgN4eyLaIKtv+KzfOY0u3VbIgPkcRdq6g6wc=;
	h=To:Subject:From:Date:From;
	b=Ixk+HqrlL7WYYAtxKt5dKH+K6yR1ocpGyq6xgJeVn+h9d9mhzSgOChaDIlObOH0X5
	 iFa3CprrcYQD1EZPJ2VzMZ3ZYKzqroKYxlsNv9nXJ/q8rCc2oJcQRys5LQ97MBNq4t
	 U14aNUAN+RYlfEUQSIowmPc0n8Sa4xjyaG0tlwR4Q14vUl1TCmVUjagwKBGllCtn4Z
	 uLWWKBhrFGwtQTMJmEo6QDr9ZU3xqYOlFnZrv0eZWu9qjCc2MuI89r/jkVP233IAd5
	 qx0tZWsWS9jNAe9rBxCozYkNbEhE+0luqqcDwZME5udFkipVnSftgQB8vV88S+Da//
	 B0SUU1d0MVXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C4C5CFEB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163109358.23946.9673436743182214883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbcac31373d2a5fbe8d016152e0e69551fe62c4e7f76c8cdee8e9d769868477
Date: Fri, 20 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771631093
