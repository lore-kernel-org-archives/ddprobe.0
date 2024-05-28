Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608E44AEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716873863; cv=none; b=nDnorZHpQBRpfoAGgKmEIN8KwJ58cK/letQjtxW/9rxXZD+5WTmOgHpq6vPb+OUtCLSAqEK5wSSnO/4gUnHmmTV4VQ9rEBFun0EBLCeFivv8S8bgYhLvM1Iu8CfQGzhdtQoWgTDNVLmvuPLmNt3fKZ1gdzPOn9C4T5jmJDA1XGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716873863; c=relaxed/simple;
	bh=xgLGR+w/b93Ty7dk6ONc7/voGKFjPcXn1nJzC76uZiE=;
	h=To:Subject:From:Message-Id:Date; b=F090oIyEZ22UcpbkrCKu7QHaPFUTtiTbFXrg1Ch9sJ5WjUHEFULF5HcBAzBXx0pKrHKflA4EYwb5lNwTGwVG8mdp3jWSvXj0SBKfMu5GgtSkYJ2XHa56NjLwOQm9wWVhvigjHlVfOepHLxbB6qzL+NcQwTTo2n4ILrY4TB4VM/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkklR8im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkklR8im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4118C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716873862;
	bh=xgLGR+w/b93Ty7dk6ONc7/voGKFjPcXn1nJzC76uZiE=;
	h=To:Subject:From:Date:From;
	b=EkklR8imNVxTgoks9aYm7OwaUmczuOgEadu9LNbTfDVyt7tPAHJqTlQ7/478WOGt8
	 GfSUhIRrhC4/2ZKaEiL9+BjuyAV9zIT2FQ2js8r772ds++ZtqVSyIglXFmySb8w2Mf
	 5VEZgz0BKK1b60oCfkUIuTBu/h7ufWK/TskLhbQ49QSw5MJhr4M/H/VXrZth4oUcOs
	 /fIdxRnhnfz4d+XyNNRuSSjOl//vciT6A3JBMVLoJNFOGG5nzDdOCca83EjZYpDghV
	 bY28eUJjD8/TSRg378kaHl1IlbrAd4BlgnSELdaXEBguCWVcPc5964hYdcrm9pLRds
	 KAoBtXHAS+a6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA48AC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687386279.4206.16462332428267724737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543cd14257b0046b8bd19eadc81d7ff0f25dd2ea8fd320f8a039e1e9b5009633
Date: Tue, 28 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716873862
