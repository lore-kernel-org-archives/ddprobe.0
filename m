Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3948615A
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743291594; cv=none; b=gmRDqIDzmRIEwtiZRQu2eJSpKVXYfGqDaNbc5TDs88pJFbOL9wbt6nsq1D/jJpvx3vr5Evdh6aFdBrepSP5uRA1rKRdS3oeRcPUShnZhDSB2Qr7i/tWhkKzorhls/IwqaYeeHnNaRCE3bwwvsqRJKdw+FDHKntZxWXuF9G97y4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743291594; c=relaxed/simple;
	bh=Id7vWF1R332VPa/DglI91oWqdy0pg55dgOlnEyhsbz8=;
	h=To:Subject:From:Message-Id:Date; b=s8SG/Xx5/aQICa9a3nw6VmagPWz90TWqsoT9/9DQ3gCQfx67KiLoV6zYOMNpYWK6IbXiV3LzGruPp+J4IkIh26Pz35GWWtyYqLu6Fxq3c/4G8FU0e9YWyAgqYP+pDmk2YygPQcUuLB4Gp9H0POT+1D8EMLzUv2qDMz7aYWi1jEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3g82p9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3g82p9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE82C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743291593;
	bh=Id7vWF1R332VPa/DglI91oWqdy0pg55dgOlnEyhsbz8=;
	h=To:Subject:From:Date:From;
	b=T3g82p9jZtqgbTaAKukGhISQEIqzVp2tJQOZwhu4+lkQO+qQDm8WgsbmnBNfsvN0i
	 5ob+gBji+kccZ1ssAT1FWEnczegliWj1c+XiMiXXtR4lRobm24XvVZKS3Ly6TIBCYw
	 9VVhvIByb4MyRzIc69D2hZDSSSPbqh3t7W+02M7ifZ48tEgWMegVNdLo1bNz/VeBs+
	 /TTd8zZHqfiJk4sqqbRN3/5Sd6L4ECROH68HdRPQDe70tGJa+gZ98sfltlYW5qE9I2
	 ZkFDQEkBkzxgiYWvBW4eQXqibNcKNqWWBszLHn9qCfzifkMO84r7THJcgBTLeKNJ73
	 v9YsgUQ4wcPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CAAC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329159362.25395.15089442038250815131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460378e426d10c00261792b3d14e848565f272e51de8a1d3ad029060e7f26c5a
Date: Sat, 29 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743291593
