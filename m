Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14BA11CAF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770903893; cv=none; b=Tbb2H92hcJs++qd5H24vrRRk5dNwiu79Z6LoaSbJ6CtjV6WpE1hejzae4AqNRg40k8sXYkwD3NMZNWHuJcU6PuYeGCzVqOlnSmb4gGGZNsz/rUfD8bmMoL0kJyVK54+qnx2sfLQ5qKEyEwASD5U3HhO9SHNlrz3f2NuOjWJlLoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770903893; c=relaxed/simple;
	bh=AMzFuovizucouHEzNuKxyrYbdD3hMmZrK38RT5LxnSo=;
	h=To:Subject:From:Message-Id:Date; b=Z2+BhkYgPPoe1Ja2/qO4yJiqJuFLV0RwCW+7euYiH+EO7lAtSXfEYqNXGi4IR+uwlWj7eyruV7p0fBNyNkC6a99VRPa+tPtL3UPAKLH/FcLKGa8DkFZ24kGisGvKBftywAkczkJrlXDWyp/a6One6i2ELqTt0G/JLtqaa/rF8sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf4gtOqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf4gtOqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B359AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770903893;
	bh=AMzFuovizucouHEzNuKxyrYbdD3hMmZrK38RT5LxnSo=;
	h=To:Subject:From:Date:From;
	b=Pf4gtOqzuIemigUuHp7Lbj7nQ/wPD4dXFrsyGxPuq5bqNS74LW79JiKq2jYc6lQ20
	 cjitFJ99I3hnT3y2j0Iykd9Xyb+AwE7MhUI7TgETARsOFoZxNRLtNJzJWROb4STgTy
	 wiQLiItMQjF5tgujDLGsSJkJgC7QIsTl/h0rtkcRAWcX1zWhETDB+HBapQ+N9hLJCj
	 pOcJJ5O3K18iOqhfA81VUJ2u4tdZvsyMhcAqZlk76XRVrd7j3+tFmi44qXma0AmJfS
	 ieN/ECrDLGDllo08BYuD8X0WdGkqglwonnneuE9+7icNKDqBXjsNl9XAT3gmO/xjJb
	 /T3Ip7ySb+xWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCC1EE3683
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090389360.17367.3424821826910190714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdfcfec22e4b406a01644c87eeed2118e9b70b81843b78f0e252cac43d20211f
Date: Thu, 12 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770903893
