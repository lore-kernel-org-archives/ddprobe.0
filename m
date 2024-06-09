Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB9642077
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717965443; cv=none; b=KDX0sW4eNG5bETcPGt7GeRaRBNxlieRErVs13Cyg2aMjDWqlgLh1cbc9raNU08w+jc9qC3VLzKTof8Bnu1DrEXRQyBPACoYSXOnn13/OuGUPuOdqkJcfygrf7w3j1uETUW958XZpDN4CpPLHxFGhsyxmWZNrerwEUCPErgMvFaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717965443; c=relaxed/simple;
	bh=yRiesxhbvhvv0h/Minko6inmjNVD0wC5nB/L5UjOf+Q=;
	h=To:Subject:From:Message-Id:Date; b=G1ELjlOs7RAJyiSY8gv7R3Vq7q2tQHB3Tp5EY5jRokGYx822DZjfqLQEdB3NB3ryDUQ66/1jkusBtctzJCYnyItubgTWH85kbhAbdyPMhXbjJapYWWGC8i0I+3Z3ez5I98KlS0aeO7vnIrro+cj64PQUKnU0J5A5ASzB9Y3ZhLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMfuVhKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMfuVhKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 025C4C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717965443;
	bh=yRiesxhbvhvv0h/Minko6inmjNVD0wC5nB/L5UjOf+Q=;
	h=To:Subject:From:Date:From;
	b=cMfuVhKZitibMUdkgH43BNIQ2CahVtEnCUu3fEeqZ2q2DBiSa94nC8f3kJeVf1BP5
	 t5j4PPlfkszoUNavOlIKNYmRf8lccKCT8+A3gIfyDfN/7tb/IB2SwBXKl4ScAF6VTw
	 C4xQMWrOZCAOSJ/9bBGjZ5ZrUKLz8NZb5d+XJERdxGiOC0VDYrahS7tZjAwnpuAzrP
	 o8NIuhV2fs+Y9KO5Pa0frXspVT/TaO1jyXWV9Ow0lwAuwYyFBg6wUJIIeMPbc7MjfW
	 AOtd7oPKdzNdBumNVq39oXtou8q0LqPtYvWJi9fGkTaC10vAquKJFdaBG4GurKfsmH
	 dHcKAQIG2wiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D8BC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796544287.21710.6559109567610473559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ec4c7a9bd6817513cd7265f659c5d758d7d20b293c8ddef7b585fbd3877e98
Date: Sun, 09 Jun 2024 20:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717965442
