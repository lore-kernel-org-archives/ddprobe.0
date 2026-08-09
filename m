Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED9D3C199B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786268436; cv=none; b=EIjW/sPk96DELjytbqacbO9tLdo16+6uJnqSv4N7ODWDIryVv6EQSJ0LoY+pqocFMqkkIA8ahf4hM+hiRkzmcFNhDRBccQgXmvDSRmkB8+XdkWVWMZLw8zAVnpS7k07oLMnvqWKZP49oQtQtT+5h0tlIu1PDOtXCVAeWMfFaTqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786268436; c=relaxed/simple;
	bh=MC9xUY0mCQnWiv+eFwC4DyCjsPRFre5LPePkQyTb6H8=;
	h=To:Subject:From:Message-Id:Date; b=ReAjZKpS8xPCtiDGHTWmmA5m+RwOVQV1HxUKF2f+F0ucQx4m67r7fa8mrr0AkaLMoOdCu11daHpoYMDtUhS2J42lD8o61KVb72bGKoqQkw78g9/rPHl4DS+kQqJH9X95b23nPI7V0fcemSxM+2bycPTqOB4FY0y6RczLKxgfPw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvwMp5eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvwMp5eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4FEC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786268433;
	bh=MC9xUY0mCQnWiv+eFwC4DyCjsPRFre5LPePkQyTb6H8=;
	h=To:Subject:From:Date:From;
	b=JvwMp5eGsxxzaDsA/N+FYxJZa1IVqCugk5QBhrYGsQ4M4X2/nCn3cMYc+9Hk0qbGm
	 U7K7KTM++bGyZqzNYhJm3cZPOrkK+d+XTR8WslsZP4lV5YRXsjeGzy8yWqtqneKSr9
	 si87idSZiOnYbSYQFRWDNkMhygwCAULtI0sGAZFfO4GLYn7BKO77m75jM5Cf6QGn17
	 ck/xExCpRul2+Hiwv2Xt902lz2p8xZ+Hx5nJDVNpcIEanpN7yZBtAFeXmy+XU1pwE5
	 lqOXI70BHa1QHqX/VFWWgdjHHY5uyZca7h6bOXj4uldELtNcfbDgl4Cgg8LPF6zAH7
	 oMw2Pag+aPo2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CDC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626843369.27842.13506931439814051860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdce57770b0ebf280f44b1938895b181b12f1d5ce1fea5cd7ea8ce72499507fe
Date: Sun, 09 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786268433
