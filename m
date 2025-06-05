Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519E1DE4DC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749144594; cv=none; b=evpurfZuTzf+GbIF7Kaq/xdGG61DM56Jll4yay+N7eqsmcbTGihY6967mXhlpQ/197fCBentA+V87sGxDLpDA6ifzQPokwMyZxZnxDulF1ZyU6uirvCp2IUx8uuG1WR+GfL0GLwuhPPu+RtIhsEl4H2wrXe6JEu0sH6plt7xP9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749144594; c=relaxed/simple;
	bh=8o7x7Q68vSvJGTUIlsHFNSMDF/X8BI5SYiFp9OP03as=;
	h=To:Subject:From:Message-Id:Date; b=L70/1+XrMIZUcav+rJ6rkpzrB+tgXMfQ7uqV1Qdn50RuFmqbrTY3ysjg46yQDDcIhxr3ag6ysY5zgeHGHEs8MGhSW2jzKbLT/0lRSIXLWTWwmdkbk2zOXAzYcPrvtGjWBiQ0fY4hylaTrzJRf5+U+336gYg7gRUiZM/0MAZ1Vug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8dDzPnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8dDzPnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749144593;
	bh=8o7x7Q68vSvJGTUIlsHFNSMDF/X8BI5SYiFp9OP03as=;
	h=To:Subject:From:Date:From;
	b=m8dDzPnQmkJteL+f4iXKusCOmKllGoPtEl2KkgUGSjtVPQ2rFAr9oKSVY7fkjL0k1
	 7GqKOaScAX11Vz2GKO12JxN2bj+qHcP+C04XpQHYVWKRrt1QqmWFt8DUu0tqoXwBDz
	 x7zk87Z4ZMSa3rBCBohskIErPoJp1O4CcCyP6dL7KPZUBbIfRXXNK/RIDxbO1+HjDA
	 +dK826Blb/ydqQpLWlVXUe9+4wVHuEfTzm4KaVkFkmWPZomOQYnVlbiprO997JiKax
	 3MImnNhfmH3NmCW6CAvdyotE46Jc9Jwhr/5CAWfwucrHgW4tjdAcQcSvXaSwF/X7DW
	 Y/0nOYJyG5ZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90352C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914459358.12639.10336244107329039904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c9ff6b9a5558c72ad9d96d20163cabe0500d1c60ac1fab69fbc42639c1e92
Date: Thu, 05 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749144593
