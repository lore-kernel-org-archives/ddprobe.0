Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2730054262
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759708794; cv=none; b=R1+UJKpdqVc0h4xBPFApMJT8e6ds76RXxecpN8jc8feaZu51kdXk7gKP1eUPTb6YqbORk+nbUh/CjihiU0/z5m3V+hjmgFdN1rFRpRLgBG5mvV1jlGsU7klhU0d7DRxA5Cy1N5o9DEXlUM9dBsFQjUQ6x2bN/bnnA+nIWoySSWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759708794; c=relaxed/simple;
	bh=AP/zJR9+UE30JXRhq2hwianWP+dzBd8Ojgq5CAMC2Bo=;
	h=To:Subject:From:Message-Id:Date; b=EgXAqtsfESWaqQhCx98b2YcVzjWJ3BKJIEDAnVZUsBCH6PzUX0PnMsw5nXxErHiSI0Oei8v/SMwYbKEvWzK4oodzOMOhB5w+3+Y/NM2nO42MR6O+e86fgdmoOFQkpetUtJiYl8QzCCFOri8QUq/Nx527nOTkZNt5NiVVoB3RUDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5PsWvDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5PsWvDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759708793;
	bh=AP/zJR9+UE30JXRhq2hwianWP+dzBd8Ojgq5CAMC2Bo=;
	h=To:Subject:From:Date:From;
	b=S5PsWvDtjySwUWHyrltmK/VVGjP2ejQzZZItxPaqs93k4T+ysS6TtF2TQPCcjh/O5
	 w7IH+PypfyC2swftie85a2yG78zy3aXESe+T7HJ/MZueLIb2GK57QQWYBU1PwY1ZIU
	 lqKunagSmTq/T9ey4hpsvm1tmonfJyLMXHyDRZTwRLC4yRgM2ny17gkADBl7vb02ag
	 Vb6XadJHqf02uflaaJ/4Ek0y7fby/VWjleNk18xJXTaYZuSr9q7i1Gx4Xwamv2klEU
	 GQbXnYSwI+WXyMRDTQCb+7lchFDwjy376+AbfUjSNeCvnpgcHXstI6DS5Nb+CTJTMF
	 84IK9GKZrejAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF4CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970879358.13060.16541375777486053538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ddd514fc2397000cbff82b5792c645fd4d5047029a27e64357abe9b809d331
Date: Sun, 05 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759708793
