Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0478342AA2
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712920163; cv=none; b=iRixPtBdmfUETXMCtTZqhJQn2/tE8AGrpKjIF2n9nzyXEhD/ZnJAhI1Yw9fBzHy7uhvy/1oj8d+rwwM0kkSlt1CvPAHU83Ty5yxBQC+jFi5q9uqcUxeEirE2PRRcf9KRzX/dVJrA4BgBoyw3mV3C16O+vk9nZOjkOtx13NsaoOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712920163; c=relaxed/simple;
	bh=v0HMHMSIn3CjJUjQgT0Pv/ZEMHTPWY9Z8HX8BXlyA9c=;
	h=To:Subject:From:Message-Id:Date; b=awWMNHrfV3aT41ejqkaRA0e72q4G8Tz8s2Sg6L8P67aR8ozL0v9O0Uqn2jaP1kOjRETFwskxT02az5hIWaFDDboVuPdbBhRtzUmWeNGM+/pn3PCCPm1cB5NjVsSGh/EWjzG7vEJBSXevL/vc6WIYNQIFCD79HR1NDI1tK4kyXGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFtCTPse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFtCTPse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB542C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712920162;
	bh=v0HMHMSIn3CjJUjQgT0Pv/ZEMHTPWY9Z8HX8BXlyA9c=;
	h=To:Subject:From:Date:From;
	b=dFtCTPsehguoLtoeKLubJ02OALQzcy1muyuEk7c3zRaAgzSCqkvwUqCtP0OnStsf/
	 jIOkv/m80RaBgCF88P+Gfw6iyHXOpUE9uyM21nj+5jrsvBZdj6eopUnueRq0XUNtal
	 xcmFAZCIqTGi2zWnWInPWIVjMFgantHjZhVOxQCccn+sNd6mzE9FUUBe8xVQk4uSaS
	 Pwujt/oWtdTWIOSNd80J/I0yttKwTBazfWHj5P4Yg7kqxpwA/jNhI1hUU37UxNaRwt
	 6nbHcOeuAi4DLcEE98FgipGj/7oaCae96+Cp3ucDnq8IXAanYPlbyP3wbvMhZm5KTF
	 5MIV6JHmwkF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA920C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292016275.21847.13864240545184818639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba5b7e9a290cdef4fe2ecf80c019f5d994e5e77246b83fc8868fd81dd0e6eb7
Date: Fri, 12 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712920162
