Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBB7213E6A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766111034; cv=none; b=AYWdl5bst5xoBr/EZe2TODIdvau5inrVDU27HguHYl0qpJTizFf3zU7pQrgzaunTu+OtVhtPnyebGIlbiXaiVy9ghDZB8rP6ewaVXJKIFZDyJ7LAWM34hHhwUzChhfeM3nZBhKANCEvU1M9CdVq4SYZMA3MKRU5Gl86Wwlh+EDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766111034; c=relaxed/simple;
	bh=KZhVtti/FDwI8Y4qIJCu7V6mC35RvDzK9EgW/ops8VM=;
	h=To:Subject:From:Message-Id:Date; b=sFS9iaveM3bFNAuesAKl2izQDIDFLwRo72KB/1e0bcSzFsh70fkkQCu8IJ+pJeV9bKYjwvV5gIIaXa9NDtdFc++VYWZo3B4ZrGcUVMtQbE4/pj70lhLL21Y9Y529281BeHjV/HYVRABOhMY/JVdB5Q6/jqAtPCBWyrVToZjCtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gapZt87C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gapZt87C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBCBC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766111033;
	bh=KZhVtti/FDwI8Y4qIJCu7V6mC35RvDzK9EgW/ops8VM=;
	h=To:Subject:From:Date:From;
	b=gapZt87CXYfMbwQt9EvVssyDcC9StywgsEPJTwgkeyW70G6Gnc49dYJIsp2xsAKey
	 GWwzttVLZOhTGRyzzlCm49zHT15EHP+K7RJrvrpJIFYSMjijkYBQCvsNKUn+QeUc8g
	 bEz+AYZekpKE1qPuwMDHRAC6VDNefhaM+dmQAiRep7InOXQyajcC3qpvQkbqfrZiPe
	 F5Jir/1iksqLKBNOEj2FKy55BpONC0wducsqgJVJdWgNqjmH+l8hWxYl3rzSQeSi+z
	 SU8r9c7wYqqY2QF//hkeA3eyON6ZG0SjoRUpEHfVhJbehCX5OronZPK/vflcSCpbGp
	 fhkX/DfGLvxKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90226D711D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611103358.24830.3785347870021793421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeee96f0cebcf4fd442085a022afe45cbdbe599db55e3ad5b5e07fedb872abd
Date: Fri, 19 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766111033
