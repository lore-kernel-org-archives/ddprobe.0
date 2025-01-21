Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503221F37D1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737469554; cv=none; b=maQi4x/nfGwH3Nb7BFtasVbo8kzIiOQSGioXi9h2/2ggztz54KHr9iCdcwAUcWqERbLm0KsBaBaDDGyoMsLBkNIKycpCKqgpBo0BOV/pqz3YZ/8+hSgqcwBIxJ88dII5zTfwR7v0QUtzEwm0FOPSvYWhUkVxXBj0OZlLIP1nw3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737469554; c=relaxed/simple;
	bh=GZz5doVMDbDyksGujv1RYMyLp4/GAXWlX+ljyX29z04=;
	h=To:Subject:From:Message-Id:Date; b=XR9ZlMeQo8P/IjG3usqfLQcXsiSavKuoHNXo1Y9Jqf3q3FhVjY9hu6Q9qxwXwMFGUb5IXUioB48DTuiuqoXtNBr5D+NrRdP5HvdVtZCtT9teHBybCS2PjKM2XZ1+7op3Qzou2JPUjh2suQtAVOOoIomyXXiZhfE6enerjvxUyMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQzpi4c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQzpi4c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFB3C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737469553;
	bh=GZz5doVMDbDyksGujv1RYMyLp4/GAXWlX+ljyX29z04=;
	h=To:Subject:From:Date:From;
	b=lQzpi4c7IP0Uo1udY01g04vBVTp5NMj3x94PdPZs7cDZhqdOt76fbYJgWO683U8dj
	 8bmf09I6zTVzJ1JrWIoRA/FewZTGfLhbRKnQZc2Mmq/PopGcHWzK35bfXdUJweacP7
	 EVzlQy4iaIMi61AJfQp304UrSMOkb9j21kJt0niQUfkIv6jF/KC+vtE2GxJnpowMkO
	 hVzkBJDDJgxDkNNAtY38NqE7YGhFVi0hVLokZ//lZVBRK6q6AaojZWet04z7VQRjJo
	 a2/zJxwuphZxYMgCnBDrtsMMa0TR/mV/d1Lz6msPYCl4r7+R5kxHbrHe2Eurruj2A1
	 UvHz7s+sz18Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E49C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173746955358.30492.18063980267790135721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9633d9c7f437590ad49e23b17c60a6dfa94d2252b7c3901a5d13029213a997bb
Date: Tue, 21 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737469553
