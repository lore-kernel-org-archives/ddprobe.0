Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4284372623
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748825395; cv=none; b=F/32KwfIHapPRmcSNgzc45cCoXQ+2pbhd3b+SV03ZSgr2OaoOWfnxQKNyBJytGZLJpLSDMkc6dfXZTcp6N9yKOf8YcvG1IYhulpnaggwyYn8RTka9qYE0K0zJu0soClCv5obwpyVZSDOvnUXI8KuYYm+XFTwK2Ax2JrZvGRwgvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748825395; c=relaxed/simple;
	bh=eWLb5GKaoY8r2Qc122NQ3CtuMr2gRPtt0NrwzFfQuaU=;
	h=To:Subject:From:Message-Id:Date; b=mJhVda2CA5LPf1HmCsnsFkciYH8pQcj2/wMHdGxNMKHVNZBIzge6nYC57JjvkjUiOtHiVrCZxpQWPzzT1r44rKE0CEOvt0f89b2zPFrmQx9W9ScCilcYGO28Ca0B1farr2Dc+hYAMcT9kBO34NVe8ARwpLFc9YH9rYZRXW7d0xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ry5KEXyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ry5KEXyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC5AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748825393;
	bh=eWLb5GKaoY8r2Qc122NQ3CtuMr2gRPtt0NrwzFfQuaU=;
	h=To:Subject:From:Date:From;
	b=Ry5KEXyuz/k2ypTaTUq2trLSf41AZ0J2SiBVIyYo77eeycZdqPPVKDl7GP1Jw22jP
	 Uh0dphIsVUu7XsnHmE5IjXU5jRvPhVu+5apbuZ2b5HfQVRF5gN4vj1t9cj5wlcz3zO
	 BxHXH//t8KCD+X21+Q7OhZi1aC2gSd2TGBWnXD1jJm58NtwJngxI4yQ5qMI2STJrof
	 /udXm+3qoBr8wCXrGXjHfs5JXmC6eP3r9PVvohRmL4F8Z2Vj4XvLYhDpPhACtAsh74
	 AMYpxhGeM5Zz6reJpnCSMZTBxUFVy5hYpVkRxTc9vt1owOG0ZIixmmgYmP1Td9cjCy
	 Iiyv632xQUc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B1C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882539358.9065.2337689272416394729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79abb2f3971684e7f3670828a91c335f350a8c74212b4ef0e9e7ffadb4b316ef
Date: Mon, 02 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748825393
