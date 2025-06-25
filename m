Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA2725C704
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750852194; cv=none; b=FvZ7YzArKW2r9o4dB1rUKxiCXFy16bJJ3Rg3jnIv9iiVX2I3l1Dza/LKPa1MPv1xjI+8WomEgUcDvauFqQrebqxvPw1H8jUS+o1UNDpzEwIhUVqfmPPuwIDvCrL+b/hJhapBpLe5GldMgIXPZ2LCeXADhg5BvwFkEZgJXQI0UrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750852194; c=relaxed/simple;
	bh=hf2PgtuVJYqdEVHlrO1x2cQdUdepoSfn05nU3eWl5vc=;
	h=To:Subject:From:Message-Id:Date; b=B0aurlDeuOnEEjDsTUSMx10031mqSmJ8CfoM+HTk6soI/Gu0OIpZ/kMAZBpIXzw/0gpNTDQDJ65fwlEN4HlejiBDOt9q4pZvprrjDL7rrYKnCI/zVCR1w7o1gZJl1sUI8G1sng4TtC8eDMPc8S9D7rym/NQRX12ueiDpzFsBdaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7Z5dFoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7Z5dFoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB3CC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750852193;
	bh=hf2PgtuVJYqdEVHlrO1x2cQdUdepoSfn05nU3eWl5vc=;
	h=To:Subject:From:Date:From;
	b=Z7Z5dFojjpdjoCoyBs3Ch25uAIpp1+62c3kY/f1NYse9sViw/aMRRvWKYVIAv4iDX
	 2kd/supN4kIXwNxSVQnf+ERQGATPFGn5oCDxGGkawz2bDMuVIMvfE91vSiUeVlx0gT
	 m1+1RqqSJIz7sVZEf71h+bbeStnS7xWDoe3USmj16wb++4N5bTEgYwE9AnsiEFLVaC
	 Ek2fiFem84vffJBGcV7nZtQOtnVKXT5ep3pH0avfGykF77QvzKm4JU1kZCNDML8nyp
	 7hbqzKLf0ghkVvuoWj5RPiOS/2AAL/CQVXrYtzQ/9izuM65XfqZxP63Vk28I+Np892
	 GRxegjYgybdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE44C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085219357.5627.18435940917571293983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e78392c2ec5b3c68faf2919e40f97788fbc674498c69fa4c86835d63632bae
Date: Wed, 25 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750852193
