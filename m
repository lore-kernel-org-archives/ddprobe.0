Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5647615A85D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719491663; cv=none; b=GP01yiGlQOUQwvQXmARu3wFcmwAF3fhhvhBcCmRl95cLIezwKF+XcDRZmzNdV8xInDZk1hvCapDKEUvl1eQWZLMZq0XifzOyAVaF620ZajytSZKzn9RSfjzRwpIgYL2P++VBZVm0YFFpi8oZ7DPUmn7wfZnkAZ4AlIsgdSsFL6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719491663; c=relaxed/simple;
	bh=xDAJhnE6CwloVPDZOwsfZ+dfsNxBr4XkG9aC4mwe1Fg=;
	h=To:Subject:From:Message-Id:Date; b=L4tIMql198tVtUyzRGqvf8cUn0zIve5koCNusEyZnfXQZ2y4+4b7WhdgYz/iAF8iwQe5RHpHxqxrhFVURbZvS7Tg0e6jps0yPA6Vkz7Ct8M2f1f/rqDEQVekCOqB0doQ0AYh8nOsceqFQutTsX0aJIQuzX6XrGTBfwzFxOE/QU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p49vA4II; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p49vA4II"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EC2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719491662;
	bh=xDAJhnE6CwloVPDZOwsfZ+dfsNxBr4XkG9aC4mwe1Fg=;
	h=To:Subject:From:Date:From;
	b=p49vA4IIMywqodcp2zHyU+gjBvv+iR2vgBv36J4xdZMHPtDdCsmLMwcI3A68LksjA
	 NmjEzyB/J9i9Fhe+CNnZNETg0NpNy3E4b1m89Q9ASLMghTVYOnhVWy3DE3kJ9eNUWd
	 pdT66XUsN6bQpeVad41/yf0k0bKLoEvEqyYXEzRCpgGM+IZLBCPRWWchill4SVkOor
	 xqaVbIsqUK2ZmWmA6In5Tq3/y9h9K3YU9y5RPL0p4fiaB5i6QF4ixjPdwjRGkQHfXi
	 c7DpccL2rfybYBDmdSFZeAEBJXc0XEBZLW8SEoolXSlD0xnSwwpl60IleU+ZW0+QsZ
	 usVCYlOXR/u+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC45FC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949166282.23147.15277233636611122020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a796d9a857abb932a51c95b95502c7db6f2802d369e2d5831056cce89945f1aa
Date: Thu, 27 Jun 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719491662
