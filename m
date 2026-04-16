Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2771A2E65D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776308854; cv=none; b=kBF+czAAj1oSJtEbWTzshnOjx66gctM3Zp69PMxfLsUNA7REAZKWFsGFrPfQRgdx2AkGfLwpYm/09hru33kBTmOxDCYaYgaPFQrmykP1JFaixtNHY1TTZ1lcW6NUFMHJCqBM4SBFIOgBOdjV3bYtl4KaE20d3kXsnAf6xZaW0Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776308854; c=relaxed/simple;
	bh=tVAbbjca/FjLnwZdFMozg6G7cWMa5vhRuiioStk2eMs=;
	h=To:Subject:From:Message-Id:Date; b=bqwBLO2d/vnQfspAujpQeaA11bPkrQb3LSFN/GX6Tp36lzPd97Zxv4/3ZVwBRonzx98245hjIMeaokwe44KcnZKRGcG548FrgRbYQICd31KIE9qXypbDDSjtaTkAL8RnQlO9tps5c8xUPIWOyAj/YHqqoMdDylhBJCB9Qxv99eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llq9Xf3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llq9Xf3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0EAC19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776308853;
	bh=tVAbbjca/FjLnwZdFMozg6G7cWMa5vhRuiioStk2eMs=;
	h=To:Subject:From:Date:From;
	b=Llq9Xf3f1sBv96W+SMW9/BoJBO0ujizX7duEFDdne4IG7lvH3teyJoOLsisZyEAv1
	 ViFOFnxSjdInX638e36FEcFdoKgVPc82qqp37vWkzPb73sdioShFDFhEpV08PTh5ee
	 QsbwtHC9gACbFM0Ve6TwFdZ5uSUfrtOqMdM3ytUd3hpJu/rxH45UveWFcvjC/J4xPG
	 s7CwNn4xuOsnDz2TcgPT4XMHEidbu0wNdhs+4SAjm08GeT0mGW8jZ6yc+8K3PI146y
	 mUJVbFTnjrwR3/D67MjeO5GQ5OsyuajBF2bk7gKFB+xq7ErCnxnUiRemudCHVRu0uO
	 Xvz8Xf+oE7KIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA371F433D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630885368.12847.16725437137797669252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79178744f54a629c70b360c10cba90ce0c146f367f9910cf039b2ab96c684942
Date: Thu, 16 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776308853
