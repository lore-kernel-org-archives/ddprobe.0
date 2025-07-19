Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5272D171CD
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752963594; cv=none; b=Tr6KoMNkOLRbH7zfpz7Gn/EG2LzrmJpv+gBNhzVwFdj6RmVsdwMzNE+oN+/n/jQfBtFWSkZSYCLYpB+ta6m4wzaC8r3v3oZPv0kaAKpXv+0DPdA23MI+nMwOh1XvNy7nYZIRBnwflYVEeZWqPRM1H7OwvznvGnuQc8LBmkXVhtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752963594; c=relaxed/simple;
	bh=ikYCuR2VBa6IKnQpugDLEFWxDPif0bQDunEsxtk5+Z4=;
	h=To:Subject:From:Message-Id:Date; b=NRnJEI90anPsz7G7LBaB2TcwmNlzITrkyFFcejjea6cplncCe/hBl9Bv9D1NuPY8KA5W1nMYDjrRr0ASwOZO6KRA7sXUfDe6p2DtbQc7FQX+3gGyKssAtIuIjhurjahi5kVSfGU3gUyOYV1LUKxv7B1UO2s02prcKDfDJXEPS7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtHD5tHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtHD5tHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1EBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752963593;
	bh=ikYCuR2VBa6IKnQpugDLEFWxDPif0bQDunEsxtk5+Z4=;
	h=To:Subject:From:Date:From;
	b=VtHD5tHOzzqLXkkjXecFAI7225v8dAnrnQOfU5uqPj5o4kmmHCLz9Wy/uiFSgeMXp
	 X2FbVLD30wsKy4RgIlJV5CtefFBPc5h/MBkybP5Wpbc/GRi57Bic7NrQiFJPioZEBG
	 96PTk4/wL9kxuUql0pq+zBrWWvmErUM8xj9ynycY6o8y2OgD+Et5IG65vo418TxrKS
	 YNiLQr5ZJ4fOmYUyfL2qhySnwZ7vjUry6L9UmvRs9hrL0mQE0lUVQcetFSnoVmO8vO
	 aD/VA0HQB7pu/hxg5Q5ngqUMx8XwCNC+geEVdGY8/9Q0Tem7Em0dMZTgkfkUQaUMLt
	 NA971IgcGceGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95844C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296359357.32240.17552259526135941109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ce39f314483384c67dff20e0d7722092b12c27d91042f9a5dea2b96e2edda5
Date: Sat, 19 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752963593
