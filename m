Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ABD10FD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753407594; cv=none; b=Efk7bxIOds94ZFcY9GNitS6S0DxG1sssNO2lYJ+PI7CoxJXUccAg/6SR+4I5ofmxnBuaxMnGIyNCn2wSkr4WcIXECmx4jL9zOOyxLuKmColeH6dCg2sjnvcwA/VwYLlcEjAdr3vnOzfb/7bqHW0OSf1bieoLDwVXkVL5IOmEfkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753407594; c=relaxed/simple;
	bh=E7WQgAUOaBv2hV3PCiQuQUJHi9xnKJS2sT7G200KZEU=;
	h=To:Subject:From:Message-Id:Date; b=k5ApMB27uu9rbDsPBvg6XT+3JRB+0/JpChDzHAPL+ndeCcRGKhSOm8EDzvsoojv4vE7NM2iBdlx39uZh0C2Wh35EqkqPBOrsFolkMVT+Ge2WQZuPfsDREiBFpeI83NQLw8AE+3vYaO1WpQ0uwTGe3QecwYGPos/+tIY3VntqvOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLbHMOkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLbHMOkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0055C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753407593;
	bh=E7WQgAUOaBv2hV3PCiQuQUJHi9xnKJS2sT7G200KZEU=;
	h=To:Subject:From:Date:From;
	b=TLbHMOkg8eHB2ZSBylXDpsx3PCCJJgj9aLIbqCyNfP34eLEylzDZdUhZureUc03iW
	 KrfoFNqRyOBHuRha5/5LQXYInJ3msYA8FTVdHdW9b4r2XJinm/b9ULBCbMyMD6sy26
	 k8v6ty7GNo2l9s+AreW/CJqhCv/DoMA1LOjikLDwWOIXYxDT4A8z57mkatNZC23er+
	 AlMeyJkJXa8kbvKBDnwpduoFXO00XGNsunbo4+t1jI4DxWtx3dHIKkxUbKwxjOPJDT
	 nTSXALKoXhYPWwHITp7gHg/XbgnmZmByHOWvyCVXfFSGSbrXjnusG/x3J8z8K6pFvW
	 kzG1FDJOPs5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E0C87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340759357.1049.4227923568339847774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3013a0848a86a9b145ebc64b81e63119377bb3f0e5f4259a94b1928b89de9a28
Date: Fri, 25 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753407593
