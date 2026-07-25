Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8E3A6F04
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785003034; cv=none; b=CnKig6D4QrczGYtoK3zViDeBSCoCAfxqTdUD4t1NF9at/7aHPriWBLzu8q/n734nNwq1XEViHQfUD0FPnef33OjrivOEF6lI4p5lf70fmi+4/kFEWF/d9916v/bT/UAE6s5hNyus0/nDQxXtTmsFKr8VmwNxeuJS2yMViXbO16M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785003034; c=relaxed/simple;
	bh=MkmuNwOHbTHYf6ysuEi8WD3HjtaAGpDnZ7Beuew1GkE=;
	h=To:Subject:From:Message-Id:Date; b=oBEvhw4bLcH9/ayBAm7I46oKKJBVqiwt3i51cI9VvUUuwmoRv6vLpz+o5la1c/X5rk8xAOPkYeeslF3RN9clLVugphZPAwxHqov0CoI927JbsCPmmOlen8Vz8S0ZHTQDwzr5uJgei9Hu0P4wGIloka0oGgggnn1FraIcQE2c8d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHFSu89V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHFSu89V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD34DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785003033;
	bh=MkmuNwOHbTHYf6ysuEi8WD3HjtaAGpDnZ7Beuew1GkE=;
	h=To:Subject:From:Date:From;
	b=vHFSu89VPw0IKbZ348gHCQYNRaWgqFjzEI6UM4WRZLDXk1Ag41MziuSXqX7YyRtr+
	 xlPx2JLWsZcVIWeEpOVxVxUticRutzs90z4TKP62xL2uzh3yQ5FudCxkSlAxPkf+XU
	 G+kzbpdPcnSBYLtmX0VFEZbeL4B0C5B2UmY79ouUcQTWaTRVLZGD6IxqbXxMkQNltw
	 z4nGkN5gvtm+Xm5QlzFwKHpt/T3EiQx20yd/67sb5YeHZLGAFpYcQRvkjzhhrt40r3
	 /IrTrC/vzg4+owyH3igCgzzd0QiXkO5eql3JUmhqnIp25IAHq2vAdhYarnStLDyhRH
	 LlTUmKOiXZV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE77C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500303368.4954.12988320372664348529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4393c5ee76d5589887f9c84d10edb5730eb3a532bb857cc4bd110c60106507
Date: Sat, 25 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785003033
