Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFAD186E2E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750910994; cv=none; b=lNWMfi7JacUWZMu2/dhfE5rUKJIWQV/oMlVV7nVjNPo+iY3vITG5e6BI9HGekqqv1Atk/1JPyYwJy1Ke3YBs5MpPY8A5ZPg+Fmzx5ObyBip4+DfoNNZI5ZKqdGePDvt6vTjME4+JZtmXm8JDabR+IeolXIa3Z1ZGBzD4ZY+GQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750910994; c=relaxed/simple;
	bh=Gok98V/0zvFO6r2rT0Ugn2CUrQajKYrqw2lQUHU4VrU=;
	h=To:Subject:From:Message-Id:Date; b=DUr9LXe+G4ZxzcjBWSGRHVoG0MbLDyQqy6UGleOqy1Rpp5p0Xd9Nfyfu3t1U8S1eemnjHs1eB9Y/E4/5P1lRCwV6NfgYobWVvIko9l0nywte8RI7KI0L6HCQNZd79d6JTkjWQuv65yqAi+aY8C/R6HMoWW9Cnh8WvZyKKBO7aJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB38+nUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB38+nUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750910993;
	bh=Gok98V/0zvFO6r2rT0Ugn2CUrQajKYrqw2lQUHU4VrU=;
	h=To:Subject:From:Date:From;
	b=OB38+nUnds2u9PNFNxNzRzCKWTTa6LzQyadmXYvklIS3yurmmUE4yOA9LRbMVo229
	 pm/j6Z4zgy3+98dxDE7JrR3QM1cgE202V+cemx5s2wU3diydZ1v+SByv+q3KBXWB0v
	 BXCG6cNsCPIVweUOUtSobsZ3l25ULRnGNc/A1I52Z4FPE1tE2zHA9yTY4NJphFrx6s
	 FLJu7J/T6vSbxXVRaCSFt8Mzo8yyccmTVVdrWoVETTC33Er3HHsJYggptciawPjMsJ
	 sQeZL72ckG7iVgfc8i9pa/pcYv7CbUciqpsR4cpA6HO7KT+hd5deaLsQXIjHQINl1Y
	 wQdVNDIwYVaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E8C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091099358.11581.10478537620863060609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36c8845ada901c156931448ae2d553770963f8b7a75456de175004afb3e8073
Date: Thu, 26 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750910993
