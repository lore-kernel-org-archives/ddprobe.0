Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E41A76A1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722360354; cv=none; b=cxo2ZmyirdgqtJ2yHc0PIooiUGoVkaX8mkdpMxDVR2+TmXmBzhPtYavRvzP59mwVDk33sanSLe0ZqspgCYHZ951FIzUKYLstTH1y0oGJ0FPqgPM5ZP9Rkes8stxuGQNwInYa22HCpr+O3Murth5j0wpqhF9pcugZbOi2n5HWrRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722360354; c=relaxed/simple;
	bh=C36MRaA8lzifykh+Zdr0+VpqHb7PEjlJMg6ip0jdIHc=;
	h=To:Subject:From:Message-Id:Date; b=tMdB+Mid/hKw5pp9uQncZXHM3WQodJbvkIJw79m5/C/rnfnmO2t9DmB7pkfIMSOjvcBbDb1XiepyTbQvWwdpJx8It0+8M2Lc+oKTXubhdr8OtUeWKq7N72+IAaQPBmAG/u6wsE4IyteoTl1P4bN8iP/Lx+V+EB7TKjz7kJDl5Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPt2OwfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPt2OwfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A41C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722360353;
	bh=C36MRaA8lzifykh+Zdr0+VpqHb7PEjlJMg6ip0jdIHc=;
	h=To:Subject:From:Date:From;
	b=XPt2OwfB3pbOu73czlsqP9/7FU4GL+T4XLLeaBQD2dgfzgirFxqHmm/Tw6TUjuz6n
	 JmZeF+hwBYdjAW6KEZGz5n6Z+Fv8onWMSGlKZeskWI0GGa+eTN3+lYzDGtqe+T/jut
	 aJTTTjhmZFvvkjKGJtvdbA6wBJf479ZnIjt7DBaTAswAqQgbY5Mc3kZK1Q/rXrChxi
	 qy3N1j+b5qiGyO6BAaKN3eaZZ8xGnzm9atoYIBorYGULtyy6KhihXrddc+tzyPgkak
	 Ei0puw/EvX0WejN4YVDDVjHWh9lowK9HQSZDkgZ93BjXk+ZjO3Y2TXeLUiKB84ZCcc
	 T2DJHcdUncQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DCEC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236035361.10899.10819238241975335934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9fd06a33f3c162229849641ef8e6332d908fb64e746f4d793df8dc796f1543
Date: Tue, 30 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722360353
