Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD6914286
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742759396; cv=none; b=YUHhiMz/GLVaDDLjgeJ/EoQBG2QqwX4fmNt4kl8jXPtx7N8UZRis2tHi8j+/HieGE+6/L/OTh2UVRl1EN64h+pzO0LgGI65WrM8XNJXaYv4aZ3ZIpl8Hnaiz8SNhe8Z+dNn9BZ9N6Ly3LvkINRaDZhyo+qBmwSWueHXnJjNpCDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742759396; c=relaxed/simple;
	bh=ajOmLf6kQjo1o6hGm3TkE7zX4cwIrLFKdEhRHCxGeQo=;
	h=To:Subject:From:Message-Id:Date; b=hDdBsvgzpqn3voy+MDGMubjRU4GSe5yIgd56IL4orfG/JiD5KSZkCeoUleR+iPMJcxn1OTcQVP7dnXCJ8uRrs1n7OeGcoNJuY4+MY5GrFNuHsYEbr4XkNhZsgYWll0pdQ6fqjsuuzx8uu+Mw7tuAf3nrTseGeA/A4u3GvJXTFFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVzzEjYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVzzEjYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2C6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742759393;
	bh=ajOmLf6kQjo1o6hGm3TkE7zX4cwIrLFKdEhRHCxGeQo=;
	h=To:Subject:From:Date:From;
	b=OVzzEjYbkM0OOBSpSPrQI9mC9+3qshi68NEnFO1fb0/12UEtPkG6PCQ54luHrIWK0
	 F+U5D9SzInlcNlQa0fuHJoEUUUL1hBqw7LnvpKbTaTTFhye9ea99FvG2H16+7NGNIQ
	 jdjhgL/7UsjQ+lhrKlsBKpXyXiA9d9sr6pmF3EswACHbYEUG2uNzqx74D8fpkKfev6
	 gjm3vKy/p2Isp7lAOhWKmiqxCxeJfsYKXBC+PVCZmsYt0bgj1P0wJqOvjgcq0O15LF
	 5+g8m7yvVtXKmdtvjIdA58x/G15+4R7nu8QjvAbiG+s96XrkTXSE854OPLhcYzLp4y
	 jHydZMS0aUROA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2126C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275939364.8345.18288910604865134440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ea7606a44243bc115d40694dbc76b02020f89ae26aaa56bd124ac714be8b07
Date: Sun, 23 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742759393
