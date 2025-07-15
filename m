Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B31122259A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752562794; cv=none; b=kmPyGe+BS2tN9GPRa4NcaREKvUMJf+EpeYer6EujsCCC+hSt8terx63bHoD43vyDvo+A3zAfoZ3Aif9xLwv1ehkaAr745w318G7VcTAvZq88IAt4L6LlPVnn6DuPUwukCSbarSvMYY6bh0A/J45FJzr+2SKqBlLbn1dEKgdj/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752562794; c=relaxed/simple;
	bh=rYn5w/sI0Ty6x5EdqkV85rwSTWq9hjdThNgulBTL9vI=;
	h=To:Subject:From:Message-Id:Date; b=AbKJaDsQ9T2UxKoGAVgka8JNnii9Wrw+gDryVOr7WFXerC0CwDniDfcsrKSzegxrn2qR09Gmzi29y3yJoa3ky0mS/J8V40g2OQrDreFd83mEYpOHq8p1f24PURKLln1DZdRwkrydH8hhJUx2laNUAgP90go5WjyyEgK2dxk4mxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE7cxqdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE7cxqdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E521C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752562793;
	bh=rYn5w/sI0Ty6x5EdqkV85rwSTWq9hjdThNgulBTL9vI=;
	h=To:Subject:From:Date:From;
	b=DE7cxqdqX5EbWUo2goQfkrFhqamF5S+iH2zqTQESqIUkerC/qga/iaF+JZLmBH8ZV
	 g+FOyDqVBblSg/7xbbh9FcowE2Oo6Jr44UY/9k8xHYvoXzuwVXCZA/qvhJO4uUlEOI
	 1bZRTlbYaIBOvHz8r7rLxUEtyyPS9Dl28Q5I0SbqaYkInmLf6VFaOwUVd0LM8ael3l
	 7N9i7frF9HzdNpZ5rZAjU4mfHdRkDERAwdHVS4WlbF5wVCppC9Egfr+PsRjhZ2gR+R
	 zYTVmgax4tHOnsMizrR/4IkZZg+oPHG3E44rO6Tl21ObXcW79ShqTRXH+nMLATwLFb
	 44vQ2BUF+D5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC7C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256279358.14834.7566600791741665759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8251719a68a3a507e574f1cecf33c83a8781722efb6d364669cff20338a9a4c
Date: Tue, 15 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752562793
