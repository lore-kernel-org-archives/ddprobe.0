Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D96523F424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770818094; cv=none; b=X8v+gjLpr74XROuexG3WhgFuqIaPgM+nfGjEOUi8bPTEfkhNzYg1++AhZewt2Bs/kGeXovf69mb3P/PTGNFQ38Toe5W6IVVggxWJmC2fathjhac3Y/EoEYrL6z/GFUGQz+rKKpLKYANMVUFrvcu3UfvhqtsmqYjlM3dNvvBr2Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770818094; c=relaxed/simple;
	bh=Gd/f561nh5waesp7hz7LEZVycmft7rE2QJlIMLAVIzQ=;
	h=To:Subject:From:Message-Id:Date; b=GBrwl1Sbk3MHAh/wYYTBa/49nVqNuptwbFQpFatG81YdGT2lkNRWSbV1ShF+VsnHEhfvUKfLlzGdWTXeCgyQKJorkGy0yoEWhzzs5929348Br7LF/8mT6Yvm1WeBEnqlFY5TqigkzLoBqY4r40GJzLikuDqECKlPa+4X2r2+ON8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouc7kqdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouc7kqdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770818093;
	bh=Gd/f561nh5waesp7hz7LEZVycmft7rE2QJlIMLAVIzQ=;
	h=To:Subject:From:Date:From;
	b=ouc7kqdTFwuhTG6kA7b6E/afWvcM01NTed9IVbjLDNU2Ll/wYGhqmQdhnUZlkKj9K
	 kEAxjOL+hjWxaz2QTMW6cHesxEWQX15eU+WfyEinoklGT9AxFso9Kd/kyls2w5eK3p
	 PpwuRCHhfwSgDUODNcH095X1KjzhNBB5tUortD/DScRCdHWg5hKDCeNLjTrBu55lJj
	 6VzpFfujIEl6Rq4zpf+RNq4bxq+B2pMxxYczl8e3mqZwEof1Bwx8MTv+MBs40+wvh+
	 UWQa48JVnDNhqsx09znQ9syRESnKaISNX1yYVlCGrr5ouJZfz8FuN/6/tKUIXJIyFn
	 N+0NDM0KOaE/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB7E9E30C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081809359.1946.12490770883871492958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e159f581139096c7d0a63ed186dca292eebbf6e775b067b216410192ab1f2e21
Date: Wed, 11 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770818093
