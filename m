Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419CB262B6
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717356923; cv=none; b=l42C7V7ZbcyAQvuGQ7xSjwwEa8TzY+S0ljOZszM7vbGiDQjEa917aq7mIZNcWcjLNzjZnBhu0mC5WiyMQyBvjJ6h5L/HkMaIdHEgMo8OMedJcvUUBen+ptjngAKnkY0JKTzuYP9Osd62a2mjEaLI8bIVgSR5nyJv95SUa/TmFvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717356923; c=relaxed/simple;
	bh=XmxHaF7OY8Ww4UnCaVsaeiApNSw0Zj03mfWZjz9dSeY=;
	h=To:Subject:From:Message-Id:Date; b=WmgohnAs+qa2+qFhkngCadcqyz9AoUhHlQRZfXT36mArI9wRoklfghztl687BFV8MsWnZ2oAdRzexQwC4tQlqSiI02dm9nGnMbquo6hxesoC3bXj7KxNfoddb9rfeJ4ADGdFfTRBUeaTmNkwc2BdNFqgWTjjZuhBYFhcf541oE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFWZEtfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFWZEtfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABBFC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717356922;
	bh=XmxHaF7OY8Ww4UnCaVsaeiApNSw0Zj03mfWZjz9dSeY=;
	h=To:Subject:From:Date:From;
	b=JFWZEtfgaK0Ee6QAF4jCVCtAgjcsLI6Y4mdfckkU/IAfuYdjobJbUrZ8wre1P81sQ
	 iGgT8XrwiOJRRNzqUkjrrNk37rAYnGBbMTyCGt9r4r3T/vUpFl01I8WnNHtcNFUlFp
	 8J1QH0RAj/FyqehY6XYmVh1rOI2eGYUQCMWXi/SXGMRSXIl/MXGXGQMtcH/ps17Ah2
	 Wa76hX71OhWWX6pY3YTs1spNNlnaz0gL6AiqPjI5EEnguDVOFOf+j6+4PGTstJneW6
	 +m6XWbeqqHNMLvDgl2W5fjWiP8BdNIF+1poBqANaw9FUkuf8RAIRhML5Kc0KxV7jSI
	 mKyo1xgngp2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C441CC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735692278.12571.14953175376110993172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47bef41da57d21de625e6421f95989c3651fe9b1331139b464d59cf3a5165e9
Date: Sun, 02 Jun 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717356922
