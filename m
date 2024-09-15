Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35512125DB
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726406754; cv=none; b=MbsBMe+n/kl7rv2lnO3g0t5QwbScaNImGr8oMoYlRFDp13yAxFcyOgKAcVecXyrihJP21jX2zyWp6viJWo/H6F8yIwlSD5hpVh1/Pehu/yfKF9/waQ8XXEsTLf50izbt0fO911Yl+G6PF1zZocdkFZa66vO/PUbElVLuFgGsSW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726406754; c=relaxed/simple;
	bh=a1Xz+lV21p/XQFhxJ6L0VcH9WfR+2TQPz04p56/A9wc=;
	h=To:Subject:From:Message-Id:Date; b=YAUW1DI25mE/bGKgD6NVL0ooMa32MQa6iOzEX3r+P9K/2Ztbx+sWlnL3kVygK8cBLq2HFgydWochyV0tQLLXM8jTkFpZdrGxiP3m+r8rNkQFJ0M1o95mbfPlB/xOdHWUV1iZg5Ak58ZPQsMPZHvhIn/dJmyEqeaUuZMOaKrPjYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bV1sI5Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bV1sI5Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE909C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726406753;
	bh=a1Xz+lV21p/XQFhxJ6L0VcH9WfR+2TQPz04p56/A9wc=;
	h=To:Subject:From:Date:From;
	b=bV1sI5QxrtC3zKTtlkJbfnUIgqNKy5j271OIqPlwL3ZWuOLivIzdTdad9VoEEISWx
	 2GlvBM/McCO41TYqiPcscvrMp7fnE1UfQVnX70ioIbKKkuPwNneFIclWyyWlDT2D+y
	 yA55Tq4zODdv+m9XetUawGyjYjoRGBZwZ3ucRGl6RB0mJzVUvyxiakDML6mOwofS8Y
	 skes++ycLikweBh7OUJAFfMASPYnjRwF1YDtmdBvvs/io/tYB47EgeGMeDEFvIJ5XJ
	 XXxVdbWLyoq8dDlX93zP0NyYJjNYjFUlDJz8jCIY8PubvYYx8CFLxHWgiZoFITfmHW
	 0rfRT8MtU5iqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A348C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640675362.9932.17629369496700920560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66d1b31f821fbb986039cd3b0d0c2da72b63ce9b02c3a5a6120d75744cac2b2
Date: Sun, 15 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726406753
