Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340231A556
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783955314; cv=none; b=bPTD7dsXy0PX2yE7wJpTPY1M7PH8jWCVmxR2cNi3MtCbALRhqz0pA9Eo3IoG4gdqonAgrniJcRUdm4snKB+2HnTIM1/K4ppl5WNgYfKBwm+RbxUdef9SP/tnX5GNnFOcnI3MKeYEQJ/NR/LDF548PeHLhslwzl9j4+wHD60joCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783955314; c=relaxed/simple;
	bh=rFDGcuVi34mina+Rq6B+LtHxztRw0nhaynGAnjiygTA=;
	h=To:Subject:From:Message-Id:Date; b=qvX75gjrnA+8QbVGu7otCayqQC3vAZCACl/nGW+DsoCeKpm1zIaQ+0+H4DcnF6xD4OAoBO03mgDG65yy3yE89GilXYWfFbkoVjzOArdiD0fx0357XlZ9TnXWa7GIy4xN7OoHZt/TBCW4y5fkS7J2zJ6BYZPgAVNBhtKcspm+JtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo2WqaiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo2WqaiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5A5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783955313;
	bh=rFDGcuVi34mina+Rq6B+LtHxztRw0nhaynGAnjiygTA=;
	h=To:Subject:From:Date:From;
	b=Qo2WqaiE2CTyvz9SiMNs3+SqqKfG6Za/FycpUvDDWRrK/pmkqtL1IlILNuBqE4xoR
	 y8qjhAMybo+5s+Lu4TO7XD1bgDv4TclxurdjoiLp26F5nEFfYeDVXjtJI1kZgqmGWs
	 9bH2ousN82OPPCR8Qx8ErKsifnjFsGNhdjbtljExlp4DsbTzLWmF7/n9pVI6FBdcyw
	 y8EovrGY+Ar8iI2uLIsD9JQdiq3QG5TK2/JVPojTlKs0Ppxeld902UxDgNPjmU9JZ4
	 2o6AEKN3cCIV6RBN9+zYNSDnYJ4wDj6i+IWhoZnEhsv7zfUDeYGAJs3otmPZqZ8kxy
	 9W33oiIMhynmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B4C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395531368.7371.17049081773692504928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8c42180dfc6212b528b566bc5ae1be4f32b42c4194179710cb9cc670ec5eec
Date: Mon, 13 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783955313
