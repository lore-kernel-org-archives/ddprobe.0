Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DFA1BC5C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732238154; cv=none; b=UlyGRBjPk8C03X0dhyCLTCoJA0OPCLA05XtXij800GB8kyjSEx66JNPa9UCWNfcoLdET4ZZfwVwkQm/ywyMcFFUlV6Lzfcdjuks7/bky8YHPAQleH1l/PJExgu0lkUqHpzFBlQeSPCfb/QkUj4Ur425ckbejT9p4wG9qeI0kbTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732238154; c=relaxed/simple;
	bh=DSJ3v6eZcEf3I7WJD0QnyuEku6amK0ySrHwWIxjVxKM=;
	h=To:Subject:From:Message-Id:Date; b=OrWNzsAKJsS2aLlo2dyvE4E/xsoCyB789NnOXq83KZOCRqgSUheXA0Fd0I7EzPIa+cw1osvdrdmOQ0FeQk3+Q+nZg317+TM/5s+X1fa/NbVAh61tykPlxHi9/5f4ltybQ+nKRYMtFINNyFP279yfdTJgI1kH226fTnB620F/KQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTRyVY1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTRyVY1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75BEC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732238153;
	bh=DSJ3v6eZcEf3I7WJD0QnyuEku6amK0ySrHwWIxjVxKM=;
	h=To:Subject:From:Date:From;
	b=VTRyVY1+qX8ypGGvf/jassWd7ZmrBneB6r5a523RfUEAIkPkILs6lrOp145fEaJ8v
	 lEHIgoTWltKrz5S1wvCGMeb4DoBo+W+bHK+KxkmFWfiP3EpbfEyM7c9kiACbQpug83
	 uLXsx5i9qiMNnV/TrJVQtecfcI4A/rElTEhffXfEm5o9s3xTQ33OorTHMil2itmJOD
	 0vUowSqHziza7kk95/VBJ8w7uPx1LdR1341c796po1dctane1CqqNfvg4i20YWiFZm
	 dm64x5LKzG+XxoBr3MCpCWbMUfeXszPfqF8Td3ZHeg42pSq+pkNyNm44SDsb6yR+wf
	 0yBWpSGRiGqYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA25E65D0A
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223815359.30607.4489194957495191555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d61351f6d0261406dfbf1b226f69e32729ac3688833be5400cc5422ed7aa0b2
Date: Fri, 22 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732238153
