Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387D51E04AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750875594; cv=none; b=XfzXlhL7y9oSju7emwh4K+sGLoqzjojlMPEmd/hscuQuS4KGR6dtvUgDyZu1hiag4KxkbF6++p4zB4/5xouP+B0kfd0aDw9YXxHZsD+5qSe2FvLvBdD2T5pQNoFvN0usN6YxRzzrS2iPg2i2bi/m6QwOyvq4tPBL2wEggfnHTFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750875594; c=relaxed/simple;
	bh=RKj2ycwbilA3BIU/qh784KGJJbeica5GxmSHBR7LdkU=;
	h=To:Subject:From:Message-Id:Date; b=fhp4zuk253zajD52hL+xIAvjwmwkbBOgTqvuXeAVpnZ/CNT04m+xHFZVSe0P7MDctxTcQzxh/+aFhjSk5xu+l45FeOShwWdSCEWgdn++TVyicMOe87Ubz9uO5RSNdUtiLvmdG873ctq/frCmiKkBg6MDH2Jad9OrVuRQ0XBz9L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc1yANFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc1yANFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750875593;
	bh=RKj2ycwbilA3BIU/qh784KGJJbeica5GxmSHBR7LdkU=;
	h=To:Subject:From:Date:From;
	b=mc1yANFL7qHvGQdMwA0LSKILou8T1bOTRuEKgxpidawp24zsXoZJM5R8N4WRCDFYf
	 9FjjXtO4GKEbXMao7xni2J4RB3LajtbPkAVDPgTTLI7iJxJSo6wq7BgibXyA/4F112
	 ztNmHWk5q4OPoHgevJOPrns+fPqixqknyC6JlIT00feZ67D0TfVNIikHNu9soSG+8+
	 LX/GKBodqbBsL98qwTtTDFUCIh+f6P65XJVVFDzdEiXW5tOcwnrDwqUOzEO9i7S4ya
	 4HMqD0dwVH5ykG/tZoSl2zX/pa/99xUJNioeKqYYaZQsTew4ypP+dLUXLjLNm51/xG
	 ZvunEGtI2oIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C46C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087559358.19313.10837533517207843108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bcf478130f59b7ab4715b13a1180d8aa1b9a29de073d6c9d89ccbcc3c81e16
Date: Wed, 25 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750875593
