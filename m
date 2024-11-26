Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062481D8DF9
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732638954; cv=none; b=iSyrnuF54CDOOnmtoCeiIseqPh76/3xDHT8vE9Yq2LXel3voK3bCBIjPzgJjNCf/Likk1qR6dGMcTMWQjz/QlnnAAxg2gz12MJYUNV8Y3h62QX/XGHpZEY7Q8Yi1sX0AEmFB67eoSN9YU8sBocipefP+xDf4mQvScEZWeN3vcOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732638954; c=relaxed/simple;
	bh=dsi3P/OgwZY+GPA7C5/0dxm68X5Jpku9hfQ45E52xCU=;
	h=To:Subject:From:Message-Id:Date; b=PGlFmqSEkXabEv+CAAHPakM477OhRCV6F0yJT0PXWXffsm1PJ4YM6jg5XglaSCXzrDA2C+a7eT2q8zd1/h18/pfQZJ71AqhXFCWFUArGsOQ41SnnhUHp/VOi33Q1+WV/Ir2Rg6dvp9+esN1NAsgfdM7dxxTtXSr4G0ZTyOWZeq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJAdroN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJAdroN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDDC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732638953;
	bh=dsi3P/OgwZY+GPA7C5/0dxm68X5Jpku9hfQ45E52xCU=;
	h=To:Subject:From:Date:From;
	b=SJAdroN3iRlYjlIgETzxpAs3Vhc0xTOXZ766CQAWQ+T0LVthH8pRS60QrJv5KEvQC
	 8wA85ng0QRhLG4sIkGSE7PiYNrP0ms/9562orxIei/yjf9lLTTOoT5cbSuNVDJodfH
	 4awBaviNCfXyG7L/iNS3U1VYpGpJtXhcc/cljjNb9wWY7UTwuFoYDymA0SM4IWBlAD
	 E3AYSlFGkjh+XgECIK1gtuTB7XWS2gEudPHyj/VeXioyqXsb+/SLtn8IaMGI5mKI6W
	 F18aKdTp/Rz0Nn0dFtObTkZIJ+qii8qF9e183SDSYt5YsrR3DzXE7cgl1JnrnSDZgg
	 CYcnJ19We/2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B8D65522
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263895359.7131.10823509320214896191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae94fe15b230183dd13c95f1e0477ad44e1c74bc948b255b720f7526162a60f0
Date: Tue, 26 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732638953
