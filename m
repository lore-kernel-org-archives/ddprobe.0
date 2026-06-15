Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531C63064B2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781499994; cv=none; b=S37EhIeKIb7L6vu+Fvu15HBXMMjIV3DZTWW5qDpqPeAuyqWNOZThD7d/caI52gdQFUmZa/om9ggzVxRr5LB1+PzVEpjC7AFqylwUU0ZaxAMv0S/URjC7yKPROBy+79g9WuCTo8B391OHe0Y6tt5EzBEDXAvAF22/UFbUsX3h7As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781499994; c=relaxed/simple;
	bh=dCu5dgZUCq3uxfIjRSRzsAhqOH3U0i5rUk/YbIv7eM8=;
	h=To:Subject:From:Message-Id:Date; b=OobHmGS8krikFPQmX5xC5ub7iHO3RL09HFt7qtCCbrUHZPdSIe7I+yFYaWR3i7E+LKw3du3aLj9RQbfM5uZJBm/KNTFetxQc8XUdkE/cPsQdcCPk9DmZgKTVjyWdraQIbRjNnGQgYvCSsd97IWB+RtKMN/AbJw/gFgV6eVekl88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5X5h7SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5X5h7SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA31C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781499993;
	bh=dCu5dgZUCq3uxfIjRSRzsAhqOH3U0i5rUk/YbIv7eM8=;
	h=To:Subject:From:Date:From;
	b=f5X5h7SJaYaB0YD/UuFP1v8qHVm8312dvJ5s+ihsokNnFx85UL9DmlvwAbzvys8GR
	 AfAgbsjt+RTRRzsnG1Lv5erU6k3ImmTKFjCQhIur2qn08Hg9+ywVniZr+XbOkKNeOl
	 +LBj4Bso13L7HXA8BXsUiumaBmEVHQJuGWALg6A9bMH3WUPdVjXPD/CU3omdpyC+o4
	 6x+G3OrB3Cb4mdTepizmbl4GzwyYKhAh6EJcj9RaXKriBTRNE1m5haSAa4y+TguG3q
	 m1CTVTBJ302+Oaup39Ln0LPCD3/5mJupurkUi3hikMtabSyQo4BhyANeGjM1yCpwAl
	 Q6G5DDJjUxW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC13CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149999376.31708.14898238845252234431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176636cd732daba79db5dd09e2593927452cfd3a43f934cb0d3d3677e2bc767c
Date: Mon, 15 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781499993
