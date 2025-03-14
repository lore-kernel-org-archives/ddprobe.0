Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520B82AEE1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741926534; cv=none; b=coYbsghPHgNYAAu+lhEiQURXpvONw58LBnLUPMumF56MscVOyIZsakTuSpH2LCWMbNnHtOmjusGo8Th3B+umLQhbBsDIwhzVOW2OLy+6togU36NX7NW3ghNtRKoWcRLMCr/pvKwOUOzak3E4KSgdtKtnL/Ev5z3dSzKhpmF42fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741926534; c=relaxed/simple;
	bh=YGEknbE+D4JIieCRKrdJVmEx15SpjzgbIWepspX65To=;
	h=To:Subject:From:Message-Id:Date; b=eBqeBH98akUUrI/KjYS1ALB9051TJObZVQv1pJStrsmXbIVzf+yTMVKDPBTPBy2CBlbpwvLug/RRqj4eUEqesy8qTHIicMtsa9Lx9+AdjT+QTXkxBfMh1hx6ja8M3jUO80xuRlxyF03Bnrs38PLbG3GgJ6jYAgpNJ89AkXNYuTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekowTfhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekowTfhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB09AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741926533;
	bh=YGEknbE+D4JIieCRKrdJVmEx15SpjzgbIWepspX65To=;
	h=To:Subject:From:Date:From;
	b=ekowTfhNQx2EwSgc1pQkXCp+bPtnBMUZoSLlWheaCkPGhgmWX+UlU2rskl7KTfA9i
	 5L6TzvxHtjk+ews+srjAjAAsQzJ6by7p8mLGSMAHel8h9T3OhQ36qS8L4Ruw/05/x3
	 7Owl4qQbk/4XdmIN1lpVtWh4VdNwQThD9/+fzgMiHLG1fpdByjWx36WDD724Vwz8nE
	 vWErtaR4sVL1KlbVniCy0PAlnjbgnb26NRkNiYkeVsqKRLD6v7ixhIdNTVD8udlpu/
	 KV2Ak8L65usorhU6I2mw3wcIzsDUb77sDBj+SZc6qYUlrPmb+5kTVzAwBZKQ6axyo4
	 X36W/XLT/JiSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C68C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192653362.9566.16723752556518951954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458641f24fce6c367e3b3da733ec0cb011bb226fffcf4ec64b42027575e02879
Date: Fri, 14 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741926533
