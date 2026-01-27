Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D25327A477
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769531634; cv=none; b=l8FIvLCqWGE6HChCYsOmIWaZei3qn+hfQEJvdKhYxoNasdovS42WtUSPgwPE2V259+PEAL4fOey4W/IbtG1t06lKow9qn+Dp6Dt2dzhBvpHYnBIU1boZS/s8dUNY0Fz+I9nTSmcfgOCIW7iTsbSmSnSgu2z04N7MZuVo0u2Qd9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769531634; c=relaxed/simple;
	bh=USTqz/BhetHui41cBR8gbp/CL9liQCY67bLMgKweJic=;
	h=To:Subject:From:Message-Id:Date; b=H4jongM3rXf+uYA9Ws9H/3Tad2zkptnExhdHlSkn/Muw25BaplNjIo7+Ppu5z+HwKYKeMAQ+wMJ5iPSgmJdGTaaYE6SlTUShGBsSPVEIE4Jjyrg0ag6eSnmn0zwfd7yCuLZiugHq5I7nzfSKRigsE6iQEAHfjvjBf/XHUnObWIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1QPUD1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1QPUD1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB171C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769531633;
	bh=USTqz/BhetHui41cBR8gbp/CL9liQCY67bLMgKweJic=;
	h=To:Subject:From:Date:From;
	b=Z1QPUD1A7d9oSdAMep5fw1vU9w9uWpdewxjhNbN2UA8kh8oArVc7oXYpQ1Ea/6LSy
	 +oIig03vB9K8/l8gU8YELWWOF7nvCdYQZ7DhyNlB/4dZ1dK6xbv/W+16oHcoSNiUd2
	 OfwoWqtZtOq+JRlT6+ugmMuKxllClzSQK15Mu2ezhOPcNVDQ2ubjTOhU5C+LZ+oH21
	 mOyUXDf/PZ5pir+xNRfDC3T409b8wDBLJs3TOMMqCk+9xCQ+m67EsfrQ2IRP8NKnEr
	 JAwEAU54wt8OXz33FW7nbsjaicIKRJed5+DWtsj2Z7Cd/5Jn3F+txVsBBj6ELXmBSu
	 aKZgk2jOnm0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A6D340A1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953163361.10023.4233481588991708299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed0171cb0ffaee18d6edfa12d31c42bbe2f4bd8fdb8cb41e43963e801c641f0
Date: Tue, 27 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769531633
