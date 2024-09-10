Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B250175D5F
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725966954; cv=none; b=EBf/VWFgkswqNyYaBQboC9r4M7ER1o165wTUbzcEeKzKBXqAeEcR75odAW+ZIB6kaN074PDzaDLpd4q3ZbHNB+qHkd8TLWJQ+kF9I+IgNZpS2rF/U1SDFWjBMMNgsdm9n+Jg+YmSXRlgFlf855+gvcE9Q3q1WTaRpEtUMe8JF08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725966954; c=relaxed/simple;
	bh=nq6CkZNTNpuhi6TIehkvJaVsrpzYJbJs19jyS5HjyPc=;
	h=To:Subject:From:Message-Id:Date; b=BvOr+ggVt4ZOuOk3tAJ815UhAVPYQ49fyMHUesiqB3WSxzlKS5Zku4mJzlV7PhQELnyEgIFgY/0sVd5HXaUnF8eFlG01OXexQ5GnI+XzceCcg3eWabBOa6Jlo5kKehEOnHHA4tj/zn5shSL7mLe6+O7Px9H140D2/chR3YInlsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+nbMsbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+nbMsbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BAEC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725966953;
	bh=nq6CkZNTNpuhi6TIehkvJaVsrpzYJbJs19jyS5HjyPc=;
	h=To:Subject:From:Date:From;
	b=m+nbMsbn26vexKzdeiddrd1qyUfPbNNb/2qGpYJN+oypq0C2wXMfboS3/clgLqXEo
	 D44W5dTPbNubcHfP8+U7jknq36A6NiQPqks1hiSZuHXCYpBjKzw4pY0ryvhewGkBd2
	 vRtFcoJEUed3YAPdofmebaG5q4ewrdl/fkdPPs6AL8l/GHVAEcNd6y3w/DGIOx+XaU
	 wGT5ifYHrswSHuq/l8YxND7CR7q9Te2YxtfK8APg8j05IS9TCb8Lg+T4Ea2k8S5J/f
	 zQBKy9gg7BK1vw+5MaO4O4raPTwNI/DJ4oSTmy+EKvcxWZg0jTEHISQwNxIzs0xjc+
	 LdjIYmnBvh99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968DCECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596695360.22357.7445144405734540296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2d971482b2031d8c5545cf43023faa648b983945b004eb8aeeddbce2dfcaf3
Date: Tue, 10 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725966953
