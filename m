Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2F4131196
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715260943; cv=none; b=LpQ1Gy6BL+7uiopeJDbuAShZhVTdY+/OZmoAg+CNsUHUEOWKAAzafoLvYpcRIQvJHezqhNlSx1aLnUee32nycbps5OOcrfaZcD3Ax3pLuNK1uKO2mLdJ+hAcfDoxkpypQVltUzLH+sytx9WJb+GZTOyUmGm8EoPxP0pTR/Lyqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715260943; c=relaxed/simple;
	bh=0au3qzyBc1C6FYd0R7Kb1saeexNcwy0co7LFe/1w4b8=;
	h=To:Subject:From:Message-Id:Date; b=eciB0DH968LmFchEbJUOh/sdX0Eg7EqSxtQe77Mnm/pitQScgzqq46Vx+EbanouKKpPbTwoPcHtYoYt/Dks2LLfRqURP6ponhl7v8LaKtDf05HFk7BzwuhVphnlKbXwVyZ1ql9m/ZQSp4USn6sU3SnKcJZkfh1GuMaX1Zqrb9lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbqrPkvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbqrPkvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF22DC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715260942;
	bh=0au3qzyBc1C6FYd0R7Kb1saeexNcwy0co7LFe/1w4b8=;
	h=To:Subject:From:Date:From;
	b=YbqrPkvEhxedP8CHscEWQrzhWPn9WfyRxCPRtMv2LdbWHX7supwSSezIvpZZ5/n46
	 9ODkqiH0L70pkA/SUPY45a8LbuhmlfAXCnYFyo7dkgouwXLSpyvdyFrY2eU5uHHuw3
	 I3PRB6h1fIA9hGHeyDi7R9f1QPX/YSo9qMVkekyRwNx+TFFXPTJGReOOxfdG+b6g6i
	 FEqLnoHLjKvSykGbCHb4dk3xXT2xNZDxVRZe64TfYUk2ZE+qiHi/g0wNYTvDo4VHsV
	 onZNV5ViOzeCvh18VA/a67m7db5Bh5ZGR+qiqVgIKrWTFuiNPEo08vGTEknntGF4nt
	 hg8SN22Gd3Exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44D5C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526094277.23508.9226564996343258099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79dcd480bf435de89e723533de9c4cfaee48b8b5ba271c2828776a3669ba27d
Date: Thu, 09 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715260942
