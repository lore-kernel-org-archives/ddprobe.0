Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB621EF39F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742600994; cv=none; b=B6yoLV02YMIc3zXsswFE8DDaVjpuEmJ6cONPRLAZ970mKXvAcPXhE82DKbr768AIoLV0yhFjw/Er+wkqr6M8F+PF+O9wjI+oQ2bbum47KDb5WS6FAc3U/bG9DXsITiNgdLkgyNcu5ZtYrMfcKphoQPZOK008/LqaiUmYC0rSn5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742600994; c=relaxed/simple;
	bh=zX/6DSeNG96PbXp58Qmj8SuSWxkBlWoc4e+/VMTrKmQ=;
	h=To:Subject:From:Message-Id:Date; b=Xk3kyMJhThVETE96yyUxZtUfTm34EqehX5kSxWrt/999LlQmotCSMvzPPuMaKtim0le5dxEwTMv/jN8DA3R4zToZkuzbJlOGaz1VwJhn9hnNbJbuY5pDyiUVEDIGT5z1xMYPoTRSzeshCpmB190vRw4sldBMJnp2ZGdE5aC0lpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSinrG76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSinrG76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC862C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742600993;
	bh=zX/6DSeNG96PbXp58Qmj8SuSWxkBlWoc4e+/VMTrKmQ=;
	h=To:Subject:From:Date:From;
	b=KSinrG76+aOHD6/6V6xGWpi4tuJSQM9rf7SKCBOsTMmNMCuOZpS4PYV1gKJrUnWCG
	 NYfZyJgYe5Xlrk2DAGga2tJYjwEQ55cmyKQNLFBlUzYFFZWND/btDG7di8DSUiyFhz
	 zYYa8O3HU1f5IoVQMk9Op+0icGj7rBt7HTA2bSV+R+BdCDLXfeQla9uZvOPH/Ck/sk
	 3Dh7vKzNg+78h5e0RyxTeKEjpoIjR7xILfeZe9xQmIa8JTIJjKvbbHj8vIehFBXTBA
	 DMBu25Hd+NB4kkb+HQho3E8DiZv65ud7H7cTT8eeA8BE4Uc7ClpiLXsSo7xqZ5TLBF
	 iqqbjkSOJc8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFDFC36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174260099360.24085.320117760243105225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77983bdbe233c4279616239badd8c0ec620c163f60d416719d9e0fc85d18e82
Date: Fri, 21 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742600993
