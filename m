Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881813A276
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719491063; cv=none; b=GArKweOk8CWIKZz5KVHqTIQ44Gxr0lwXED8fsNO+A4JfkaiyhdEE0Ww7e9/SgnS1C0n1r9E89sVfegRFRdQP2P0GcfeIi1H6s0ClgFmn83pAbAI2q2vxWMN2QO1pvZwDlwvoGQUjYbsu1skNNYUBqLmG5BPHTDpHV1dLFdP6PUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719491063; c=relaxed/simple;
	bh=SHWnt+FqecpgprLsDpcoOBPHtf2VsWb/tYL3NbHeuNg=;
	h=To:Subject:From:Message-Id:Date; b=MifMCXuCM3QhHBTf5YMv0LgTFtN4MclK1dQVBjRvpCb387UrHtfizdLfjzPWpNVY5YRT4HiPbxj8Emtf8W2HNRpM157CgDSjUtFB23jDu8u7/oecZA0zoRP3YBXjc0NquaJQaV84iCKQcbFi1gYC+Nsj3XRtImiDvlXpDyLbFcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O01Kj9iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O01Kj9iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F42C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719491062;
	bh=SHWnt+FqecpgprLsDpcoOBPHtf2VsWb/tYL3NbHeuNg=;
	h=To:Subject:From:Date:From;
	b=O01Kj9iEdClxXBXNvoNkw7fxPEaXXdx1nZuNjvQ1Y81U1ovOrfrgnNwZBbUAfodOa
	 jtTgIZCKJtIdp7SQHNf5glmoEyL+bf1sCuo9CJbjtIryvvWL1aN+za2LMTPRq1lMlu
	 ifj4F/2biqGUNCLe0uy2tVI+s8azRbwcltcmMRDRuUDPMuCjVXT5odHlLuAYnqMcPl
	 t2sw3+68mHTgR0W0vWOZz+9ji20Wnq9OYgZIlHTf61uk793Ru0kwiwj5pDbXEshOUJ
	 4Gy3eLEDMHdU2gbhP8zw4KZo1x80VE1GAiUrM9mKYH5BC30pD02fLy7iIuIhC0wmHp
	 kd3DwJDn5Xu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD481C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949106276.2288.12049889453061767342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1642c722210a19524e984fa8e820279676619108b2c1721475204cbd2eb2d963
Date: Thu, 27 Jun 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719491062
