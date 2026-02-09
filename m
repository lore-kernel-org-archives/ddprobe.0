Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220CA280A58
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770669234; cv=none; b=LuY3EjRoejYzHqytfig9O/nRstETbLMAXnZKl6KRtwEjetxmxTQlh5yLcfUTgUpLzD9ZPPVXfJ9mRIi90MhVSDr8iV94Jzf3sAVf2+etYDy3E1N4tkD6vcMWn1Eaf4XLg7OVpcY3SwTtVjSxzRRKGkq7guLMZQBboQcAOt8h55c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770669234; c=relaxed/simple;
	bh=Xi0n5JmLc1ef7arwFZ0t/KR4fi+ktUVqGSLDpGcTmto=;
	h=To:Subject:From:Message-Id:Date; b=JiUo2z7NHG7MhLvAE8le8OmpQB5ivcrnqRpqQFGiBl7CgH43oXAqqimDb8881B16GWpI3rAaDas3PSYPlDmo1PwwbVisUL3HzKyn9jxNWv3KT656CL60e3TsX0q9mVH3hap7xqgaErtys8Isfso4j9jZRSuT6bvH38x3VjaTvow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNzS/3qE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNzS/3qE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB07AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770669233;
	bh=Xi0n5JmLc1ef7arwFZ0t/KR4fi+ktUVqGSLDpGcTmto=;
	h=To:Subject:From:Date:From;
	b=NNzS/3qEjZ6ageRdK4Uvu1UMosZkk9W/sa9VegDMM9ov+iZ8CJBu4usZsHNHkQGB/
	 BLVw60QzFabzg9ziDBl6wNuTSPop1h9iX+8UM7pJDcws47JxNtECGEytRKYRqKFcg1
	 hpXsiNLf0hxb56MutNhpu/2uUVtZqvCU1cixvMakonzmarTwso6f/E4edTgecQMb2R
	 Pb+6wQXJ9HBozpG8YQ4TegnfxT+vSzAy7Kcvb3zJbO8dkYvMhrSu/K6kqSt7JQp2Mh
	 lwpunSHd8HJe5zO1EHwfSDjjFBz+QBVa1C6dkLpl4pfAzMz/6jC115NWGCC2cyy1sb
	 qMghB5Tq1+6Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DABFE94603
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066923362.4916.3330982905236932264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0ad89b602187e089f1abe15a75c2364f201786a8bc669e5ad42e263883f199
Date: Mon, 09 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770669233
