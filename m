Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E0C17C61
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730050554; cv=none; b=LNnI92y4wGIWvwIXN8gO6L4N5GLLDnx0E71NLzt4LmfXsgCpVylbv9JRNnIQ+l0gmALkuIO69Rg1B+9yox2is0SzGGZPH7MooLFTc4RUoKVxythg52uU8KGAmTjT0mn5CAM5ZgNFpCsZUkh7GPEhDjdlA0BpSwy/88XFeBMl8LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730050554; c=relaxed/simple;
	bh=NVRlkyUD3GeiCnIt2eiBultUKmHzXwDBCHBCWSnECOs=;
	h=To:Subject:From:Message-Id:Date; b=BPuPLlEAKa6hXU51qwYxui018PNz0E+W83JaN1tuI6qk/bNWZG7DAX+da3rFpjEQXiOj6y5kC1ctQYUzck6VFL577PXGqP+vxQOvNVG4LJWpRfyJ1pkYEFuvX6vyuM5mQIActWTZ3ihE/2azTWb/oevdjbq2sj4j+qDeQH/Q5vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzEr7GqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzEr7GqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730050553;
	bh=NVRlkyUD3GeiCnIt2eiBultUKmHzXwDBCHBCWSnECOs=;
	h=To:Subject:From:Date:From;
	b=DzEr7GqEB3yfVOhR6PVUIoPY+S9IJFwergsHCkQegPnjdJ6l65ONxW27wHCJlzsIp
	 ii402JX+3kDfqsuImCX/KljLrJEAzAJGEPF/ciCs5QkNMIW3mRBPyDuOeaDHJ+b/71
	 E3A34CtmURRc6ZKyBz2Q8in6xwNh16nDgDdQ14h6klLyHxps03FiE6fXOL5X+XkBYB
	 jxQbmdOZvmpM2mdJJkHdix/rdFAB4zBh9YMUOExjjmfNRFOE4MStUbBf7+3YiYx5OT
	 DBRyA7jNi09M6PDfVy01ZH77hvPIsfgS1uCMBjdGVxQvh7ADDYqitfFh2QxXFRdomB
	 DwMxXmUKmd73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93179D13572
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005055359.15500.4419116235244092960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea06eff7f00db7fd31436e85c7f8ef2397c393cd67de29995d5481125d85cae8
Date: Sun, 27 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730050553
