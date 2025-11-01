Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEED1F09B3
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761983394; cv=none; b=XKL+36/I0Zdz8tJIl1RPTryANumXibbG9cb4r0dLULGcXNT6OUO9wFlmI8/kG6FgZ9vqFb43DybvxwnYZr5C0AmMJdwN80arXJ3aQeWrt9/siV4qJYYy2FzFrS/q9wWMYUk7oI5I36f6wv4YIuUZxvGXePVBngMQEwfoGtHewug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761983394; c=relaxed/simple;
	bh=aQWQmgL9/tf+/Eq/UGkgmzpQk8184bok2IKft5GbGLg=;
	h=To:Subject:From:Message-Id:Date; b=e2F8rlM9I/bcj6fI3xuosWWuAjPlAb6yLd6nnt1O8tM+JzBY2NKajpTNQ4XtBGMBXVagy46qeGYtQ29D84EOqBGu6tC9Zj9TeIU5Q/czsjAooe8S2fbdCcsB4/lTjhJyiCywwgX1q/kKG7rrNu6VwOswjQM9bZegkMk2V3kI9os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuMOZn4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuMOZn4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC061C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761983393;
	bh=aQWQmgL9/tf+/Eq/UGkgmzpQk8184bok2IKft5GbGLg=;
	h=To:Subject:From:Date:From;
	b=BuMOZn4BU1S05JaR7zYmEv9ZeHjBPtRvE+H/WLwnWrL0UuEWd3H9HfPb+u+Us+0JI
	 tgYFxj7d3FrPMb8VH0WA7WAr2LJJq2lQuV+oDiCH9bT2bhiuT/siWpouqWmWMXlJxY
	 pLLcWja74vHR+HG4qC8loLm3MCkMSbix009EjTvW9q4MyN8sh72GgFf2tKU0QIBLKu
	 +EjVEgcdggs0wWVP+Cxri935wYk8sj4e9WFbj5mVIMFjD5dkFNKvoaJew4gPmKniHs
	 BT8eKm00Pcp/Ak9WS1WVBvWrvqhtRTeL5okFPHxIiQ4bDq3ez6bns5J0t6HHDthIpN
	 rJ113sxcHXJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A9FCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198339359.13402.15225096602638115341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbca49b1219f371aa4a5edde08a84ed6f2e6c50fc9b3ce459448f8c61e7176f
Date: Sat, 01 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761983393
