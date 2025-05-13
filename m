Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5CA1F3B97
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747168794; cv=none; b=gbQTi9/Yh/w7QAeJqbTlFdaCSKFSxalZedjFfhmd1jU7vKhcd7p00fnJBdLVSfPFaR0iB+v6fxGp4HUx5s9NqaGAYc43EM03rrO+6eq2qToaKlNimBP8lPGeuKMc9gNgTRPsHT5JgCf6e8zSFDQjv5X0nxNlFnVIYINQS4OGbR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747168794; c=relaxed/simple;
	bh=mk374NawVnF0pagHz6aqqbm2M4BvuVAxKMtCsA63u8U=;
	h=To:Subject:From:Message-Id:Date; b=U53I7z6GcpRcy+1kppLAIOBoK7EpHxLkIDtmMOnmFkYtee6f6rY4J3orHx/iZv0oAWVw8p1NrUVUY/cz+kO36Nz6OM3xaQf01N2Y3E9MNkYNwF4Za8zwe6F1CmqU2PdwZYIF7WfBz6iO5UzhBznev425+zhGRFQC6oFHCN3k5bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlIUFPRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlIUFPRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A07C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747168793;
	bh=mk374NawVnF0pagHz6aqqbm2M4BvuVAxKMtCsA63u8U=;
	h=To:Subject:From:Date:From;
	b=OlIUFPRSH+U1HmqRzbrrSqA8p+5ZVWxgMEOpXfYWGVOvXMX2wJ15nP78mekUEJ/Sk
	 Hh71ozDhhUlj94DGljdXuvwgWZbYn9E5hZ8GxfTAPnRVZ0VqF5QXImXblGqb5cUI9U
	 fLwumZc6YbmMAr7lOLWLjpuCOs2dmAjA0mg4kN9QSs8gTKTdY32Wzr9YE3wY8oVVCS
	 wjWeOY2VVydSScHDYpYmdWEbs5/t2oqTUCDso8GWwHmpl5Sbk6Aj84h9U3sZucjdQV
	 rrCAI5lIIh6mbRdlqJe7R3TrfhtYECOAuFcQraGPZJ0YqwiRKvcX1rsTgxb7swgklZ
	 4TBovQjJ3yktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716879357.1492.9915058565751807048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abfbf6353d7ac8b2a0be56071e8e423798c86974c3f184ea5f133e90ef01bf1
Date: Tue, 13 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747168793
