Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FDC6FBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763307114; cv=none; b=SnwuM84d71cJtf2kXpEXPNGMcqDzG0TRJKZGU82zuKKvaRfQJgZCbkG+0yJxfVnzsnJrsBFX1WoxNIwBFcIKHF0UTd5L7JPIGso4DUg+h17wUu7gLGH0WcnikNmAt+ap970CuNAH5r+A760Bu4QLsj7rWYJK7B9duB7tjiyuBsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763307114; c=relaxed/simple;
	bh=rO1DXR/pQD+esyQzV6IK2JVdZEhEDqhJHCuDHxOdv2c=;
	h=To:Subject:From:Message-Id:Date; b=tx2r9hJqT0qLAlCSTDvLfbQbvuTbSj9S86ZVoBCaIFXDYK0zOWBRwi3LvlL9baz2YpHpcKu9me4O91NLbfzEhS31q5FZinMkNKpwJp7dxCkSM+vOE73QTowPGRUWsvYNetaOX+CtdBCFNr1/CRzB13KuJxSt6g9NG3/JmjtavwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZUz45l0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZUz45l0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2441C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763307113;
	bh=rO1DXR/pQD+esyQzV6IK2JVdZEhEDqhJHCuDHxOdv2c=;
	h=To:Subject:From:Date:From;
	b=qZUz45l0lRAmYenO6Gk8EQQS/GLUSscL95WQasP8l1vcTFjGAG8tf8gLdtlZ5ODK2
	 C/HkpLA4QMJrUd+ZhSh0S1x6TnMa0pbo/QDTvCaC0SpAULP+IuprjUFL80KpbuABk6
	 oBg3yShyCAb9OAlBoLi6Ug1gfEVy5TGbq/3/zuLxfUcAYy7swRmn/e1xmlQ2HFi8uX
	 ZZLkH300wAozbA8k37ojVxqP2i+UyOPF5w06d/vcWEvnQFCdtjo+KqdM5cH14a4ZGB
	 4EGlqKLDASVAylopzkW22UpEg4JRCOpa9g3lmsiZ/apwkqOsF/exjfBZCegOq8OGxm
	 6k0MiLkhUvdsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA83CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330711358.13125.5906241360427557781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4663b0b719a89d752e3d9015041cfbe596dca23b4fd48b6e3334c3b3df78fde0
Date: Sun, 16 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763307113
