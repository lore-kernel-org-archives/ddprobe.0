Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6667C19EED3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787362234; cv=none; b=HzKGrWwF18WWS7CrUZCAaFjIWjRQdn0ALA3A65vZQ0vrhhyUrQdLzt3aYk6HPgVMS7Xu7X28OQC+0EdrHArBsMgB0y6jOzi8NQnebGrLst+XPnLQsh7TrFZ8/2UEFrJD4IsVAoNGrkHduOAC8eY+sxyWkqpCI+OS+rRhdAmysSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787362234; c=relaxed/simple;
	bh=aU5Z8RpYyOpcOG0SUB5eiGf1ISqcp0g7VqtzC2kiXm8=;
	h=To:Subject:From:Message-Id:Date; b=Jz/tJgGtrcfQd3BXuNRIYs9zbhWOYq7rVr82jlGBSxBXkOr0uK98KOYvvCIfoSAqEJx67ArKTqq4Gtvpv96nLvsTPKaGgXQDq0cM3DaA5rFhw0/5I77gfHP724zj0GhTWM1Fvoe1ogMJ8opZa0ZJ6IACHqenyl6OnpjdhQ0zvy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMzuaEwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMzuaEwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88CFC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787362233;
	bh=aU5Z8RpYyOpcOG0SUB5eiGf1ISqcp0g7VqtzC2kiXm8=;
	h=To:Subject:From:Date:From;
	b=dMzuaEwXNlh2W1j9A90L4mwpLzBR+KqoNE9xu9/EsSsYbVutD6Hj1LjAJBRIODSO5
	 Qy9NeDg1vKlPxcmOk8bJFWUEWylwaYXZd3PG5dvmufN6ENzJcj39M/bmLuw1UorAKp
	 bY6W4dJtxaWE+tGUTX7s408JLR8MgPDgo76Ogdv2FQLPD+YuY4Jlilh+9wQXR62gyc
	 42NHkDwe36mVbK9hHle0MwOlvs1IvLRq7vBWRgq/ew7noqMU23hUMf7tNmk9fq1yAs
	 RynjKc9R5dOH1F820wS7s02ofvSt1DtMQkhOwFL/7fJ3OycbYLkTMryKvWAW8nPdqm
	 sxfUgpYer+YaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B282DC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736223369.19867.8630219245995992212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb047c45b298ede6bc15823e0d44cb06836e0a51d973922200d5e6cbd7030546
Date: Sat, 22 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787362233
