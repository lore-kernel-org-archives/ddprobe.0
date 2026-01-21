Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96CF450913
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769037233; cv=none; b=aeIARutJRO/HwUdO41a3wE6Gqm++IHpsSGOLVwHLceDCVzcgRS7OSTGkpev2Q3RJtJdQY3uc36WzY/5ADg/OiJf3ycGptB/eQEF7zicNWbbHIjgnUc9BzKEaxLSy0lP0YLJOtqhMxehpTe6l3gMbHNjc+seIDkjaDlQtT4TKnpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769037233; c=relaxed/simple;
	bh=jOP4d0xqE3DEQPnilR1+YD6cmGS7/Kur8M16qZ895/U=;
	h=To:Subject:From:Message-Id:Date; b=u++C343kyCbq0Umf6zn51MURHkjY/NnuyWL+OPZ2vCpuuNU86JNIOkGfgY6g2A54ccHQUnwTckkka/wJxqLF5kGzh2qFLrf9mjsOtNv/SEjPATdWdJcJiu8Ee73tDOUa0oJyN61atdiI75lsPuf7kkz4fsyHfMY4BpGZY+8wV3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU4Wgq98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU4Wgq98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8599C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769037233;
	bh=jOP4d0xqE3DEQPnilR1+YD6cmGS7/Kur8M16qZ895/U=;
	h=To:Subject:From:Date:From;
	b=aU4Wgq98k8TOAKcHCZAHyGUEzE37q1JxbnMUJvoOTuvhS1jT37hUiUioZU90hssND
	 6Okm78Ts/zpPxVajvsltDUdPOP/kkHTTzRPRTMzUJdcsY32F0xjy4n+toIPFQTWPFJ
	 2rUN9fgXXck1Cb9mGQbm+3eTR5y5EdquWo47GzsZ2XEfoYAmNwQXQsfUttf/G33nVB
	 SGFFO92OVaehbWEXPXYX6xMJMTLTpkGkZSV1TyTaPPtShF+IbSOOFvBQ59znDruN2R
	 XnPTeWM1vvDmAbSgfAr/raGxMMTteGRdpKH+RCueV11MS63J6FzLFBKDbwG23OY3ue
	 PiG04nTJqfpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93283C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903723358.3576.2191382722386284326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980d681c4846be03a9ebe89bfc322559c78a1bf52f50235ea3c916c0b4d541a3
Date: Wed, 21 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769037233
