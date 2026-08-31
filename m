Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5585137B025
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788160834; cv=none; b=uenHE0XzIU8Ep2EDUeOxqS1e6z3yYBA8/H3DDWPxSSOpjeBz9tT0Bw6R7ieQ2dSNqx/4AdrmbRu74K56Deffz/RjcqSnzJjy1bMUd+hi0c5/3fFNdwefCoRwyWmktnbpoDC3edZVeqdeKA4TZm9RP4uKknyxTFZloIzVGqZcQfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788160834; c=relaxed/simple;
	bh=S8rlhzPi7wib7c/Q659IiPkbDYgrAAps4Wyf1HsGpmM=;
	h=To:Subject:From:Message-Id:Date; b=cJKjMIeIMkRjv4VtpCUQMuSOk6a03TE6+kBx5lKkfRt/mcxRR6BYszDbJR5mrmGbq6zUd+Kh9wcM6YfYZUNdxL40noZ/LZ8SGRU8EYwIE6OBvTyEB+HtQgY8X1rrMD3LuzXhHx60QJykjK+oIHt5nKKsPDBembZRkoAmY2VvoPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTCFdQC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTCFdQC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E344DC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788160833;
	bh=S8rlhzPi7wib7c/Q659IiPkbDYgrAAps4Wyf1HsGpmM=;
	h=To:Subject:From:Date:From;
	b=TTCFdQC264pcIRqnybo7yWNTtZNR0hEpNENidTDEPHLZeHdFr4NqVwEZPCIfXzOSA
	 VJnOqZ9hq933Kg6nFMHSkdim5XfkubzfyF1rl3kA3bTwoIWIMdq9OWF+Y+/cMUlIY8
	 CKrxxgMlb6Da5ffxMBhtpEQ5qz2s3uzbd9OI2/rOo1PbkOi5jZ2Js2U9yNH97CvGZD
	 ER4fLE5bPxMXU90zMQ4sYbR4Dtgo2CsHwOyY7fBK8XMRs8spRErQ6Rgk/y26gsqBJH
	 YaXEYGvTJKEXS6f+y00Tc44RWb+pRIWX23FXi8PfYubbuD/wMpWdDlZyfRLE15PcDx
	 ldRzJpxKKDLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5DEC624C2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816083375.28299.18087530007520691255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734b81b418f8830feb333430b4e77a4168167f63034e5d66c791ace3bdb12646
Date: Mon, 31 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788160833
