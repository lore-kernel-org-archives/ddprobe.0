Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E73284A7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736861154; cv=none; b=oC0WegDEtc+0phuj4qBaza6M3kEygSIK1yTF+y8y1qljkvCXQOmhBQNApVat39pM57ziXGqfkXnryCt1Ddgd3CAL2hqSCLWMZsYt776j1jhwkDxuCyBxlv/z/EagoXYtiJQ5tBrdwmpSIuLJq2FWqCrZdjIdIGc0CrDQcowngLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736861154; c=relaxed/simple;
	bh=7kpSFCwRu8cAVAOGO3gIVDDplRZnTnIZcXBzrpQtF/I=;
	h=To:Subject:From:Message-Id:Date; b=imIWVYYaLbRFpg8zqqwoOKLbi46PKanFV6vcakqmvMJJizHn5ajicFzsMooP4lIdtEtxV3UOc7WSHQe8KsYr83y4NACehtF0hgbx1KDJklG/8uUhskR3nYKvR9b6Avq20s4V/7Vrrfv+nFnq19o/gARZ2wLelGRyZveqMf1Qkng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX38aNMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX38aNMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB60C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736861153;
	bh=7kpSFCwRu8cAVAOGO3gIVDDplRZnTnIZcXBzrpQtF/I=;
	h=To:Subject:From:Date:From;
	b=TX38aNMWopEpTWqN2Sh3EoEbQmnTKbbaWvy2PUXO2AU44GyRiKSIKlFyPTdtAREzF
	 gD8HFx/WDQ5lB1NsX39vPt6cfZm/LAaMWkIP/tUEmSh5+jxDwBLncPhv6cdzwDdaUg
	 NL5P/QBdQTM7SYSE6JfMigG0Dj/oPUzcZfMUJ+NcP4e8dwYBfdX0FEyXkA2uALUatq
	 UDVtei1vP6iENXbiRvtALxOYN/SXdwArCKfGrREgbvcj9BOk6yqnnihbV8/eItrKa3
	 NC1miKAq/n6QOJUGlVe+/4BX2yi0tKBCmBHlo1DyI8beRFL1I/lZK3KvQof4HHEbKT
	 8OpHFh4XIU5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A2CE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686115364.22887.12790781090449086308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea284cfa916dc2fee53bf029c3846f4836b93aaae3c1dbd0b820324e9296d76a
Date: Tue, 14 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736861153
