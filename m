Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081DF73478
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718710163; cv=none; b=tqEfbuQY5ycFkdZ5Ema69cWXio+SZYei9qDShLIoK0mz09RGaiYMdJt1mx/ZExktPLLTuEW08pn0RmWDebs+azSbhkWmlH6Ww+pfjQZ2stez3hCoOffA02sZapaylFHUN2pr/vdrFLcH95s8Ub8bE/CHSlBf/ccIkJt33jrcvns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718710163; c=relaxed/simple;
	bh=0SiKXKR8iPnr96jl+agbgXeCA+zyd8gF/fscn+5QriI=;
	h=To:Subject:From:Message-Id:Date; b=kyiT/EDHWLeweAtDlbOVWpltEEGil9DwhK8dWYlkAsCPjt5cEEnp2Z2YYPRE1yrkKNMCpDCd+ZIZsOL5nHOss9x6pM3etJiQqbh61IzydYp7KdOTaohup10GL4hqTgMIuZfhOk1gteSbJGPm6K3BETrx4ehrbX8zMSYiVN12AfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV+nWY8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV+nWY8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F0CC32786
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718710162;
	bh=0SiKXKR8iPnr96jl+agbgXeCA+zyd8gF/fscn+5QriI=;
	h=To:Subject:From:Date:From;
	b=aV+nWY8XrPYetGhXzDsArSdANQ2Id+sF2w/VIZVHzC9jbQpw656FURwjf7AjDUf4z
	 3o8WVsYz+yhtEkvDeAOyX9J8qyY8BomerQitaQjH4MpK3FJWqXWFoMtkzb8G1LNcoI
	 owoWXO6dDW1efjDyd+W1n/dT7Xk/ivz+OTU0S1gWfbiox1nJzWr8ngAVW8+ttyLxh7
	 3mSZJOzsYf2vZaDBI5f9mM0raBB99oJV98l+wCnm4VISZBmgLK4LtT3YuAwWUC6jU2
	 Vya9f9Rq03/wME/7rLT5F3I3xq5wafqV6DIV64kqogQOYM8tLrkpJUo0cU7rqlKdWH
	 W4sNXzcjJrQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F06C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 11:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871016278.24016.11265257431440117913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe75434203440def49ed0db57e96d4eaea0187e3f28c81632babad6e61f556c
Date: Tue, 18 Jun 2024 11:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718710162
