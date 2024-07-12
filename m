Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843439AC3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720816163; cv=none; b=W96z4tU33SPssKFKEBe0JBvpajLKhgj9yU8yK7sp46lxkPw/J7aZYYmKEVmP/cLAj7kudy17qwfHLMb3ZBPcGKV93qW1hxr/XwfgP8gtWoHFdc9FfCbYD6mptGIERGdUJGQ/UrP8A/C5jdGwbAnLpMEIZJSenT0UpgPlQSbxuMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720816163; c=relaxed/simple;
	bh=z8dymen9pO9hVxr6VlGiC2tSEyYje2lcmtGisSA90Os=;
	h=To:Subject:From:Message-Id:Date; b=bPCH5F0XFME/wjJpwhW6wKHVfRH5BAFOtkPfo6CAaDf6WAg/F/PdTzX1xn+9h9KVn/w2pnI3Bbq4s9cRYXOZbb8XnwLbvEBWoP7AiXUK8/WiHnPbvsgtMnOLm0WuTEvD3DAXqZZCYljLHkOmuKxlOfxBwX/viPVhSGVU7Tiii8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeJgjhoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeJgjhoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D280AC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720816162;
	bh=z8dymen9pO9hVxr6VlGiC2tSEyYje2lcmtGisSA90Os=;
	h=To:Subject:From:Date:From;
	b=TeJgjhoRh104kafzfT5LD0Pf1VGm9cCcL8ctyZiYfFVK7sP89m4BNEWsBzrx6ATlI
	 SiHA4QWx+uN5Shw3XsmKZuN8AHvqcC6HKd37GVU3Xe4JZtDVbKK7gBd5UNC3Qejy4k
	 6wt7G7k8HLcrcEhWZ1BZ5PEjl00NUDz0ZMuHQgfhsx0wWDj31Q9p/Ege8RT+UZZyZX
	 JQ8I6q4r3AIRCACpszn3sNx7mAwFZ0s3jBcX/W8q9y7dtkFu2wp8Fc6DCHy7Jbpflt
	 8YyWx3wP5vgDefBptTRcJKaCYOxJhruK4y4tSAB8bvVUL08XKpL91UPY29eO22ZGeT
	 wRMCuXcqTwCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFB5C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081616276.7993.5637889510931560904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b27302d02c5a1ff6913ec8234a83340814042443b430dc78a7e3e91c85cf765
Date: Fri, 12 Jul 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720816162
