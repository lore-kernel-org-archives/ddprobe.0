Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B174B0497
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786851034; cv=none; b=mKhVy1SPqHscvjkZQf5sGhYikAXRS0+JZwD/OaivLaVoSxIULDsq853dLqn13yfwkjN9pg2aSiUC/qjzE3IfvLYXLVxufMW7yjCg3Jr2JKbVZQqVV2jOyj0p8RfVEdj8nMp8Q24vQA7GV8cKs4umARzUQrFaHfJ/VsQ4ojO12x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786851034; c=relaxed/simple;
	bh=GRU+zhYIqjddt6w7Mv9IPtKUZuFgZ+AZ6kGWQnJd3Rs=;
	h=To:Subject:From:Message-Id:Date; b=Mc/vVG/ddhrxNzvc41a4/dH4O46EFxfBdTs1D13yX2kClsjfDqYM07uKSQOugouKNtiB2WjxfzhX4e2FOua4NzlymgcsXL1wFcy3MeUIMcDONhENEiQAVumyPBAzGyyk/dNVgx+UQAbHeeUcBcYfzvetpb8L+J3bUsoHCw2AyAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J45ZSrFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J45ZSrFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3350C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786851033;
	bh=GRU+zhYIqjddt6w7Mv9IPtKUZuFgZ+AZ6kGWQnJd3Rs=;
	h=To:Subject:From:Date:From;
	b=J45ZSrFVNL1JmPPkeym/xDzA0TJs/Jp5pjQhG35rJumSf/92tSOtr/qOE5UmJ+U8R
	 aO4qK1EdTODu9Q+8U89z/7MYJW6TP9SnoJWV1odITIy6q/WhCY7y9ol01Ogbx993WR
	 u+6Fwwu2dHkzMhuwACa1409LDBDJH0f8m3dF9a4m2PTe+C355lFB9+S1jFmhCA1ez+
	 hTlhhsTRgqn9Rno7jZ/yeIvpJDtyVHvumY0N2sQ0cfSDRCBxPE4CuRpY3xC39BhBCw
	 6Do4vQd15unem0hXXdOR4SCB0/SXp5MUzur1HWEmP0S8geeZvdtfUxwii3v/mEJuTs
	 /quWWr9cZNHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB28EC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685103369.769.6673728551282365963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50de7b58825f0931784f549cee3232a34c43b4e5cee45e79e0af76aef9d19ad7
Date: Sun, 16 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786851033
