Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5E3137E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748042395; cv=none; b=d7m6H6IhnsYpkoQU+FWoPwDcvOoVumO2/U8vH3i6dPLj7ZNCW4WhBbWnVSGq/fcC72ESJczPWsNoYrR/SUK2HFfsN+UsnWArapGgY1E9tyAnX+RAah6BU/q9E9WFLGkskArKl+aI/mxw3qYW0PPW40i5ggThgUiVS9+U0FQKflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748042395; c=relaxed/simple;
	bh=WHMd7Yqcv6tMzq/4SlSQvdXXFlzkebHVypzO1uHMAbg=;
	h=To:Subject:From:Message-Id:Date; b=Gw7cBNsDNc/mhzC0y5ubG0MtNgl7ofh4HU/Deqxxr1ofmC5zUa+2Mzuh3t0OAh0XT0Rlr8qaEEvnaIg9jmXbutd1b0DaHXKvgZOufhtWb4XpkqVEm7FkuwACiqZnTJDcLzP6wUz9XUCwMONYNMpi5kagcpPh5eAwHzz/mYsEp+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpredZpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpredZpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6275C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748042393;
	bh=WHMd7Yqcv6tMzq/4SlSQvdXXFlzkebHVypzO1uHMAbg=;
	h=To:Subject:From:Date:From;
	b=CpredZpoUBFekgzU3m9i8Cc0+Up3waqcYiWiGf7cyGFk6LMgT/tfabk2xHgHzLRJo
	 brioxEwQO6oj3sblFsnUWnt4VNXcbSHT8XkQSj2Rv433xV3xzPHjs+k/5B0FL+fyIu
	 dn+gz6uRh3IaqP57VP0LJl074bQ/KKsoIrEhTThU4QO8Nt93jlghA64cpqkb1hbJkl
	 aprNwLNUEfLXp4L6tO1hjgwg2JSA9mE6DoJWXlXWf9als4PWmP7XC37/Pgud5G4HN5
	 GUY9hlrq0gdkCvG9Hq99TpOIZqU0XdTROMM8/p5qWk2z2ca0DSlbmsG1PONvNL0cHH
	 lBdPEljRPVU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9392FC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804239357.25129.16664235940132060939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee13598e6ebcba14414ebcadd1a074affa9b2c967cc0f0c70fae1f5b5ade4c5
Date: Fri, 23 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748042393
