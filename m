Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E9D3DB321
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792343434; cv=none; b=NLvGDfYIdHgQ6Hs9XiuDTd+QDVOQ8wRnD+eebgjfT3xr8UV9WcNk4hC7IUvx5vkAzHiLaVAJOgtRoSjZQ63/0L/d6X3+PsnZbAK9OuGO4jOAcCsKbpu1kad4qprQcyvkXaW1ZmbmF+lOfptcY2TNZE6jGiH1Noseq4i7xwB7H+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792343434; c=relaxed/simple;
	bh=h84XFLD/+CpYMjK4pAk/bXkHS+E//JDMcDUnsH/fRYo=;
	h=To:Subject:From:Message-Id:Date; b=iGOsjvORXnIEcG6/LTIgxefruuADOgYQcM36dVgWaDkTAma38QVeYP6j0OC+QrqFBcyUpX8Z2K4WsgMf6t8XIi9WbDLoyKefakoTozFAnoPiz3MRnIx+iH0Wab4lKrbCsfxq+mAuMhVJfFBoID9L7yt+xgXWPFmE/rUmmJo+Mmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6os13C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6os13C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD41BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792343433;
	bh=h84XFLD/+CpYMjK4pAk/bXkHS+E//JDMcDUnsH/fRYo=;
	h=To:Subject:From:Date:From;
	b=J6os13C/jxEM3hhTdyZmnIn9/Qj9ZT+nucdbMBHrP0wKSM7HRgQboEqlMhhdYjfOs
	 zXMkXCZ0q6y87ppXXDgTBZvHWWXjJgbYGlt+n+pYSjH/yrNyP2RqcH46UWutldvZp5
	 6nY3bAloyBCioxhDdH89WQuPz1gqSPHaQom5uIpMLKj//dTEaUaFYmiZAiH/ZM7Cun
	 7o+QdUnZe8rqRCX9+Af4raDK+OmNJ2gA58+O67Rgnyr17eY0bXMZ2UlBcetO3GTf+D
	 EbwX927xawNYjqWp4/eprpg38qhtboH+J1Xox4Q+uRcdPO70afOoLtrgVA80gS9TGp
	 xRwuHZjJJn3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADBFCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234343375.18318.8215023436308259203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b0c6297ec59de079e75cf3a57ac37aa66d09b67f13867ad826b6d75343c76c
Date: Sun, 18 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792343433
