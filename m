Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F634136672
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791568234; cv=none; b=NYFGugj9lhGKYUODXVY3GHC8ir6oOcDOewL+5sK4FP/IRmMcRMqIjEVUaDyMhmCRzj7GU3mVUVj0KLIgHjNzlFGgiKp5juaxVQc1TbInNNjDz+ANd8xXXSoBqTsWROFwZCECRzGD0hJWx9VEdHKYpd8RclZyxKTxe53xdqHNJH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791568234; c=relaxed/simple;
	bh=oarwMzsefl7CroRK/nB/qgT5KCk5abmQmXNidFCLnxQ=;
	h=To:Subject:From:Message-Id:Date; b=cGmHBZvjImYkUFo1njzyfcmQYpX4jvIsMwTLrjPYDad6jhQGMuDAovzaru118m3HnqmCjjKQgxVs3WsPvKVkiG/cb9lOUkJh8f7vb6yydavOLOODeQ3qNMV60Qo59fLwPwmXKrIh9VnUjwGTP8wooOspoOeZpxHzmeVuv4HgX2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfR5bj2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfR5bj2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A80C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791568233;
	bh=oarwMzsefl7CroRK/nB/qgT5KCk5abmQmXNidFCLnxQ=;
	h=To:Subject:From:Date:From;
	b=qfR5bj2f74pSA637nVi3AiIrb9OIzd74QF9ONGo6nx+c0vC9mRMxLwG8Bmkl+y6ku
	 CDz2x1xdcuki6K66jYroq3qnysF1Ak6MCh5oNNUEXv4xlURuqvNEKkLQKK6XUSVT6U
	 al6hJP4QDardJYAgV/hvOr3CRkc5yLx6+LQrInQdjBuJOA0aAwbEW+0PMhmqeLmOXD
	 mscVVi59k02wjDZaOmbR5pFWH/96DjQwqVI9APIijmcZph92Jw4UEeGqD3BWlAzVbW
	 HqdLWakQBMNfbfkj0shTBWjoCC/vVKgYulvVQZ28S5nYpNBgou4mPBu4xXcqPCGAuA
	 B5msVYZAmv3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0577CA601F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156823368.3988.5757270495361330698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76210df5bad71df2ac79bf03dcc12c0fdc538ab814160db8967bba3d5d2264f4
Date: Fri, 09 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791568233
