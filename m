Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1716A30FF09
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755778794; cv=none; b=KtQ9j+NRgLWb6dg+Ba3ku5DS5ix5tEQI3uPZ1AsajUfccZjs5NkI37mcMj+LD37r8k8TX6FIYkZERyy5YUT3qcQ7OCEibZOPTf4kmYv4gzmEOdwThq3D0V6d9yiT6DQASZjQB4ukMbIgDiEZuJdr8Pk8J/65QGemqQ9ftCAu00Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755778794; c=relaxed/simple;
	bh=3fqAWY8U2w8xmjOt8MnhLo7RMUJ5VFy6emogq1TVaow=;
	h=To:Subject:From:Message-Id:Date; b=K5x5hXUc7w870ikEIDfp1/HVYNJ7Lfx1hmi4eBgKXIwg0PQg4meK10vjOIyh4ypfKgT17QDbCN/icn1a8o/3QJNj8DZwosAe7QG9fxtfwt1eKMMvGHtK0LIzO6I9z7uk+hU0JOg4sTCDXhhtwvOtNK8xmAG2Uk8pgO6agzdqdC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7PsfD21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7PsfD21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA4BC113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755778793;
	bh=3fqAWY8U2w8xmjOt8MnhLo7RMUJ5VFy6emogq1TVaow=;
	h=To:Subject:From:Date:From;
	b=n7PsfD21kRihPfjGaUOKNYwDnFb/Dj+fkO0+Ln9S0uevZCda+EwCbrvNlLqHDE2M1
	 oIpm8vHa2Uyt/O/chIpyFtUrR9Spstr+DWLoIVggP/1DrGH9f9LreWdXyySzB0lbBo
	 5/NrwQp6e8w9mHivwyu4blJLYYqGzxQ6V814i+/cnDB5Yy11ODgNFCWsTrUNDjOZ9j
	 0IK38+ix7kSIjp+a2Vsm6D3UT39lX1yg5iTgWvZKDRqZa8nsQ1MGU7Pj2P32OjVkvk
	 f5fplFgrUvb9Lk/INi7ID3pO8YXJPFLRfPFKLK80sqASfFQkzVR4wnexBFZDoEPw3e
	 q5l6ngQH1kexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBFCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577879357.27296.8138674986557116896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6318033117ceccebd11883c592de56f6214366e9671f6d2849497dceccec9a3e
Date: Thu, 21 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755778793
