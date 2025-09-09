Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213C911187
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757450994; cv=none; b=TOTs4aPVCl0wzRYHvyzfXBXRrY/LjwDLTkAHv68EhMgdqMhbXladIUIIshvNoY0M5v+E1wCeZH8xeYomrKLBHCSzecgzhaouI0INUEyOn6Ufhyjong0HPZYNzjzHXESTjPhBlBIndQdAoIdpL+vq4ZoigNLcQ/sjIdH0gef8Spw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757450994; c=relaxed/simple;
	bh=TvhR6nc3F5GDAtPk8CsVHI+EPkVQE7c0tN1vBnezwkg=;
	h=To:Subject:From:Message-Id:Date; b=eOwHOebkTfDsm/riUnKxcwEmtop7/RJn2q8xqGwlNTD53JPlzqSYc4H4W3s2p1EBqw2iaZ/UxZkwTa7J4MzdGOMV7MpnfubVKaWBson/Tkt+mVeFValpxuOL+opbMcW0VJAHBrhRtn6q2jWfV3f4ln6MDuWv6dFYaiz6O6s85fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po6Gtrjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po6Gtrjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EEFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757450993;
	bh=TvhR6nc3F5GDAtPk8CsVHI+EPkVQE7c0tN1vBnezwkg=;
	h=To:Subject:From:Date:From;
	b=po6GtrjpIBjC17sDwuAeDH4/qPWA4AjZlhTCjBcfno+Cge1BQCGyYtVZV8MM4nhM9
	 I7IMjfo7T1SXvEK8hCA87szjjhlh+aClHhLEZe5E+LsNZrTkFwAfneITvD4+gVwikE
	 6Xi2z832yE+tOmL66Lw28XD6Nhz+oHKq3h2xzzZS948tFbGsWsIVqCEkrxXUJA0nbj
	 +FKK+9KWLMhvJfoaQPEYX2KcxpCSHGoXRZnpWuXGpFXwroWOqkZ+/6gpliCfLE0vAk
	 alCDSSddTCYD4++DULPE25Z14YJmlOfgkyaoAdLpIYYOFGrd4peLtbw5kxCoB9nnwT
	 oA7pE1zdGQKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CCCAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745099357.4277.15212919045337405485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a3d5cccf3609775c3b1b0efd18f4393004d78ec5c1ff9b2516560793bd37e1
Date: Tue, 09 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757450993
