Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309C7215F4C
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745647194; cv=none; b=RQ5SrvtN7MJeMlcElLGWrGuJMf4/7OuzSpsb96LdibcSwus1B5V5bPL+MGVaa1Gzi95Kmzyf2IJ8ro8yQkLSyPTM10nhH1eTRDZCWmkqKg06eu1amPrnoUpVly71c92cKwOFLEcqDieWp8BlqhoYxzmoCuBOrX91Kw4+vn2y5Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745647194; c=relaxed/simple;
	bh=LfToasmwAluvr33CqkUKtSrVc9PWS3yT09nENp0CgUs=;
	h=To:Subject:From:Message-Id:Date; b=da9h6GXfM1AVyaualRikitM1LCmVELEoa9FSNodqwtQILNNKtvkkuxPf/oYjlituzguShq70zy1klXJ5Qq1jlceGk57mwQw6Z7hzxH1i75pND2ahFcvcaN3dV20VfkNQtBkkXX3L01ZEZcz1ToiFu5ZG2UuuuX2uqqbRSAlVOmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW19zfJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW19zfJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745647193;
	bh=LfToasmwAluvr33CqkUKtSrVc9PWS3yT09nENp0CgUs=;
	h=To:Subject:From:Date:From;
	b=OW19zfJJHaedKOH3N0YP7BFzKpKEoIQkcEIZAq7+VRQuyBulRW9K2nMeqmC4kQluN
	 slEzYSATCBpBg12WBxtJ64vv8hQDuCJXQ8SuAQ8UI5ccqtzJP3l3Zl/1/h1gRJsJEW
	 ti+VlPTbwlUkQB/u6fW6SNRxBCg9dTTB+t9/IREdg3kQDvQcYjw+HEbvtukySyueWC
	 jUOej5e8SJ/Zi/zp9Ye4x+tE1vBN1suoqp/qwotAYVNv2xLXUno18Pj7ACZVdVemF1
	 Jl0YcaiptFLQrJGQJLEn6/+kWkrcoYvFC63TsOEEdmtoyJTDVH/koTq0pyajFhTOZc
	 ZL/mIdFQZpPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E2C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564719357.23740.6029510256540359715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da34144527433ad4c999bb2400e9ac19d7e90362dfc5e351885f60805dc103b
Date: Sat, 26 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745647193
