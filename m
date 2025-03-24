Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465349444
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742843994; cv=none; b=X7WEcbJmomKyv385uelqBslrjPR4lS9DPD/jJwCubU4ebKJdleXbXqtLDUZvYn+zfXmAPJHYDzcpMNkeX+q5rETykV5ozWwAm54FrygZcVO/+Pa/HEajompEtOpo1igi8nSE4IE+O2CNoY6fwxsS4RCE6TmwKvKXqlUom3sS51I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742843994; c=relaxed/simple;
	bh=vZRTA7OUCcodvte8olCnyN7V9YUuU6Fz/pJ6R7CL0T8=;
	h=To:Subject:From:Message-Id:Date; b=IJCiUWHMHoBAslqNVrXNZmV5UbWJqJDUW3+i5lLakiTOaVf5SHGNrdX7iMFFIU85bUwTqDbECJxBHbmmPv7HiV8uaLhImozpQDGWSeH1hUFemVaw5EI8IAkgT2caxDmMconYNwJIwWdZVMaXlDg/ssQT062TOq71N6BLiJ9a54g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1I/dK58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1I/dK58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A5CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742843993;
	bh=vZRTA7OUCcodvte8olCnyN7V9YUuU6Fz/pJ6R7CL0T8=;
	h=To:Subject:From:Date:From;
	b=E1I/dK58MPzyBBQkbhCYXZ6qOe5okbojDQSZv8DAu4At4ger8MlhL4NwwoMHA9QLA
	 A7Cm0g5eh2yGjl3VhUZwy5XVqG4tl9ic5WJgR5OoCJf6x5wz+nNq99wJiUpOsp36fA
	 Uhj3P2ic6zZvV9KuAzjxGRNxuo5eFVr7aQH7qVPbJGFbuvuLX7An1uDepk8jusLdHD
	 Ugix8DpW5albLtWaAMjpoZGEYbl9y5e9vZfG4vgSCFSYyT3tgx+9P5/rYuFPTQD7+X
	 wDVqu1TP3xmrOHDt7VGAKfYDQCii6sle4PtXPnsvQSfxVG1tPsayla9RzgU2XBg/65
	 QstxqnseG5rpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7E4C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284399363.26281.10922143488191188440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e624d95bfa014e20a08f389a910ff923eb7b26ba26854df6ba5078f23f416c
Date: Mon, 24 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742843993
