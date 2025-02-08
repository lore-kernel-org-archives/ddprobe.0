Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E363241CA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739034954; cv=none; b=W7qwBOaOs3kgZfnPgdH9twy6B1BmqyOQP8PBEglRMKZZFEKlbOU3hVjFh2BGRgKzEN2H0zoTD3mGU4xaxpCOCPLFxBOU1ohjaXmL/hv/W5FXWTsHy0kYJeqpRp7RBkdZzso2V9O1vgJsCJPxKvEuDGoETkPuY0Cp0Zr5o3e6clk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739034954; c=relaxed/simple;
	bh=NjK0aSoaqjpFbaCs1Ma10AzECKcfApfmdCN2SzGvO0U=;
	h=To:Subject:From:Message-Id:Date; b=tMvsVCEYGqGnIl1JwglnAOLGb8XrIvYq5HEKXO2JhfoergFcAkZuEs2Lg4wi3IBYud4KyQ2nKEWGby5rQXfcR4OuhyEzCqNOSg4f+2gFy+CnAqMRbvniLNJ1wV79Uw7aR7j2sjNinCykSMAF6OKzs4MRWM1FcY4GOdYKEigZyJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI45+s8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI45+s8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE169C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739034953;
	bh=NjK0aSoaqjpFbaCs1Ma10AzECKcfApfmdCN2SzGvO0U=;
	h=To:Subject:From:Date:From;
	b=tI45+s8qUTcJ3S9FEy3fp8a/YCnpjayoMNO7UfdAI86NSQcu0xO+wWcCZr1TCzyLW
	 MH6C4tGAlNWrnjq3qIK/hDX7umDyUM+HkIIrq5ldTWW0mruFYG0TeB8dwFUys+ky0u
	 yzNyMowHtew8uf8pv3MMXXP22puDBDFFXgJzjsWPG5RAzsf6AcW4MRFCJhJdpzxkvU
	 XR4W3VsEkcGmiQj7jpC+MgoWuRdQe9EzBbF6qJEx4usJazOOUSZg78cvDEa4/36Bj2
	 VDeEXvGe/uX0Q2nl9j657oxecp8nKep/EVueKewrLQqiDaicWAXafvaTzpYxsb0h4v
	 vfR6PAlTmo9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D9C0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903495361.4578.15299948470287376550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77edd32175cde43619db52201d5b18f0a33aa3416a98e25762a0364266f9d27f
Date: Sat, 08 Feb 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739034953
