Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292211114
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731128754; cv=none; b=sL12f/D6btS8HuZzOM87lOP1VQj9ibbSp8oeGMmAvqedMVIzJy73aIv8HRD/AQKUT4IzKIYJpoJPoGdTT9wtO1zypRencgqmlAu0psBXMDYIfxAwWP8KKwyQwNoXjIlgn4p2kyth2hP/sQNGDDpuOpC4dD7lgsfJ/F015b5tF6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731128754; c=relaxed/simple;
	bh=EzTydUkaE7jPcohz9e9Q1MzY64UbOmE968San8DV6Cs=;
	h=To:Subject:From:Message-Id:Date; b=Dx+Cl2uc/uFUfkgOBbm6WuHQ13SyJKLpU4zw3qeJtux+ZLm+8Bt40BbokeFRcPLLo+eCiy17xi6G0QOPkOh9mBCemrNFGhLrtj37cNxcFURQcWHEfrZUzAk/jadhLhrhYgYfRm3/JGcV64S0akfKcFZe6PgOHMQqBmq9/RSVJTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcnVXwJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcnVXwJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8D9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731128753;
	bh=EzTydUkaE7jPcohz9e9Q1MzY64UbOmE968San8DV6Cs=;
	h=To:Subject:From:Date:From;
	b=WcnVXwJDlOzXDTAN9eu41QyDjJqJgiejP5io6bezr8vLuEI0OWvG5vwa7F8MN8UPu
	 0umwB8WVt536kglnkGvgeYiw7uznGiX6PmS1fC7MEbWtyCsqn06AI024gYO+fs+HXB
	 aVNXikRVxx/PTvyEq+rtGD3FGg1g/s0nVZZb+zimOd1e9ceS3pRyt365OQvc67KUll
	 VxamMxxCjEDYO6T1pYjDj2NKYfrFoHO4mbrEex+QlQ/0lpKdoyCxZ3zOjDEOdrxu0K
	 NQUTqx/nLLgyAjACZQsNEPxKy2KBCbv2IsuhxYUtAre0sLwirxOIu1l0j2twLc2Z0V
	 7TEdLbMuhnUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9D8D5C0C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173112875359.7488.7512962090566957551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aef20cf262ff93969a099d1dfcc02aa65aa1f97836d6194808dc3afa2ac3cc3
Date: Sat, 09 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731128753
