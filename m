Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411C943179
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713109163; cv=none; b=Nd4317tb21PGRbuMsH9TTyXWYz94lBszlwWrcJcva3vxzo+UTAfkFsJl5CIHwhMIbTmFblQ3BEYo8EdO6Ki5rIAudLwY9vOe9MVQEz5yfeZf1RP8P9fJyOILe4WrPMdFcXnF4LiophCP3FxW9vHCHlWCJCyMO0RrdguRWHThVnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713109163; c=relaxed/simple;
	bh=MW51L761ZuKQuLhq63a31SorJK7EbSxf6w10R1e+C+U=;
	h=To:Subject:From:Message-Id:Date; b=Z9ux8DJKIc9uokqT/Dn+nmvwvjQaHbWuO0MbZa2DMxuIy3ulIsAuQ8Z/NG5ENXl/8eYjLRnwQ5La9S+Iht51r4ZhCgEDrxvyyQwpzSV3Y7J4AzaK0J4q8tPuROf5ehBLw0AjyfHIh0y+3RHAKKJ0JR46v/LInptZr47uemxHkKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1ffnjVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1ffnjVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F30C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713109162;
	bh=MW51L761ZuKQuLhq63a31SorJK7EbSxf6w10R1e+C+U=;
	h=To:Subject:From:Date:From;
	b=F1ffnjVcr/ZDDwS50KZ9tB9M6a6jrwpYUZbFIZ0rbHc5zLpXNphnPuynMA6Qj+krs
	 VItW5pkg7RRur3dLYp+BS7INCfS4sMv5vrTXKtUhykJHWUMM2u7ugt5rohKroryBmB
	 sm2l8O6ntWp83rg85xb3pzt1liSXoiYseIfuknFhtu2j4lHwKfoNwa/SWHKUEguy5M
	 IRb9duRtwYgOSt1Ao7TQCi/vbeKXxTcM9oQxxoClCi8w46mz2TSzPp2B8ZRscgcC7y
	 u3j+/QDVAAx821nkAzu1WzUn7o8vHrdqXMPLEZR1ZvE/7E45tITOGh2SkGWUcUhTks
	 zsseZ4Mc2mM4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC30DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 15:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310916276.23091.5640819088974393021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9526f9ce091303be453d3b8fe39b02d8fcab1cb0273641fbfaf4c2cce8527e4
Date: Sun, 14 Apr 2024 15:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713109162
