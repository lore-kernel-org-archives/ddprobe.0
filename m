Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7322B8A9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760225394; cv=none; b=RqMNuJ33QCoahDpvFU/icGal00JkEobzVVAzZfOPpIRLcLVaQINUefJIzuRf1bxNADNjNLtvgPcOe5WYPp7JnYXdXBnrr8S4WLr+cVdncJ1jjMDVSlFaLXfQVOLUkI7h2MZC1ZivkFGkTO7Artth+B7bOCRkskq4QlajL0ruvdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760225394; c=relaxed/simple;
	bh=xjSNgzlEBvp/7Fc94ixCCO00atSkaxDtXWzcg38ypPc=;
	h=To:Subject:From:Message-Id:Date; b=Cb2X7I6QhTUxaz0TXTsm3vH8qrkmkvpJwFBS4J0pr7xMcQByrdK5wyGnaOUdIplWpv34IrFR+gUCT6FrC8Rrgcug/zrgZqOPRSzzTHhmLhAAOa0FLjodp5+zfCcidOWot4o2DqB9C/1uWmS/OIa7bgKMVBjImkBNw3u9WW0Vl8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbMMnKv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbMMnKv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9160C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760225393;
	bh=xjSNgzlEBvp/7Fc94ixCCO00atSkaxDtXWzcg38ypPc=;
	h=To:Subject:From:Date:From;
	b=mbMMnKv7W35giEkmrX0sOzFLnqxdrm5+8l/Nmtls/FAj62AsimCBtSCHP6AX1ZcwB
	 6sNzRq1GkiZfOxObbt4NBHHcxbZj+Ot+CegFbl+Va/oag2Wk0Bqtg2S/3YQGyZT+lm
	 POzFEDK5MY5Ek4HxAfgJPRiOLkovhR6ByJyoRQtGdXTx65tud2q5G6NLFRGIe0bAKd
	 VsMyGo+rQvI5mHd5LQY9dxb3fUc4qgjkSu5vYQtUIblOoNZMCrCBCvjs4xxI/2fM33
	 lIouYjTkMjR69rBn+95ryxGjgVrtd7cVvXgf+8zYLk2CxV5V3l/8o7VZS8E8izwWed
	 WJc11vWGq9zMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503ACCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022539358.29410.18248014125452845109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c3dfab0ba25d3b0bc76e43f91400682df8c7901f777694eff2a4d66e632780
Date: Sat, 11 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760225393
