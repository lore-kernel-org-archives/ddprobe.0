Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E84727AC3D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746522595; cv=none; b=NipWG8l1DqBhPclIccx8xBrHVDEFFVwcOj49R6U0WVC5Hhm+Exozc8K9B9CCOiycwIVg934Q6JWjviUQN3aZ6k86ioPADgoXLzFMQ7Nq6XZ4C0Tfb1RDJjxF7sGUAItzVfKLLyqLkN1jdvUanY7QdhjD9e/BMSiJyEK0t60P1x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746522595; c=relaxed/simple;
	bh=ZENV2/f95KNDOcDIqhkFKrM3SuvZ8M6/E94NMKxvnkU=;
	h=To:Subject:From:Message-Id:Date; b=Xz8rMYYrNTp+Z1oCYr2wUZZVYK6cuZGXybOpTOcL3IKnIdgKnHov9aftuM3UEApdvurCgWxI4kJiEySzUFOIi8kBJ+X2beEpTPNn5Wn8yZT9c8p5fQD7XCzkZL/rmQ28g0Z18qCeJoyTyKdZpxQDyHpRJ5Qu81imV0uZvhjXnMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCYibFX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCYibFX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE82C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746522593;
	bh=ZENV2/f95KNDOcDIqhkFKrM3SuvZ8M6/E94NMKxvnkU=;
	h=To:Subject:From:Date:From;
	b=iCYibFX5nB6spdo1G+5DNGrPiWfrRYl/9k8YxuEawbZHDHLERHB0WF7S8B7CxOSNe
	 lwznfSXowa0Jyw1Ac46ralc4w4b//eY93xMKW1EJx1DdpkoBT0EhXcB3eMZPKpaovg
	 mYPNkbg6oLpr1bDFkXfjL0FmssXnHjFg5Fl13r7/YgQdWaL+FWd2XIJbZaMxUxT0Ij
	 fvT+p28RvYT5vamrRYmxintv4A5iVUO0hqYfYdrtMqyshZKOdNZo/48+0yWLlBybIX
	 MnGIIgQM9PFSjsXglHlwXKkoYAFl9cjbShSjvHQpJZRyltPqNhx4prc9inzNVWi4QE
	 rczHb0k3ftDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E881C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652259357.4739.14521108192656884416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98aec857a64294d51b9c8362865207a90cdee5424091a18ff8bbf3cea4f6c523
Date: Tue, 06 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746522593
