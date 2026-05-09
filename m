Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC9530BF68
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778314655; cv=none; b=tUC3ie0YL0hzaJXUC8cxt/rqJ6DK84SGpMZLTYDwuwFdOVpYg9pD8J5ss8+hAXq/M6lvkI2nYIZoxMnrr8j/fFvDJPenl5UAJYXF7K17n9lSIdt4bOsuxa0odK9mOxp/xHmgbcexZziOZ1/w+ml3mZy0DaTr+Deor4ObX2eZjYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778314655; c=relaxed/simple;
	bh=HBpp8bd1yaDEInKNjbZyu3EDmt48ycuwVBXDLR54qUo=;
	h=To:Subject:From:Message-Id:Date; b=cNXUEhSL7/b0S58cvL7yEd3m2Rl42T5Yauu51GVm0XYZpMsD5deXWigVd7Ut7NjbYI1qlsnyFVePCs5403FX8SjjCiTnJgM8IUUldiATQaKHukIUHDX3U224D86mn3KAfQTG+Kvn14x3clZu5NaXJJBzdJeR6CwX7SxAGTTE0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3nCE9ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3nCE9ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 38EBAC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778314654;
	bh=HBpp8bd1yaDEInKNjbZyu3EDmt48ycuwVBXDLR54qUo=;
	h=To:Subject:From:Date:From;
	b=Q3nCE9riO8ycF+HrYglSeb1gPFEDC08b/k+ZDOb5lXnjfG5IQ9wRNeM1Jqc5xEjpe
	 aNvpAz2kPDNIBwnnPS3mKDgwNHFmagPaZz1g23yqbKPfMcuuH+oHF00MmGEDmg/0WB
	 YFb1dizlnGI/c483dG+NNvNZdBtrszN5SaSLibyUzC6Wv3yKlDlohZoTENh3TVw9hF
	 8x2KUy2PelIpbqFEktB7PD1SbCrLFJp2DDE296e8G2ziqw5kIQL/AI3DIJ4jwO2OlG
	 m0etySgPzfh2lR4C0hf1hnbzRYk3RLNEqoK3uCOGcVbcpfLbgDAs7dgeatnKlFsT30
	 +qfKdxCp7Ss2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2DCACD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831465376.2395.10528258477502049286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0f5b4579a41af7f971887133f1fcc32d43d338c37019a2cb4afca8366ee45e
Date: Sat, 09 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778314653
