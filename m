Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F8520013C
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741969134; cv=none; b=pgcBSKX7AxoUJrqZxreE8eDQWNu151807YqI6arIl/uKNYBeP7qMC9g0etw8VAyR8X8dqzqKMdNfRkRTfU1JxJN7BTVjsjTbah1X4RSytahEu/uDN0GPOMvQ70LEICWhrLnZi33f/GqtFZZx9eVYtd3neE+t97eJZ/ftMZQualw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741969134; c=relaxed/simple;
	bh=Jwvv1rYq9s54txjoICqcl5jS+qwuoZlD/P+7dZwjLgo=;
	h=To:Subject:From:Message-Id:Date; b=gx/HQOofp5WThXT17AwES5HknMJHPEuuSxwuRVaHfFlXtO3/aTlYBoWrj1lFIa7YzACORGzdcLdGInNyVkSGurmBdboIUjW/9B+ESPww+oD6ppSGQlfAG9BUDC/8AFex2hbqUyZuUDybu1cfnWIcE4OkB2IXTNdUMxmvj/nd8uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoriVb3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoriVb3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAABAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741969133;
	bh=Jwvv1rYq9s54txjoICqcl5jS+qwuoZlD/P+7dZwjLgo=;
	h=To:Subject:From:Date:From;
	b=DoriVb3lS8rjiJhml7LzFTQjGzLLZP1vrXoUFDuafuqsFJ60cJTrld3cScx/uFcUW
	 7ocOcrmzQObMapZP4pZc0O+27+l4/4t0eujQc197ZFxGkSsIFC3XGKURgjrT35F57O
	 ZqjJkzMFiyM7bDFRaQLjlsA3goWiY73X7+QhHrey2Zr0YcewHluXKYdcqkT2LXPui+
	 c6UQFFyzX8z/nn2scKAzP18UNE+sxhxDDG5tMF/R7EGzwO5T+oMWrVrks861y2ZI5H
	 1ubbr5ACHz2Olzjb7FnPjwss2BIYbiy3ZBXEJOTfDsRzQ5/QLfsi4e53KApAGWS0Cd
	 xacQD+KzpGH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98939C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196913361.5088.5694659006657615162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf45bc864b9867118bbcb8c801d073e8dc4f4c0944784fb1e9a0565a65022153
Date: Fri, 14 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741969133
