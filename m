Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B61BC8F0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756998594; cv=none; b=W7QZ8WHFtnVodNSDyd+K9Uka91mMupkyVMi7XO7VZ80/6zihrrdakCFew/13dM+yvuwokDNFEwH0JIwskXi9j7XrwuTZBbsGTEKgFOBDg3Oz7d6kUe47hG7AYZfHICe87L6bFSf6OP2VjFXPLPC9OLpQRBIfqC9OBQufzui12K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756998594; c=relaxed/simple;
	bh=Xc8VhQdoQCt/JbnDPggTmV9shADpo6ksamzh/SmcgdM=;
	h=To:Subject:From:Message-Id:Date; b=JzSKvXY/jFo2u5cyTZ11kbqZRpXiJ3sTvt8iTfS9PL3ANfjYEd99wbfs/LASkG7nq73g8nSemyvJ/y2h9zBNCTvUax5V5x7cYw/7rg8GaJzdIP2OydfEn1EEqQAfNcExop38HRMqcNdK5ijKbcEwQMf0QeeDieP1Pi+HCGtl7JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYzDSwWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYzDSwWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20ADC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756998593;
	bh=Xc8VhQdoQCt/JbnDPggTmV9shADpo6ksamzh/SmcgdM=;
	h=To:Subject:From:Date:From;
	b=NYzDSwWIIbCt5/jb/vONRzrEjVuTcU7XPDTlP6K33dceBxuyfiIJHb6DrPhr5yeK0
	 MVBa93auWAqBbgGkGLqdjYmiXJzYKx9PIFldCDLRt4sRko7ZesPDZL0gHQNHlo/Tyg
	 6V4+RVusy+MuK5WgT4eDDdRL+cN8Bx5/qFIaHTPFPed+FESzmseWA8zuVv68OzUiLj
	 Phm6zG58yLGHCnMbeY8DysVIiMz8Q1HA4jI7ghZwOpYBMJQZL/OtddomrHKFBZcyPv
	 rCETAcq4Pmc6e26pFMnvQDofs0/OqWbm3cjmhwVMN4ZVYgp3RpuW6z4wuzHv+T/OIx
	 4CkD2/318WPgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F9CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699859358.25277.9378956092078148247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8914c5cb5b2b2629210b510495633ea41c71bdce492219d92197152e4fe9c2a8
Date: Thu, 04 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756998593
