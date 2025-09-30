Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17A1FE47C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759276194; cv=none; b=Jbf6qlEg+NO1B6sp3i74FTZnrqkmbCeUJuJco1+nrmbaYYqPKqhio83xrBgSp5hn6/hudppHy6wmdKpwNfRVZPdzQtKSi5gLCRbGyBOCxTu2P8lI868W3nR+enbXLVC5yx3XcS6a6LrYeDP+qpSk/HDnqAnrG2QfTbxUbpFJqP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759276194; c=relaxed/simple;
	bh=d32mjjHIrhiSm+qBbHo3EtRCFSKQnBJdWo8esAIJonA=;
	h=To:Subject:From:Message-Id:Date; b=JPdsIr7VeXJ4BIgglICgFLZ60wsHDl2diEbS/gr0f6C/FyB7imo7CA3UJLdya2QjChGQjKiE63SsFHbPWKwlTsS63xzhnSQBnw9ojd8LwM1a+er8ADWcewACiQyhbKSXrNSUsRv8YQx2fkCt1L2cUe68dFe5+la8uU7kPOm57es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghkEPftU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghkEPftU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2405C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759276193;
	bh=d32mjjHIrhiSm+qBbHo3EtRCFSKQnBJdWo8esAIJonA=;
	h=To:Subject:From:Date:From;
	b=ghkEPftUQ03fiR8pmtAlf9xdlq2/dWGvP1BNTO9b0thYNctMoIjlLo0JYHGq16N7i
	 DGkrm3Xok3FVI5vr1ITy5V6QpS/ymLojhsvcxF5inP3y5uYfMOqF9X5fM2DpZXFop6
	 9X6lqGwq9uaIOhGktgAI3MY4F4WG31Fcw7V901nE/vfW+O6lx0OVwrKF3FNGSsn6/i
	 WL6cITVBzqFvgDLrOpQPWNiXxfDikDqmLKa9zKDCBKeqqKrhy4tCenFgcbt44j9zf9
	 ePhK3RcyIEcbZXpUF7DCLvKX7c84iNiQPfyrynMSRDUg1cQ4CrUBBr7UwqY7+mK2Rr
	 SIiPCMeI5NOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDFCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927619358.22488.15217177561313410249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d47329de4f59512fa47d69d4c843d9a9b53c3bfd38d63d6d72190bd11acabf
Date: Tue, 30 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759276193
