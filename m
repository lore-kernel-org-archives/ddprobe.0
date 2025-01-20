Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407267DA82
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737396954; cv=none; b=sfjklTxIYuY5sDmhqEP5f0V8p6zEQWu+9xzQ8Pi3FCj/jwjLFu2WiXggKhxLS18+GooJnEY2dwypnsR9cTg4QKuLPF1nluykdR/WHLOHK1oMcx8InX4/VD+ExkQl8TOhdOaX2/OlWaO9kQnzPCYAMd0X/eocJgBo8bxJGYkxgVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737396954; c=relaxed/simple;
	bh=vbILUaUi81dGvd3I7eGq7r0tBKB091FEb3UBDiciTI4=;
	h=To:Subject:From:Message-Id:Date; b=j0nuQ16sw6tawxad3/3qX0PMYsUU5oPgFcIDJL6jIy9ZFrqzbagnBn/RQ1su+zNmGEYp7Z76WMU6dOEsUDNdXTyN0Mwk146WraPMGg9IFt7bUsdAbZ6sZLnwzKOycobl1pIlftxfZdzr5UwWARMAkUNPOMeVaBKn0fHAMh9Z41k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyfd2Ii/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyfd2Ii/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D82C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737396953;
	bh=vbILUaUi81dGvd3I7eGq7r0tBKB091FEb3UBDiciTI4=;
	h=To:Subject:From:Date:From;
	b=eyfd2Ii/XgBvQO5eKYGABn+xGuMFL5iiA0IFlkD+/Bktf53++vJR+lOaMX6/BPoZH
	 0MJT2nv3e6SzIO+2EK2AnDdqgdlroDgMcdcVY5tCe7QML9c9ZdnmhK5qATCcbnhTbT
	 gt1LFFWtEo1lozNb/F6hxeLIcsHrK50YTL1wqOYytbz9Yi7v6yFHr2aCmRhNTRScEU
	 8RvQdcmpqcnOSnhsxsgTIwzt/tKP1mRotmp/g4BvRTasPPtHF4gzKQ+hgTdH1ifxSL
	 V0OGRfpClKi255+P80FsoOezL+MyXv/jPjx1oKSDth/FVnkz2nNU126UjiR5+PGsyW
	 2qa5DQzoOIlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C5C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739695360.10580.14977579271884337132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22993c4d648d077a4c7c1ec42689eee1aa81686cee581a89ac0cd2b56bc1295
Date: Mon, 20 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737396953
