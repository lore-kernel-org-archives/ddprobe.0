Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE731F91E3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744814994; cv=none; b=s9Ev6ev/97AwM2VEcu02s013EImYbZ3pTi8jgWeZH+XAhntbJtFzarDvUNGQnk6k9G5aGUvHPZg3E4w2ES5XdPTIc4swd8yK7CgXgRRSxyLoxkGGEqXVIA4oeN4w8umQvAOdr25gR+hNEKc60nkR1lZeWNkmfTH7XwrG60ocfpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744814994; c=relaxed/simple;
	bh=LFW24ix8eWc+ILa/an7Ahoh4fjAeTTzfJS4tau/RS+w=;
	h=To:Subject:From:Message-Id:Date; b=bCIAjg4ZbyLtSSH161ir/hAVqjQDUSGnTdUJhhem5WW5Yaf0LOC29jXm4ytt6Qp5wB8uYsRLqm2Mt5hFdj0yNVF/SbC88XIAjbKJNyV2RopPhkdC5owYyjnicuGeiFUmkRdNTxUy4dDuSLuXCc1RkP7J9odyIvrrz9CqswiCLZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5p/E3Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5p/E3Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4E8C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744814993;
	bh=LFW24ix8eWc+ILa/an7Ahoh4fjAeTTzfJS4tau/RS+w=;
	h=To:Subject:From:Date:From;
	b=b5p/E3Qm+C1T71h+AN/9kw5SQwJ08FaV9x+Zf2wu6zHQjucbYw9/8wsed1FmFeueX
	 k0PKwh8NQOBtYpJkMM72kG91N9hMXj7SfZDF/QBbfgiLN8hX6rmRBEk4wQTGF2ukfG
	 5WjTYN0mvtKQeTTmBvTaT8V7UcdMlyZZM4uBGOP5A3wK61VquR3letzdPVovJlVv4y
	 QqX9ubUnk/XoSloyEKgSLYW9nnHMAQI773ZAdlgB4d45GDpqk0J8MYrKn4akxKP4lp
	 JSmvHXZmNSzeIZghG5WqTxZvCaqn46rekWJkJmBDaw/Ao/qLMJz5fgaAK9qyKG1DDB
	 lYTneC+hNNDsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E17EC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481499363.23500.13496812031348269568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84b5065e69829c94d76fb43e730931ee546c6701befe066404e3aaa0f0beb5b
Date: Wed, 16 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744814993
