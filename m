Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC8E1F4606
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748963394; cv=none; b=P5Sf+sOgbYKLrPcRSwI+W8S8GmSRE+dfhWL0DhjuIahzjHlW7OTv6iALpXi/UvG6lNaWS379qxuv4ps/orRhwJpFa6GqxZf0zxewodLbzstGhDoc2LbcGL1raeBw1OyykcTiW/aJGFJD0OqhWGC0NYTppdNOfG7nGHdZHbpMMGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748963394; c=relaxed/simple;
	bh=YLQwz6EOqTRDOb2BhgemuzxDq10o2Y6b91LZVwpwFjs=;
	h=To:Subject:From:Message-Id:Date; b=m/UKVzqYoC+hUmoT5MwgaU9fKMPsuggBoKK3pvFLk0f4U9P3IRJ9zB+gVLr5Ty7EqSUhNTdKFriuexvqB7mQiSmq3KM8S4bq+Ai9Ri+R+4VMReOB/jzwPxPjZXY8mT7E0zclrGLy/65rG2FIdJdy2EGVW5kIvDYBmcUWZBDlkwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0fASJHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0fASJHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C2C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748963393;
	bh=YLQwz6EOqTRDOb2BhgemuzxDq10o2Y6b91LZVwpwFjs=;
	h=To:Subject:From:Date:From;
	b=N0fASJHwCfi7YT5gteLRzOIbFPAEvR01D30tPa1n6DdafzmkWwe/NyqUCEPijqOv0
	 /jhN8wlRylSmJCGbO8soLGA9CaO42F3MCWl/VzQsRNRLhQb/0WBSm35hp54/kzkiHj
	 69FfUlQ2E0DyDFwrzjGdQLkjqx85DV3i5xWm5E9dcYN1UhxVS0BCkAQCpjVqvAOjb9
	 7Zw5Sad7KGmAerk2i4sIbzvniassaTYYFzakVnyLRjOtVEGxkAM/pUGtyXDM2cUbm7
	 rqbEWTHBxxdV0HfrPY1qNNI3jJqRF1eOPH8Wo9AA90OmjwxkFnt/onbsl36/rTPhK4
	 jAmYzKLTZMvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC8C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896339358.25007.17352396816009806806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ae5320d1be58a3c732ed9c3c3d88cc12efbd6051459530e139fdfbd493442b
Date: Tue, 03 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748963393
