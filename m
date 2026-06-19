Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C431E4AF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781849194; cv=none; b=k4nrzm+2Wv4fJAJLhjPhsPzFqDReqcrUTkdYZoeqKi1sp85hpphMGcBMQgyYhFpe2vTEEQbLPLntCF5H1PCdums1ji4ypqzvtobF13njlPHGqbcv9UaP+n/HGgIjaTYz0/gobnin/0eXD+RCs0w24s40xCBaWsAvysR+mL6J89o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781849194; c=relaxed/simple;
	bh=UNXLGU/Mzc1Uu++txegqYny+ZrdXlaQEdmZUPNIJgPk=;
	h=To:Subject:From:Message-Id:Date; b=LdnBWhLqWoY2+vfwQMhJIwvtVouxqymH2LQcXwHL02LLK/ksa6ivM2hEDYhOx2ghqOoyqoUn7xd+wZ04bB0ZAARUW9MwDSB8oDv7dLFsZn7tm+H5FvfvJW/oJg3oanTjvJVYVq6mT598uWJ3zoVqAtw+JsgDLotk/t73LfzSsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsBSJKiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsBSJKiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB00DC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781849193;
	bh=UNXLGU/Mzc1Uu++txegqYny+ZrdXlaQEdmZUPNIJgPk=;
	h=To:Subject:From:Date:From;
	b=JsBSJKiW4frynqArNAM7O3H/7ITy6mcHp+9Uz5wNCXSqFpFVnufOr4xK2BXzhlXho
	 Wg0BlXngob8/dJSD+D7rQI544FNRUzewSuiYcH8M1085hkjpe0GtpbNphGBtkuXnu+
	 8BYK6N1DF7F1NTl1DAuj6aOLlliRENUbXmNcuO57gi9KN9LoFX6HduYwCo2LsNnPNu
	 29tzMSIAyj3ARB5wm0PHTETJ1JBme805AvP1Ft7zuOkRWTVpjrpgwhyB45vjgrr9th
	 nVE5qyFLFwUgxVWCBjPTQLzs3c4T3b3B69i9WIJw6nhE7hFogI0uTo7WTTq9/rucLN
	 PM995H4P9q6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD51DCD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184919368.32546.14572867888990860619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33a73b555d4773abb1266b2ed18ef825368f3c3eff08344d4fd5a8fe9cf2ce0
Date: Fri, 19 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781849193
