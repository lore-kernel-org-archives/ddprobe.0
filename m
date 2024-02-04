Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0898C2230F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707047897; cv=none; b=EXOoWUIUaG11/vhrYLBtSaffTd/osOm8jLSBaGoQLOso5S5rbe6rgBKUoOsTaH1ayIJgEEryhmIhtkl/MJz0y2hdcviCq03g6lhFkr58JT9oMw1eoW8ETz4+zVFP3pkt6IpqGmr696vZcgWeBWqrQnxdB+9RiiEzxpgWfXziX8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707047897; c=relaxed/simple;
	bh=ivh/Q8fcZycKKzB7alMufbVH3diStYZ0oTz4yVyXCN8=;
	h=To:Subject:From:Message-Id:Date; b=aI9+SaIlE57rzrTPEjj41sMnqIR1cE4Om7xn2yeTSrSEt9HhT/hJ4VzjHcve32+ijJ0+rkqpGBfBD+oNqc9Zqs5jWpOjIXp2QS5lwzZFoZFulp2aSW+uJZID+TYCCdzRWrSe0584PfizEHHnW83bbjrZLvTzQBU0w2uMUGFKD4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BinvEFDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BinvEFDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B05C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707047896;
	bh=ivh/Q8fcZycKKzB7alMufbVH3diStYZ0oTz4yVyXCN8=;
	h=To:Subject:From:Date:From;
	b=BinvEFDkp6I83TwVNN6bbPdnQUD/nkD637RlYTvgHHgTA+9kdyGT0ZJUu1+liAMkr
	 EKW3Bti9qBYZZkGOQVn/REuXSZiqbJWte7K2z6g9Nfiwb48MiT8dk7ZJ63VkFNoA0P
	 guAJ0dYKcaO4YOmeEP3XTSV02H2f3i53SjgRqZs2IdqLAL50lKccmxfNyrfabQlhbl
	 Z0P5s6qf0q7XZtNp/c7xKBen2bQX93GmFdSmgBCsVXqrLX+9hP3j6RNdeAgLfFzyQe
	 OXDKYLYYqvgB0o3KQwaVoFv1ouZSMaF5gsWq8kUCE5DqdqDvwvP5Up6kaz29Etj0je
	 97RzLYfcVUFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A96EC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704789641.30908.16790321975677435824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad78ed552aa293b866cbc77cd5d1e473e1219d6e8b8ead65824ba9576bfc2b5e
Date: Sun, 04 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707047896
