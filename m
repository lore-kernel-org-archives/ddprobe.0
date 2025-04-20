Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41905101E6
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745177994; cv=none; b=u71lapYKIA1MbyYR4OFU0FH+XnFoopJjJP1BAYvDw4vCnD0n6byDPXgik3GndH5/P/anPsOyA/v2woG6uV3DJuOEe5/FM+Lm3j0oypnf+tsYm0dY4+e4ZSqJAdpFLBmblImv357FurV+EmlYJKeT8a9Qkdh7Re0TSiiMQo0zWSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745177994; c=relaxed/simple;
	bh=FncD9twZPY1kSIndFes0JAqoDds0diHEsNYfRvUHCvo=;
	h=To:Subject:From:Message-Id:Date; b=j81uDrZwrGoF7531Rs0HHifih/RwCBTU8CM8yVUWtqEeLtlTboyR5ouzLc0Ei1xv2a8Ds7eM1TYk7gv+z8rs+1iq7I2/JtL+tYwu0c0yd9wVNY0inJueRuO3ufpeFtZUhi0Hjxp60J6SoRwZA123+ZjPr/H0JIOeKcyjBH2A21I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqDwtHTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqDwtHTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA38FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745177993;
	bh=FncD9twZPY1kSIndFes0JAqoDds0diHEsNYfRvUHCvo=;
	h=To:Subject:From:Date:From;
	b=dqDwtHTX/MLRn1aqfBx+L2nqEAKAxDZcrltjrEswLsfi+P7IxWuX0sEim8yhF98ux
	 +OKtQcLO57akIiyd5TdmwdooTuzlcNwM4Kwkouv8EYlRp4AR7XfmAfpMJsyv7B2910
	 FcvwEz1gA7r5Lnh1fA+cBsAGIurutuxLq/a6BBB7VzqMDIviePqmZISxdJVP68GMeB
	 QBrrniK1XlsEgAYF6zuIYEM7035/uwaW2KdP3Rb8UKokp1q/osNwQpX1MovcfN/F1z
	 /tcigF6iwY97/HuAcu8U1IhGj8PAF3wUGiebNcfOvhXvHXM6xvmKybkwzPPIYWun4B
	 bgDs+ie547huQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EECC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517799361.16941.17445624362760242148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75488d98651672a1ad6ecb20599100db59b5129ed9870a05107fa25963f14127
Date: Sun, 20 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745177993
