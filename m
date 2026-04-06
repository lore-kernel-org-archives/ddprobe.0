Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48B388E5F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775492734; cv=none; b=ncFanm+2+qrItFbCMaHlI4HJFor3roZXeN71RSky68UJ6wfBzNmgtCs5/LBLW4vbiV+v9Z6wMNGGl3rWvEnOb6dLpDdYf9MjDviWcL3CrE3vBBy4arm9OJWO1kLReTrOhSMm4OP0itcnxoG+95lUcdsn2Dikq7LhqkRISWP5/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775492734; c=relaxed/simple;
	bh=xM8DqNN5tPy+PaiMtKUOoh57TfAbpjGvW0xU1KhRQqk=;
	h=To:Subject:From:Message-Id:Date; b=NGKQduraSol/NGbdROsPavcel26ArnNc1khzUnD1eNPLax19oryP2Bb9gVFrZ7Ev5mTj8NX6BIbqyszmxWUlqEOomWwA+XYQj+zZNXlcsWvOAM2j0UJL2LXkhxtCCp17ep4bOSc0g7Ni/OafiMQN+IfoaC5dTCIPB88keC5JMKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdxtpdnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdxtpdnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C564DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775492733;
	bh=xM8DqNN5tPy+PaiMtKUOoh57TfAbpjGvW0xU1KhRQqk=;
	h=To:Subject:From:Date:From;
	b=TdxtpdnGzJI9F/T5M9D34xTJGh124vXEv8pz99q0zs1iNHQJBbjpca2ZUsaRAO7R/
	 /QUd/C8X5OFK4byzwkjfOe2tOpH7P8H1vBYK1OozO7cM9zEvNkg2avGe4cjAasIQUt
	 SO5eY7JpEXhLYZPHIxI0Sld40Qv27MLq1P/XUsMO/G6C0tdgucdV3zQRUUWok3Ivdo
	 mh6ZZQAaf0HZeK6NjVUZJt6kPG6HiUS2+/b2Qp9vV6ahEMZ5QnUwUKNd67fPVLf3Y3
	 vj6PwGzC9RHuqbi95M5Rg+JJMgJk0j3nzSVVhTAzLDCWu2nKGM0GL0Bgvh7qZaX3/U
	 rIEMnXnJHbbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B182FF46C53
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549273370.28839.1064243663993971452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b5f57cd594d390d6b1637d2f3604f007bb7bb8c18e2b146c813cd80e8538bf
Date: Mon, 06 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775492733
