Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431BB2E413
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766922834; cv=none; b=F8WV0tIOOtwmMR6JTub/o96vqqXYxKlosO3DD+NKC7+EqhJ8SKYROTjlxj55dxtT1I5JSzmY8evbVZ8ldauukmbcseUcYgdn+wqQCDqvWZvF8tHFGpZjnnV6MNSOdpR6ZYvuNyMU2Yjv8sJZQeE/BxheZPD8Lyxv/7jDzWze1aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766922834; c=relaxed/simple;
	bh=2rMutw1pzdi4MFxrbvwPc1FRpbQoT3U9PivQCdOqLcc=;
	h=To:Subject:From:Message-Id:Date; b=NKiaXZLRlJoygn78DnyE2RIj1sPM7IDLhreDbvuSqbkjhXLyFUMl0QHgxWi0GQfQEztI4zPmmczxN8v3gZTawAmOLd7vn3/UrccZOnvmQVgGjwGhUQC1tQEHvCTB/UmJ16e2JLqri4bboZm8PGORe+wjRRxLIBkbJolvim76NaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFxVmnoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFxVmnoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5493C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766922833;
	bh=2rMutw1pzdi4MFxrbvwPc1FRpbQoT3U9PivQCdOqLcc=;
	h=To:Subject:From:Date:From;
	b=WFxVmnoPpy0wUGrdiWPZRaYk6ohWMvG+1sUZi0q1cGDsnaFQkVX2QORQQfB4oeVY+
	 6doEmVqvtcOdTEd/O9HWEqFryhQ/hB7c9Xi44XxlAN8uDugiJ8+CvsCnFpmOTTZWJF
	 y6LAM4FON02b6NWFhqdPY2CMMxfhIvTEvf6VNO3NLnlXOnEpJAPqgy4hgrsoh8s5N/
	 fFVrzMr8Exqpsmrfxf7MDg2zFc9rzc15t/gw9JTzGAeuFsAlZ9uvk/3s6PqT9rsBXC
	 2hD7pCsAg3UfkmszsFncavmoqCBghJ8sGFgerEsBhOXpL7eKweeU3t13gqmLyPUM8s
	 8FPqJNYCL319g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D56D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692283358.23200.6887254979653434746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d6438df7c4cee6d482084e70b49238bb44d226bcc9a20c4aa36d948565ca3a
Date: Sun, 28 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766922833
