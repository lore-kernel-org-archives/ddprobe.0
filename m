Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A0517555
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779328834; cv=none; b=hrEQLN/n7FfFp1VEqXivTEmcky6pYkNMZMGe9Z4TA6DTnjn6ey1eC+y0+0NlbUq9prjB4urXAXm0xzrrYvihixg0r0fs+TAnBycnHxVZbyly4jd3dTjhgNe1bdMYD//gB9N2xkCj5cUudiaM/zUnxV7UHN8QEeluDeWBiOfwd94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779328834; c=relaxed/simple;
	bh=4jo3MaOLFLc+Kg0PUs3CyaymHErDORqKzNCrNNfDir8=;
	h=To:Subject:From:Message-Id:Date; b=VcGUHc5cynB2V1RqYrXsfcUQWE33fMZF30Gr7+kWMni5YgfGUsVBHtNC4tQOuomq1WXsLppjWg3hg3lmzi0+akwujapejJZ3aPulEQeTmEvBD72P+SN7PI8+G6h/QE4BrOY7a2oE/4UyOBYEwSwVDDAtjGykG9qyxrWftHY0v3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naHV6CZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naHV6CZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D326EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779328833;
	bh=4jo3MaOLFLc+Kg0PUs3CyaymHErDORqKzNCrNNfDir8=;
	h=To:Subject:From:Date:From;
	b=naHV6CZ/qUXSg4Bb2Fzh0D2c+C4+iticWcEjkz7Wm8ZJk4AEXf5bJ15sIxchx5Thq
	 t/x4QuibxLhjYQOBQsgLWAVnPaUOJ22M0Hj6CUW7TLQxMl6HjU+Hmhru9NP666GQ6r
	 H/Mcfml9wYRS985dfLmn8B4WeEXMrVcCVVCTxmeWMMLtxMVdZBbgF8uQBTUwsARx0C
	 e8uBJF3lj+Yl0jLS1Uqebh85nes/K0ZdDDMW19Tbgt+vSphlk4+pfROB7WuIedSWbh
	 k9nIxrPB7cK5WeUs4uSfE1n8w42GuNozuv2/d/CfkNI4hJtgps1gfsVqRnfefoQ764
	 cbxiRggAd8juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D61CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932883370.9048.6713769263218951481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72fcf44c8bdb9e53bf8475a32f02b90955cc185855b5483d250d3e1f833e6fe
Date: Thu, 21 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779328833
