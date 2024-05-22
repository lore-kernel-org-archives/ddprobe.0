Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DF71C6B4
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716358403; cv=none; b=AJAdXus8/YeF8ve3SfY+j8SCENKvW2q9pSmWM0IcLkPZHJSSCbjCvIzUnO02FpFejVBc461RjXDRdB114UTH5m77vmd8zh9LQSw0ARHS66qm4eSI3fQveSKe/4okYneDJyfo1uHHHAgtoekhuK51MGKbInVuOkGXTjH9SjUCwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716358403; c=relaxed/simple;
	bh=OECxlkQ/1iJ6medwwbeDx2WnjA/ruqnRlUCxLgN0hHg=;
	h=To:Subject:From:Message-Id:Date; b=YBppFlkvujQMYTzF4Pak0KVs6TzH0Zs7bWIrL7j7QC3ebdPo9MVdU9kv2l8E+3G1F1dy1bEqtOiS/1zaGbB+z47DVp4PZmFDXAyCftDf8PCbKLbnAa79GWcmkTDKpt9dNfHIhWaQUzB+9XbFK+w1rPsoUiZ+CAPRNun9pOXwm0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbGrL/qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbGrL/qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD28FC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716358402;
	bh=OECxlkQ/1iJ6medwwbeDx2WnjA/ruqnRlUCxLgN0hHg=;
	h=To:Subject:From:Date:From;
	b=MbGrL/qB9S+eK0iZ6xe71S7P68bNGG1BVT0aX6SeDmZ6KtAFOhjwlprNxXGv7oh5M
	 q3kyp3YJ4OTbGABlTYSZdJ0w3w+q4NDAaBjlMczy/yLTxMl3o13LEnuE1QXRulA1ux
	 51bT14qQ5518aCcKc62n86jgX8kbnoGdGWFlmCllx07TWmOQZGAQVatglUZKCdxsd7
	 EIZCM2M8jbznDQOkaryJnfvPXvY9KNKSML7N9ptBwBKfabbSIa43kMfyGk7wYhOGKB
	 p5+7Kg8jG0FtAgj+H0/16t05f5tlQcOGXvAngrT3wI2AYToGfq9i+c2F7nY20Utz7o
	 niZ9QrrTo3XqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB254C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635840275.28948.9204986985726412612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecf17c91765824828a9a5628596da26e9fe170e183433a6eece74f2dda6f342
Date: Wed, 22 May 2024 06:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716358402
