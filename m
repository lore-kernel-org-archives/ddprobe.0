Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0205A3ED12F
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773690294; cv=none; b=GpS+xmhNUDHepoIIxCzg5I11LzedCejMlVMpdcf+jUKDZCPffg1A65lDuBpDhfnjPQY4BesemZPeMvvmz9wJJH9RvG7ORWo4h0m7nL7BOFP5ScWBKIFv/a0VTSafJPFefFV33V123YBGWeSpEvxa4hMrnAReEQRdg2J5OpCeMLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773690294; c=relaxed/simple;
	bh=hx+3Rgsi+k3dcCytBtftiychui5MZv22sAHJeO5BRKU=;
	h=To:Subject:From:Message-Id:Date; b=cOziJXzC2fSh+kAF8wBJ8fIYSeA5Chu4H3sy0an2C+pQCm9upmHI9avzQ8IoeSREBmdH13b/xC3YQ0hSjocw009HzkfnKDZtav/16NgtA4YiwRUTBiiaez00fLvjgbGIfOrzJljGJOMsEYmgQ/0v0Zbp5AXcvrqGjdxbyydMr2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RULN6Cdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RULN6Cdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F7C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773690293;
	bh=hx+3Rgsi+k3dcCytBtftiychui5MZv22sAHJeO5BRKU=;
	h=To:Subject:From:Date:From;
	b=RULN6CdlauUZF60PsrXvJ65fc10YGekvmDHvG1QUccoy9r8PgrDmV/zgb6ylQnkWw
	 82Vw1tRujr/n7QydXCUFCtRKvvwj6OvwodqzkSxY7t6Tzdzzpdrj6AYS2Lahij4hUp
	 0BFRAWkWReVQIDthSIY9ovqjuEHeFV4y5lev65U5mbTY/TiMKNByEgdx6n5fWdeYmu
	 DQqdC/F0vMuqVWaPfvlyEYhyhzijjXM0EdjUBBQsedfDZzXWIqNRNpmlgjF5Sepq6N
	 UHJX6iWPUWSWbUqCYgf8XJX72ZeoAy+9zQuGgNtFbO2ENW6mmVDVsv8z1aELv0bstV
	 WUp2xZ7ENLuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9BF53D8B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369029358.3433.2734827567729621712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a2912d2bbfcfc59f89382ff6a8ba2591b1773c3aaaa0e4e85898fc882cbfb9
Date: Mon, 16 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773690293
