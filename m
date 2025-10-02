Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1B42F2D
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440594; cv=none; b=akeVvhDCxChbtXKvjI+lOmy9MmUTwX5QAV9bhY2BDGzdwJGmLdVHys9PuU+mVfqcfG9lwXsIxU/jT+cFHxwrHBfG9zy8Dq9n9QzYkcCOT0bbjKNDnGK8c6kI/EAnTTx97qzXtBzC85mkcsGpb4q6DYPplDEh90DU1tBdXYyM8y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440594; c=relaxed/simple;
	bh=SBbXtdhanXGCehVNpR3hCs2eSn/SpQoqUYW6iUxLHuw=;
	h=To:Subject:From:Message-Id:Date; b=K5h6+DZe2/8q9C/NgvVou8yVL8ytXbGc8EmHN7GdyuYW0ylY01ToNCiDMZ8xNQ28R5mf+YSvrEnQC8gs4W2sd4l2FVIkFSAW10MViqdLC9U9kfkqAOYQJ+wxQq6VpeUl0nGSPXLyFwwBWm5jzyJw2vkltwgwY1MW9+AjfN8xk/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYR04SE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYR04SE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D50C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759440593;
	bh=SBbXtdhanXGCehVNpR3hCs2eSn/SpQoqUYW6iUxLHuw=;
	h=To:Subject:From:Date:From;
	b=tYR04SE7Afa/nh24l4xhCAuctWEKrwLKjTg2H0nb3np5NLkPyLOupEc/gT/VI5WuN
	 emiGJWz5o1eyB4VfABd8DLxZukoYlM1VcaPvV9/50ISqKr0jJlPZ3FYFb8g5J7JLPU
	 x033Y/31xgPMgn890ZO8IQoi5bwahyo1SAvMBvUf2wqU7iS7SpaAM/Glqrc+vdIBVX
	 0S9q9RzJlTimPQ1qX3N2m7u1v3/hdcLlyLgjUwbaDSjZNq1kUe/ZMSaUStlZfOz5dC
	 vlau3vNS+5+IfQwbRcnlKB9/paNQ4aS1WcTJebszSfRSp3ltJK8vrKaNNdrk3t3Jd6
	 6iMVN9GNB62LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A86CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944059358.28598.9794216554886733412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e12b506dc8d16f4bae208501e7af6fc630f052961c72c6c0eaca9a04cea31cd
Date: Thu, 02 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759440593
