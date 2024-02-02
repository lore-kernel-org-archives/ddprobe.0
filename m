Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D715E5A3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706903897; cv=none; b=kbx9fca1JGSI38nP3YEdFmk9p1U1ygpN6wWBS2fIMqp7XpKyhRR2xvuc01oYy8HflR4SYnyRJkWkCEUQgaDru5ZR14Nuqkam7hSboar0Q6lU1p/D/WcKLFX7dsOINpnKuTIbC3kMIYaJqHanTQbo4NALEnKjYasEjE25Ij1nt3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706903897; c=relaxed/simple;
	bh=DQfOBNc9271A3HTKYXhe2+YngpgaoOwpK+BjoM9ToiE=;
	h=To:Subject:From:Message-Id:Date; b=MS7HB5ccCNAvdMhxcAjC4Ve0BgwLxrHBfUjyK2LWY/DAbJZe5SZNxIG4hQAH2ElxaF40qkKzkTTE6gQbX8cMb52pMLKl/tmKTnJAbtzQ8rHkJ0nzi+xtDnnK8tQIjneW7GjBTiXnbTkv4aLN271pirZ9VI0eVG6iPk7OKy3QE2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfVTAce4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfVTAce4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8912BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706903896;
	bh=DQfOBNc9271A3HTKYXhe2+YngpgaoOwpK+BjoM9ToiE=;
	h=To:Subject:From:Date:From;
	b=CfVTAce4+l6y5Ph0tZEYoFyskiJf8xt067wqkKAKdU4BkThxMdJ9h3qUSnmyRex6r
	 uU1/V+fz1SBiGKNT6rGztCy+Iw57v0kwehFCCn8R2gO0fdVD6nTZmzdylJm6zP+H40
	 Fohm763ELXuYWALDjpSeECj5Fi69QHQil73NPhgkRfx1Osj9btSgdDupyt0HdIdKN7
	 LtVh/WANp0eMyw5EM6fWzXXW8CYJsw85Xomids2CGGrPjY63MvtQJzHR0NvZEjwgip
	 VuNz7U3UkHbGM9RtZr72hvZyHpUhDmAJRUVdG5coisIXsVcwPYXbBsOiO6XwwABgc/
	 7a00+pldqP9BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63930C4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170690389638.403.1420402080856195758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5645ec95f9b229f9b0a02af58a38d5a86add2214413c50db858754c535a7ce08
Date: Fri, 02 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706903896
