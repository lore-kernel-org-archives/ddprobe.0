Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D8922CBD3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746872394; cv=none; b=seZAcU31dpkIY4lhXUM8QjjhfBipApUC8A+Xdi7HdTzc3uHEXS4+OfBIiNrIARkFeYeYvFjraMLl23h2ayAaZ6ToB6ZHk7ZgvuDvADn0tu8eUAbE3cXE6S87KI4mUp4NPQJid0Vvs0BIZPZIIJkU47PCymzQHZOIAjxdaeJRz6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746872394; c=relaxed/simple;
	bh=CNtBePSZ0KzB8Zn7VPrOZOqwywJFLjYfytaQAAofIbc=;
	h=To:Subject:From:Message-Id:Date; b=BBMPXjjkXX2TocEXYtCsf7yHAFRvU7xo2N+5H659Tt+EDZnBn6fVu/8OjZbqI5pvB2QJXJaoz+7mA/kGEd8Q6XPaauyf93zYpY/uQ9AZNTJvLj/ckt5paVWFKwAIfG7ewtQDtIZ3jWDfAlaF41Fg0B4TsFdkkDFkeDWWfuoHgLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzAvglRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzAvglRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A83C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746872393;
	bh=CNtBePSZ0KzB8Zn7VPrOZOqwywJFLjYfytaQAAofIbc=;
	h=To:Subject:From:Date:From;
	b=IzAvglRmqg9q8YSdPbgLSYQrw24byQjqWJTttYZmEkz61lNUQ3iIScXtAj2Garu2W
	 Ku2+Gf7FIYW38Wf11lUN07LII97OIMHl9bNa6Bn7Es3YKcyy8lZcMRDLVe6b2y2w4/
	 UcQP9oYpNt8ECs71LztMzA8vYiqmjxzW1ocL7S1ehkRd/q18HEpm8Y52ZgS6SAh7u9
	 3YsclhPgg1PTVzUUlTELQDluJquF+xqCvxCaByh8aZsEohoo0RF/aunGTAJwfCyBkl
	 ZG1NZ/u3iDY+tlVS/ad72coFs5VBBfaTpoBsiIh5bdOiYkot9ADHzNYKb9MujT/Dcs
	 8fB899pw3PQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F11C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687239357.13786.5413628719311799668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8b88ed8822e10bb66b1e68a53a45ea2b1ff4ab990da5069fb277b34b982d3e
Date: Sat, 10 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746872393
