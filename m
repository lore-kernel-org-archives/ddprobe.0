Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F305A5B1EB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767158634; cv=none; b=ZUGuHIkH9mUCnsxyVbntHrMueGThh2TXyQ0iMX2Uykr3VAmEmTFvkBEIG618DzXe8c5rKddsO6ULyutGBAaszKVLAIILh+qCG9dqSdLK2xQm6ZWFsv1kx9GqDQKtrVoQLUQf5FX5lEY347RsLV1tNiStq/EM36i0X8VL3JRQG4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767158634; c=relaxed/simple;
	bh=q7sT8Gc/LS12k1i/9pi6NNLnqIDUxxUVRIy3UsEhXkw=;
	h=To:Subject:From:Message-Id:Date; b=DVVcBdfu/AC9BFVSI6f3KQJBxgYGl7Z3M918SMvhzVxQBvsLn6/yzNJBv/8Qic90FlnOxA5m7PTyymUlAF9AdGd4eFZVg1aBIiK1vr+DtEUI81PAf9mMPxPqTmK2QgVbDuOkgMKALIuvLYB41LhTlbpuQ6zrmEmcw6oat24zC/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPqI74HN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPqI74HN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F83EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767158633;
	bh=q7sT8Gc/LS12k1i/9pi6NNLnqIDUxxUVRIy3UsEhXkw=;
	h=To:Subject:From:Date:From;
	b=GPqI74HNyMADQ1Eh/jFOYbdrIm4EQ/yXD8oynnCj8VdVMriEJgCu/BFhZchnkgSDz
	 4pa0mjgeJ0/hXHrYK23DyAsRms1NP7Cxz4PlsIN3mr0P4GHBDSje4/zgXY1GAAfUg8
	 rPyXDpiWIb8AbQn6+RGfauc7PLVxktooemzxPa5c7hh/+GUzdW5+O7wejB9Tb/aYut
	 FrIhvOh2Ulh+VuwMfXzrvTHxt01v83Y29IT9YP9F6gFur0K7vfy4h0dZuokwr6AgF+
	 VinU31as0ZRmlebSyWGc3cUN8M+UNKkPGg+BieSH8jJqyGEvZg1CN+vn1zeWVKwyTj
	 sQIHNErYEgWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF47EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715863357.12468.16066079923186157228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969f284c169f3fc327793b7220be4f781180dfbb7fafc73b0e7a968fa2dccd5b
Date: Wed, 31 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767158633
