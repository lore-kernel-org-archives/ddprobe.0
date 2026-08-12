Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB56242D72
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786507234; cv=none; b=gILf1dOagNod4Usu8PAJ+9X/cPF30VmKVfl7Gy+msojr9VEo+5fPDE69jZ4jLlNo1aXdJGgjCHewfnDGraR/i7wd3L19P7K2Om7BToJE0M+bCNh7HZgDRWmHDOghyA6j3OQAyWkAy61Tqo811wgsPh/PS1vpt9Gs42ro+v6B9GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786507234; c=relaxed/simple;
	bh=iAUyuJvVRGu88vvWkiGOE3efVz6owHawAnQiFfluGRE=;
	h=To:Subject:From:Message-Id:Date; b=PvZ9L6vWbhCDonglcfrjnYDGCem3Aa6szeZl4Qbvv3zA9vVD5+xnxV9ZShligbhdzX1tPLv2cAyk4j9vHMNAY/aIaPzo03Lbw1vawlB1K2kdTzycgKd+MWyYtvNjAkNdqCV9+T7+5lkMkOemx47/mVhlLJ2K4FvX9yoe9KuArCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGy9Bwej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGy9Bwej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA617C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786507233;
	bh=iAUyuJvVRGu88vvWkiGOE3efVz6owHawAnQiFfluGRE=;
	h=To:Subject:From:Date:From;
	b=MGy9BwejOo13IS21RBA8JudP//KMeRyWL5wcxiH/3/Ha2eGHvhtv13Hi9gP9H0hdh
	 nUDwwUjaI+dUFrCKeVIFkdDDnD0e7jp5NVl4yWAnth+zNq87tjSK07+5m5boPNM3Xz
	 1LZWqBZOBK67zon4Ek6bTx+6LSs0ux0u7b9aAzLJw+JmUP3y2FRmlhpiXTYGIM4YI6
	 S8OKJ8TBNdD6QDG6mdVmAdonY4aRNXKYUUc7Dsvv1t0ULxSdvjqoPNHQUzai8pI+tW
	 iJnFRHjMXAB6+bhVfIFe/zWm447tDg75jSbehLSOb/lpQJ38GPS2+w3ZZUtYClR2QW
	 NQOPLPdbMdV/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F86C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650723368.24672.12777724191407657343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55c4d083e110d083bd76e84fe2ce9fa1eeacdc104b22a2641ab5044078a540d
Date: Wed, 12 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786507233
