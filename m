Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B54E1FC7D2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745445594; cv=none; b=SaskntFFcRQB9bt9f5HPE0pA6hbl0TkZVOgRPJ4bHbvw3hayNzuTnXA23h8FgEgACSNeVepCaVmujCv9nw2wCVFKL9Zwflyk5oheBoSxM2Qxh3Z6JofqyFd2Ti25s6AsWuJyzX4Q1otv1YcoHHPlFKEH0F6vhk9e3BsFxb0dW0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745445594; c=relaxed/simple;
	bh=fdO24Z9b/F76/2dbfeSy5w9Nv4cuLax3hTGylRoSUQw=;
	h=To:Subject:From:Message-Id:Date; b=UL24cdvH+ph3NEQY7C0lT9hQ6ccVTk2tOgDHedIo1W0MdMw1AQquhCNGLGjEfoIrtXA2uZhq4wz2HX9R3tSghlL+s1+yXujR4ShlcLOXrhi0Nb80NuUBhmk/epltCtQzIuyQPFtbpNe/KanNWGhVaZnS1HfvvBxzl9SpCUJ+WpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DASf77E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DASf77E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745445593;
	bh=fdO24Z9b/F76/2dbfeSy5w9Nv4cuLax3hTGylRoSUQw=;
	h=To:Subject:From:Date:From;
	b=DASf77E+pl+Pye06HQgvS00vWlSeA75ZLPOXBzOoUO8+k6qks3F7EEN7yp7zUZgPi
	 RIjUPzZzCerrGk9sah+TJrj89F35Dq4spEKMGA7GWhVYWtmJEYmWn3rV1PMhafq999
	 Vb3R1uut4GROPZzilOmfa/wqv+LnD+WHF5lcmh8VMoasZc0vBM+GpQK85zX1D+GXgO
	 TNu6Q8D8KYga+UD2xu4ad9AezT+6QxUiSuexXdQ+Ra/DAGgotSHCyzXXn/5t+wzvcU
	 VIW5iAGT0rtStrVjmDi50y3C0PqbvDJNFXQ3ZNpD2oFURbvvlM47mfyLhP1f9Zs2to
	 T9XUEy/af9m7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CEC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544559358.4064.6191671598080795703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf388a16a8cb02d1e6c9a039d64e70fcaeb737d47c2ca7cc3da668d2dbcd70e9
Date: Wed, 23 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745445593
