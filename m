Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD661A38E4
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741333134; cv=none; b=PNQM/f12vwQgQhr4rcQ6hnAtoMt1Cyn4Hzn0diEdOXAZpEJl1e8O68noWDB1+Bc96/t537tTXZsW+hDo4bNGh9E8DHWqXgumqyqOudtQhGClkrNXnA2FdV+xbClNNIV2mr4N4zPxYCDT2EA4VTYuW+GuuknzDxXwHo+lapW+jVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741333134; c=relaxed/simple;
	bh=7MAV6KXvFm5Ndzdo57pV7Na6BJNm7GuFKBNm613VC0s=;
	h=To:Subject:From:Message-Id:Date; b=eRzSMziB6LCTuJs580Vu57yxxC1Oc1P7Zw6bjreHZGhmEN3kGMS1gJhBTuGH+zKvcSEd8hZtssUJthRbFIQXGNT4p8iK24+5H47/fEZZrmg/xz8ZiU6ZbtqAkxHlGiVSsIOnQ9/E73jCRnP4fF/6ajnYhEMOqy1As8tr3DbnSfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSCR2fr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSCR2fr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5FCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741333133;
	bh=7MAV6KXvFm5Ndzdo57pV7Na6BJNm7GuFKBNm613VC0s=;
	h=To:Subject:From:Date:From;
	b=nSCR2fr4a5czhGBkYf5Dk34Z0Oh0vYCCf8y5Jtxp2sWApxWJLNhAH9jgYt962W+Vj
	 W28/69Dp1Wn7DhdY2BOwpRH6hIeIKukkaaiXxZQxJKe1bmVOkBIMJkcJpR1HrL9bVg
	 kU7laOT8riQaS4TAu7UQrnnw5hFuuJxF5KtjPYQNOahZY+vATxBrnl5+nd9u7nCXXd
	 Nsu3VN0lmzHNx67L6o37Iqau4bnm4fzYmzpe/TRzg0JuZKJFrdwk2iWLGWqafWenmY
	 w3s251X2e950wAYt4297RvsxXfxy+YE+wLeByH6MZK/ffkJyhdFHeNHulxmqNStMXS
	 qJnogMIlMHeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133313368.27192.10810234614193309659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45462bb43579902a92e3ca675ff846ddbd644fb5039ce643e7d19832d72a8876
Date: Fri, 07 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741333133
