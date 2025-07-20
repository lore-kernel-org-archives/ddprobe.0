Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D061F239B
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753031993; cv=none; b=nieFT87qNF0wjHCgnboHcCM6528bZewveWZLJ9dQ+wbaPARDpfhiDspVcLyYK3ygP4QaCr/RzSo0+jVESPdwea618X6X4qvBOvR1M4hKKw/8aZ2PqKB3MLElbVjTsl6nSRg1bPdv/HCZ2cgzgjXGNS9Hoth7tEkBeKGGjSWiiqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753031993; c=relaxed/simple;
	bh=lF8IcYrytl/DJ2F1oTAIiGWMNmEhkGpLHwgl641a1UE=;
	h=To:Subject:From:Message-Id:Date; b=WvOFqwO2IKqCNQHGN3mqfQxShQiy+bZw3RfmRhAYQi3rTdFSNA9Rt57++WBZgGXlHj5oqDF7EZqAe0qPU4fDtb31XNrZD514/h9Ps7KOFq13R/RwrArcE4eKZMmiy24KlUSS2vfurdmMk4tbVAGG0p6PybRdsIIeymJ9nFmDxyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgkeNHwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgkeNHwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4627C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753031993;
	bh=lF8IcYrytl/DJ2F1oTAIiGWMNmEhkGpLHwgl641a1UE=;
	h=To:Subject:From:Date:From;
	b=QgkeNHwyVBPJ8Q1NXM198JSQQm7xHpmcnKBajz2+/A5INuSJn8EqJLICVq9JW9Y+g
	 hRqFQ2Yp7KaCJGjIIdv7YpvlDi+ASkpfTTH3jeeY6r1FdLnJNvzb8+Fqp3rZxCSTA/
	 GHu5rzlYk26lLiwW82XSymCZRveUV+sX/UNftzEcG4TlDkZGnCQrdgRGkEf0m2tBhY
	 iRuwo+z7xeKiLK/I0LU/L5Jsc/+s0k6QqUkNaas7+p4ttbvd6FkYD227IKt2UjUqrY
	 Ko+NL2Mtn/ZELDNruugfcaffWzB2zxaJgAoMWElCX+12lJSQAJ90AlAdbfasdU6p17
	 W9RRiTQ3QJu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94755C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303199357.29590.2083165984836666283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cd2b24316cd1aee3b412a9e2ad2cd6ffc1dedb2023d5ad19eb7d27548a59a3
Date: Sun, 20 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753031993
