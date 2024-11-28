Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE2D537F8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732815354; cv=none; b=PW77oCTQj/2OnPrKqfW3QvRx6eliy/zXnFmlRqy6bjNB6JzaLV2uVjcqUd6YCI7Ub33E6ur21ht213POyNMZ6fEb5Mlbw3pSiLWa+yUA7SqnkogYhodXg/8rDmpHk4Te5Ed+K7qQhaPs0FvFbgYN/FdKIa1iK0PgJI5WLFrz904=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732815354; c=relaxed/simple;
	bh=y5DUCcPMc9uPtuQQkNV2emlPi9N4L86AQ54cSHj1924=;
	h=To:Subject:From:Message-Id:Date; b=nOKQ+H8j09Bfxfji2ZWu25pJEnRMGaeuy1ofOH3slLK33fv/NmAbYJfbEOnhT22vGiT4+Bw05ktlSIrXeNVquH9cAhPyzABN2eFVa38bqzOq+vT8zRM2+K7PjC0lXAjYOVkfQTYRSx5DBtHK9ObdKVMy+BdlPt3eOhd6rho6n3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsV6iuu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsV6iuu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A990CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732815353;
	bh=y5DUCcPMc9uPtuQQkNV2emlPi9N4L86AQ54cSHj1924=;
	h=To:Subject:From:Date:From;
	b=gsV6iuu3MVykxAYRll7C560CW6QNsDhN/lKtGXsyOnQcQeI7oqv6srHOJfhUputNj
	 /hKMJlzhQvvc+AhZBAOObIODKYgppRhGvBCrkN2Ugp0EYPRu6X9+d4cyhw++Ln2ohX
	 aQw17avfFnkEjk8+GB93h7OQor0LszDGLBhgXCHzNEBY66uFhO469I36KholxHlRzl
	 UW9GJ3ucAhjwu8/mh/GcA3o/2RJyNL9mVx+fYcnpTT4hR+0kpCTi1In0DRDJNukeU+
	 N24vz2AHv1aStPQAP2ceZgrndEhfT6/USD+ku400gxpgx4zijvljVtlrpmh2r/AbEy
	 UjC4MIztTzYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944ADD70DE8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281535359.490.1301139817690036578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeaf2e8be9f673c928d0b73fd8c1acb73fb1279a2f20e085334ea53ae6059148
Date: Thu, 28 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732815353
