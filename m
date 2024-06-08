Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F39367
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717805243; cv=none; b=jxXgaasJkmSiJVAMuk7pfxedbW7lbc4LRVN6k4o0Pq6mPxZniO8JuU76xN34QogaNx8kdNbk/8mrJh3aQeet0GjGhsgiodHfLmErjNW37ZdZftjuIcE0NwJ+e104I933Y4+QEZlpEFhbEqwwc0gYceAPr1EXI8g4fICP1s+/JOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717805243; c=relaxed/simple;
	bh=AJ8vLj5uayGVeDkv9aTuztewya7vYZR6IFQudtk41Xg=;
	h=To:Subject:From:Message-Id:Date; b=as9yQut5xG1lMuoJXjdCyxKgzXHa8zVGNgRwinMw2w7qerAsj70WGCedqUXy8E5EQHQcffx/RkLMqyrNhkM2ZvNPMu63FHraVtzl3oJz8rU/ORaR8PJQ7ePdDGrP7y3+cOyNQe+qeIYSIih+UwmhqtXJfe7DcgketubkkQSPM04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfeWi4JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfeWi4JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06F68C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717805243;
	bh=AJ8vLj5uayGVeDkv9aTuztewya7vYZR6IFQudtk41Xg=;
	h=To:Subject:From:Date:From;
	b=SfeWi4JE8ydHeo4dkX+eqk9kRvEA1XbyYpQ79hLYQZKfqaEME9PoUNKehma3uBX/c
	 eqxQVekqqvi3jquztDsGs0GlbScqbUtWr6ivfqNoJ7zdLfEo7wDSovcQE1DVFF5xOi
	 3e91zYEvuSpar0QXmdTam2Xv8+LCvYqRJKNuzGhEePH8CmgDBqkwWNWtLlDTRKu7Iz
	 FaCJp8GOOw999IEi79+0Bi5a9SDDhSdu6GXME2AFhcryxpAD/o4rLvtllIo3vrN4FT
	 jnosi5/x4gxpei2A/ecfdFERlQQDnMef5PIMBBWSPXX5LP51yWCJTE/YaHD8d4oXYk
	 pr7T41uayFDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8122C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780524282.16599.10881791882692146320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5417cf601dfde97c30b2edaf3f148b87d18c0f61c99e4ed331e8d7cc0490e18
Date: Sat, 08 Jun 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717805242
