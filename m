Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352DE1EFF8D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290194; cv=none; b=c2UzQSSImwod/gtbBWCdTAUS2vFXrV0NWq3FZEPEjTT39U7UtZ2TrctaxVLK8pdFhVVXiXyBSVteWtZzeU//KDbYtUoMZx076rma9VonXEHh+cWufRTY03GS7RMIB34lCsnhu41VVUoRUf4aRRwswj2yhWDHbYqeLrcvbqgse3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290194; c=relaxed/simple;
	bh=h4dD/BlzMt9qwyTChY+05qmRchn5rRK4Gz9c4nOG8Rs=;
	h=To:Subject:From:Message-Id:Date; b=CkB9HbHtQbCtDk0TwX6u6sKniRbcHnIgim+e9w/Ns6pL6wNKdLC4wkniBWv4bqgU4SwLkuj5wkhxZ+2FM/WP+73iO6MFjPkU0j/tXMcG5uaHUa/7tGRnIzIfZ03zgoGq7+xCWz9FGtwMDq/x2OUGJIM00siwcFoKdFnICYjUmOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7bY3yyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7bY3yyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A254DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760290193;
	bh=h4dD/BlzMt9qwyTChY+05qmRchn5rRK4Gz9c4nOG8Rs=;
	h=To:Subject:From:Date:From;
	b=e7bY3yyZiBOQFVQjrTaDeVF9Rec6Uc1fpfiGhs6HQMbCPV5Oa9Pbvu5pR2+UpGLFO
	 1WfJr/NVlstf3Qm0iCKe++3wTjbWMSlwrPu5GP36QO2VoDs1HxCCI1oGuigWg/KaAR
	 cvMAefoW5VlMuTChoc20g4/MbUY3DF4/+4d8Al1Tt2INZIe6tJxqLqL5Tja17RL0IC
	 vvnuRVYblXRv4aSkwcjacJzASqJH3KOk7xYqFv+HQWD8tD4HMS3+BebQ438dlm2qkU
	 aNGoJSBnSLagd3IO08KCevWdxAwfMxpRmQTLb4oeRfNX1ZduWxu+w/xufoMiKgm4yP
	 0NxtiHT1Nqw4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E647CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029019357.22934.8576601417647849476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f595f72d9f5b03344b2c5cde25b88bbe0b2d99ee18a99ade707e7dea03622883
Date: Sun, 12 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760290193
