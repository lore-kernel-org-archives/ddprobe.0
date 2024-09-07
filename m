Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1FD1B85EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725752154; cv=none; b=FaVcIVAT0qd6cvoTnhGRGMJCrpK+bah7HJBWIqfqTSisUJFjRQZUCPGIJgzuBdAoAT2MgnI2bzQNcnk2Yq/Np6Oo64qGUZrUn1ohJCZcjxEeWZ/sXMojYx3aGOusLsGRpCn2SbhZ8xBWKcYtLBi6zcCdfvB9ADbWsOi0IU55EnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725752154; c=relaxed/simple;
	bh=six/2fp+47dGbh1LfJupst5ULIO7ajDFUsW6hsElvuE=;
	h=To:Subject:From:Message-Id:Date; b=GZxmbkwO7L87lu9/DxpGHYBmgvdhuBOnODWZvb/d2Q3Xbx9Y4ZoOeeHxRShabzHTw9o16yMjxB6zpLlEuGouvBh4j4LQDKbUGCHqR+BuXDz4eqBZGjvtE5/SRSDniYMvJNkTiC3MWV1XMvZok8Sd63+kO7mxRpaXNFD6PMp0C+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctzljLCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctzljLCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E0DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725752153;
	bh=six/2fp+47dGbh1LfJupst5ULIO7ajDFUsW6hsElvuE=;
	h=To:Subject:From:Date:From;
	b=ctzljLCTGFG7j+6fkHgJYK+o4PIEC4m8+YQuJtV90TmLMF2xH+/o55U9laudsSf5N
	 ZF1emRLkyuAusHFLCvem6ukbxMO0LPVxxVC+GQBhfvbenqWyg0mHBcGH+qONnZ1qCa
	 9dnhjWtRuZFjWqFbyQJSun0ve/gBJVzaUl86mFWUlpZcd+hxkUKJ9TnQ/gFWGJTxdI
	 pjB2A3N3hGJHcJJ3YgkRUryHONY0Gx4PNhs/Ja+6/+C09tXCdPjkXzZ8PTts5cm9Aa
	 9/5zFJinfjyOdl8VlMSdxjNG/hiiz6LPJtCTqxkhbCqFgXQ/Z1RExZb+Ynm1IipwBK
	 PtAXOxBRrXl9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC71ECE578
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575215360.13257.13163547031759752862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c365571ad20042d4bc6e704578f438006e1119fb2a0abafd7dc8a09efbebe8a4
Date: Sat, 07 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725752153
