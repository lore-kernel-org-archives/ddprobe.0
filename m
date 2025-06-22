Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39326219E0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750612194; cv=none; b=UpcLP4wSZmX6jDrxgot/GVnw587+n4Jsrs0D3F8IgJ5dg9EHgQPiwpsbQaCETaHUwOR9i1J5wvE+eOnAmBXph6itI+19rw0iDn9PPjBh5ImJsYi5nNzy8u8JIQjYkiFLxUMg6NnjJOvhA9os1Zpw7z8/584Pfaca677xZH0DVso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750612194; c=relaxed/simple;
	bh=bGsuIRfWQ4InFHe7zF8Dp8YHSARmGyc/RCCY8tghsZc=;
	h=To:Subject:From:Message-Id:Date; b=g9iHMR5b3aivBePTGEx3cyGGe+y231+oBtTTWXCPO5reuVPRm0ZHu9xMgNiFbV4HBrqIjkSS8rvdMnapo+ayUu/RGREsCP6SGmB7W5N1KTlvz6nPyaSErigthV8Sq5YnfEFyxAS/UCykAkYvPGkJYmU2tRwjW3Rs3xyEwQnV6Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7VP1qSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7VP1qSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750612193;
	bh=bGsuIRfWQ4InFHe7zF8Dp8YHSARmGyc/RCCY8tghsZc=;
	h=To:Subject:From:Date:From;
	b=t7VP1qStQHIBnH5k43bySF3zfLqivZdmAgDXc94+ukav+rwkX8rt8GeAna3T+kMxY
	 rB2iCAMy+F2sZ7lAfhozmfmX2JxiSECpjyV1S264x/633EO2T1jqaY07q3EXgoK2Uj
	 FgKt4lP/PRFhdaT1heROCIm/dVp3g/NF7+hmh7rqZzYlPChOEY0q1C5wem+bYQCBS9
	 yin70s7SkEiNxTpkiXPL20K6eWDSBrV6FTMlv6eVF/4rKHGG32hXNrs99Xpu6eDPgM
	 kBvSNINzEyGL1If6oNN0UEvVttPrCPodBYldX31oo7UqZqttR+W8JiIGuRcP5Cc9Yl
	 52IVUbQPEmnlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE4C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061219358.16677.14282692398269591917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ed181ba37c3f0b884a57e32568b12f985cb403ad3eea467a9e6b50737d18ac
Date: Sun, 22 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750612193
