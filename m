Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AE53E7BBF
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779286234; cv=none; b=kf2QvUd0l67GxTX337txJ++aCsQ49dpCxCAsQcYqzQ609go/XJVqb7nXNWC6gRcoXHoks7rUl6rIZswSt3hCGeSH3OiWZ7D2X7rR6p2Dq5ukQXHFpwpFcRB3pnRW9WrcPvGvUFbmL7iQGKkRXb/324r4xWyAQTVg8ZwbPc6buYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779286234; c=relaxed/simple;
	bh=LWIo/yb96bM4b7XprlkipBIolulUMcitVprsVQBfJrg=;
	h=To:Subject:From:Message-Id:Date; b=NJgkKSIh9g9bQekER0OnbxdYIbAi+KaZtxHqvtzhLsYTv8dcj/evp+qV46gOIuAQBt1BPx575GpQ3y1HWXZ+BCT6YV9pCecwvIJxUhfxW9ZJ/pu2WYqLzOi+N0YBPAJwutLyFyGxedINhMPetB2n/YZlc8NfjmCTa5mU2ybtmKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0C1zkrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0C1zkrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48BDC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779286233;
	bh=LWIo/yb96bM4b7XprlkipBIolulUMcitVprsVQBfJrg=;
	h=To:Subject:From:Date:From;
	b=J0C1zkrCEo276OcnQP9kX4+kmWQi41IduLt/Yg+riJF17HBhgU7GewequD2U3yvTH
	 MUy6F/prQ4uxtyUE49VudryXL/8zUm1IV+deWl0TZA9xBNUTzJcxfC7OxR1OxGyXEs
	 HJzcUrmSxyx9T+r7+EZxKjcWXgj9BFL4CdSYSQ2OcOXfuLOjL+o8EZCvsrtYnfxUKs
	 K+RuW+oIbAeL2YagsaQ+LAQVRcR2q1LHL0Yj6ZehhyHzxq6+G+BhloSk2YI6y8vpTP
	 XRDUpcT9+1w+0E0cDNJaH/D/AVd1+8s+InUmlRUvqRK86G40MHKZFzFX7K0PN/FJZ5
	 hqifT91JToXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0ECD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928623369.12485.16273286765816232393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a08d6e9f4a47e63b0073856b73fed4278cbe777921098bf5d3c8cc98ef6aeb
Date: Wed, 20 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779286233
