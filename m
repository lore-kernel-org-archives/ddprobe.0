Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294EB29B78E
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762082394; cv=none; b=Xn4gxyxPcI2YYaGo+BW4jScmGqEM7U5SOs2t5WVV/yZWfSB7/IIzVN1mYyjrJDK32krk3wUgysd1DRiDktcc64Iri7r05998kV7sTlC6+gel5biEw9o4PGW/6HHWE2rcFSsomxDDEvxc+ojhWGcExD8ILb5+0o7+VMdcNv0xPsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762082394; c=relaxed/simple;
	bh=Xasd1Ud/lLlqP2Vsu5OEb57E6LsagzgY5TE0rG7n7DI=;
	h=To:Subject:From:Message-Id:Date; b=npJ+BtSxyGT0ZhR5ySR2hRh8kitt5cwxUCT4EUtk2KU5h8ZXznAJE1RxGh3IVPxQslSsANX3/mqxFqD3hsgsgNmQNym3Vc368cyKcuABCV4JcoqnuBz+1yjP9+7UeMKCKCM6kLlIyzEyQxgka+sDj7uoKUbzBzCpmnZV+Zubjuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKychDBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKychDBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86B3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762082393;
	bh=Xasd1Ud/lLlqP2Vsu5OEb57E6LsagzgY5TE0rG7n7DI=;
	h=To:Subject:From:Date:From;
	b=ZKychDBbZwNJnIqoc+ANr79mN/xXzUlDjVM7Bm0H15A0DNTHEgrDIezjVBG6DRITz
	 R0nvIUxepiqw+zBS7pTW+qOP81aG2/CpScbzrx7knxQZjpE+DKPK79aD8xDwzqfKJ0
	 UHqlWVQo8rKF5INPJKF5hYSPQywLYlPn0Ho8g99xR7UnFja4G1ftoRJ1XfvGc5Mxt5
	 3Z2Ue4+ZCQ5vyYl2b9YnLFLjZUe1N2GYEVMdgIRt0AgA+j3akqjVktLmePVUyCG1be
	 rPJkABsjojD8osIfzJLQ4piIc0qB6kRnqXOs/kW3ovLwuKEyjkbbo/+pLmjI57/MFG
	 NS03Pz27bCp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94433CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208239359.3730.10656456868191881041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182b135594fff2c17645a39538cca03cb7e86e29e81a70311f9fdf57abfc9820
Date: Sun, 02 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762082393
