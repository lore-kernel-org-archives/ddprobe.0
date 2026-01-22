Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2677929A9F9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048034; cv=none; b=c/PerRLed7cEux67rrdMI9LwJaL0SdXnOmSOzBUmFvA7Rgoves81WHewpNHgRNGud/aJeB0eR8q8KNBGZQK7WlkQWRgjs1cxTBcie8RqiR3yBgoManWLETee0uVRz3tB2riKqeGWSRawKRyjwoB0Rq0oeYAZ6KuUIfSo96sqAgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048034; c=relaxed/simple;
	bh=kAOo3GYvzlf1yJYES6x/m6uH5j/8NmPMUX0gRLucCjw=;
	h=To:Subject:From:Message-Id:Date; b=bbj2NOsGK008lGMUES1GUFaanAET1T4rZP27jobfrBHzSMR9qfVlOvlH9nUCmLM/uD9txaGnWir26HTTxcTOJendFkJo4QCY+9hfV1oo8P05ooTWknUXGZdV6OLLEg6i2uoOKOTcPss0GzKRKxsExHomtKP0O73USdInRhEJwYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuBWMYuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuBWMYuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F95C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769048033;
	bh=kAOo3GYvzlf1yJYES6x/m6uH5j/8NmPMUX0gRLucCjw=;
	h=To:Subject:From:Date:From;
	b=KuBWMYuCQtA2TZfECmaBa4hiPFe6pPslU5QUiUCJX2fCprQM4uMMitnNTzBxR3kfC
	 NANMdHUDYMkKBL9zoRTEUk1m0QPayix1HvqoHpKz2AVM/M76PDsibDIXRQMrB845LP
	 CJlTEgrARWpGVMxT2z6kBOWESAhz95y3tMKiWHcf/lpSqBvo+V/4HJKYwIjTXozFEE
	 VgwW0jfekoO1dmUzLxLuKgD1zWr13NJomSaubS31yxDYQATLgV3pHh6lAkOeS+ahuX
	 wRTa1IGvBZlwePHjSEXBfxP+TSDcHO2JE0578OnCqpzP5ZpVnDJ5/QBU43uSPtdWck
	 CBshIWt01I6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF3D2ED14
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904803358.10099.2659546167463397601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f002b8bab158bf5abbc916e601fa42c6bb9e0def01970944b817c19c5c4f636
Date: Thu, 22 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769048033
