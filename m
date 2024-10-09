Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113C25684
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728499554; cv=none; b=G/0y6mfzIG0pE/Q9yLcGy9ACbbDA20xQo4Ill4+fjapg5wwADpOu9Mab+GCS8LlLTLQGQkxL1kobjVNCLfLvLv2wEwBvZuWlHgALdfh4GGx2b71x3kXFQP8PdeG13QFdVqomwEaXDTOTSIkQbDdPxY/EtMhiZ8FueWHkJziyEhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728499554; c=relaxed/simple;
	bh=GNn4FNMy23D8Smj6eqrjPErfSxSeGhEkdfTQ6bwWWow=;
	h=To:Subject:From:Message-Id:Date; b=IuEvCHLVAKemYhXSy8AtrthfwOR3+7Bv+tDAEaAA8ZOj6JDU7qE+y+YE3rob6DRxZZs7uDqDgoiZTmYLXjLhlSv0Qovo2/lk347SIDz6epgKHbCTe4zlMze7QsR2Au9LOkoFRrrnqaAI4yM7GLCYNgrYY86XYOog6N6kmLkjGsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9o6Crjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9o6Crjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF89C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728499553;
	bh=GNn4FNMy23D8Smj6eqrjPErfSxSeGhEkdfTQ6bwWWow=;
	h=To:Subject:From:Date:From;
	b=u9o6Crjjz5zh72Qr+kYNKcQzZIrX1uD6jW0HnQkCLSo57e2rVbdjxPXLOPwb0iR1T
	 oMv/hRJMV4pbOWoCrWQPMSSDqoHE8DpcKjt7K0gZxZ1fftHifOzVpwJKI4lhFXwWts
	 17QDWYjRzFVjPPp9s8WfwYas6HJiRf89Z6eitnLZA9GWXhp7Gjx2g5cqFH6SBlVR6A
	 VVbfUNJDFdiAJme/63H3NRDsNZ7LHel6VeMzH/GlICp46JYzY++y8WBubOTZBCRay9
	 QpDKj+wREYaeHljZZfUI5VYh9UdXaHcVPmeqwjqqXdp5P4Rt7W7mlkTe0of/85UcQJ
	 XdSGMr6/R7r+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9753DCEE33F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849955361.28632.17948492268998224750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd10f57fb95fc602b5ce4c74f8ccd95d9829a0e18ab576d04d1f72abe3a95b42
Date: Wed, 09 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728499553
