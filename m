Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55128386
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717310123; cv=none; b=TaRC+OeB1yvNRe7y7vAE5ESyyG75nrbU48bnrh1KKyUY/FQDC0/qxjQMq5DAydEps1z74PoxUUvdu974x6mLDZ+1pvFIoIUBx7slN7bIsVKbrkmXoZqXoIZd2XYj8IC/jqptSjOFWasnVfVqmvw0jBKWsqVnDcJ7zFFfZA4F+s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717310123; c=relaxed/simple;
	bh=yRBXR34VF4Ph0OoJEBl8TAwqsMJG54pR0/1cEBj5CZY=;
	h=To:Subject:From:Message-Id:Date; b=KFd3sghxINcg0cPSYuk/LUdjGmIEyiNT3y4qeI/m42vRh2g2aMSasudLLg6Od3K79UtUKBgCH2OL5GdwksDnj55ygmjy66HRKgfO0mAs1odv98PCfjAsVupTbyQLgol+EhNJWlClRAKmo7aKfblqeMXRa0MjXYkGHDda6/Xzwk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDTObXrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDTObXrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A46C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717310122;
	bh=yRBXR34VF4Ph0OoJEBl8TAwqsMJG54pR0/1cEBj5CZY=;
	h=To:Subject:From:Date:From;
	b=hDTObXrUrW9AGFX9LaCDAyNzlc3BOX0iYg8T0agGr1RX44wvhhD8tDMrCJ4lnk13O
	 Qf9E2sSs3yQeWL3hsHvW2mamR1SsJtMT8xsrq2nzHLvCnESjeACQ13L/QPNXu+UjIw
	 Mm5u46XRTY25ebiZKsiksbbc8/Y5SlWxBsPPS5UB3WVfmZOdllReDMjZfDsrahq2wT
	 w02/cu0MQob+rPnRBUBWWc9tdqBcT2crjsOoBI6U/U3M6DsUvvT3tIKy0GFqqT+cnH
	 gGF4WgwmNUJQnsUMOZdfUkexgrrKrV3Wj9ixSZI5nngUa9AyHLhWCAp1ae0lh0Ongz
	 sb5Q2SN0f3pkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25BAC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731012276.29182.16154276926130115035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09ed75cbe3c84b651f73bef38badb4a628d4978ab5fa4371ff23f0c4a5a842e
Date: Sun, 02 Jun 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717310122
