Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0F0246A17
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736932554; cv=none; b=PkFTJwrz9zDmQaUHmFKoFXf24idO1LwZNRfFtaxhtxTe3z18eFZeqPv5n+ILS7GKOEOyC4FQvFBeKPTOKEnlo2m9BUkld72EUj+lwGdopCI6s+2gS4LmwmwobQCqJ+s9I3uREL+GwOgm6s6slBoQwPXX45JTwowgxJo8tnZm/FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736932554; c=relaxed/simple;
	bh=xwL57TiKR5iBpXXTC2wrGz0lyF20ZJBZVMWFR4MYmws=;
	h=To:Subject:From:Message-Id:Date; b=HfyK2RcvcuHd4SbzkltEWk6ByM0ad0PIjACx6U4GFkNRqOeZ4Tw8yxKQzLJxIwyzUVf22rJNDyD7Q1GPFAEW6u06Nl6ZCCYXogg9iqFY0QnP8gcfnKzoLig/NXeQNiOM/5KcORpLgnRVd9XgA7Ov88XOoTpkmITepaRVsfb1NE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDOaaZ90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDOaaZ90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72B9C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736932553;
	bh=xwL57TiKR5iBpXXTC2wrGz0lyF20ZJBZVMWFR4MYmws=;
	h=To:Subject:From:Date:From;
	b=ZDOaaZ90Io4376X3rqt23YNeZb8dE73jkGs0rRWKsCZ07D46I6Ij81JqnlCykJSY2
	 LIpeQv+wOjODodL7Zary56mEwBzq9wBwYvTDIwGxeiN5Yu9rP0Go1e6r0t0yG2PYZo
	 xb7+hV5IfzfYMpOG/8YyDJBa85DmZ3sbIpf5tqzlY6ICvPNwa3lvsvMmj2SwGigTeP
	 SdiVVgEtPZZFOGxo3ejFmwpcyqSOIF9WIsEnFgOQKxRzrpM2YzHPFfSwvPJ8UaeDNe
	 s+B4/V/NQPz27C5O5jUqEpi2lrNy1yUwtWA+i8wqadVXRkBFw8dyMkKjN3riKBRLTX
	 P+xogSCn0f6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10ECC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693255364.4721.1252181246688642618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30637334aee3a9b2d95ae6573a17401584c13961a934ba8609ca0a4d227e4b53
Date: Wed, 15 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736932553
