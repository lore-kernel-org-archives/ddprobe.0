Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B7142A9D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750461594; cv=none; b=VI0kzqOlYVIsyNKJAsdcgH5e6X33L7s6rcBFauccwaYjd9AVan9JxM3DAh/yR95h7rhzg9Hh1ucSvF3DbdAm0Nc1wUW7nVLBE6WAJFpUoVgTwXyIJUHMUEm9cg3BK0n4ghhnCG6o3OCaIzeuPIkGQnFJvMqawcvFnNuOTmOsynE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750461594; c=relaxed/simple;
	bh=myykOJUb1PBs3rsXoZYu5p2D9s8bXvV/YP98Qvt/lLI=;
	h=To:Subject:From:Message-Id:Date; b=KivRtt7fFT8gLnnu6dy5ew9yot92ceoyghZ8m97rLWtGjdrMFxis3HWLafbky1d+/Kna0FJf6wcpKhyxaOpA4/xk2p34ZfggEXgz2rhwi08Czqh8Elp3uJI3WwABYcyUbILGMKc3EOpZuE9hDRfbxAbAzAD/BnH8JC6iiLzZ3wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK1rrYxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK1rrYxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750461593;
	bh=myykOJUb1PBs3rsXoZYu5p2D9s8bXvV/YP98Qvt/lLI=;
	h=To:Subject:From:Date:From;
	b=uK1rrYxW67uoJg9XlsZwmRi4qd0+niL/uIZeo/0148UjfHqyQJ7lAIZ9PpOVbQXc4
	 7dIZrywKWkp3FJN/qv2uuRiEXaTd+xrUlvLF6Z6/2OUjXuddyRcefMXD+Gpn0ZrzUW
	 A9JLJJ73xXpfgjAyeUG85J4XYXY7EPlRhai7e7qswb9qErm7cUPvfTsdL2JHyflTPi
	 GAT07f79tKUeCJasK6v+65m65eUhHldT5yzcV9bBgd8DYPJfi9ELkPqm4jeRAB8CVc
	 r2Y2r+4nlo9bGMGAj/ToxDLjs933VrR8r1n6/5vYlvtk77JuD5xCQ+N8olP3zOOOmb
	 qXHtVD5zij59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73EC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046159357.17878.14635764059895099129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc39d2891bdc22996651dce781e7811780e1836a5bbf8bab1e7f7c498ee066ce
Date: Fri, 20 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750461593
