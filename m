Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB234503C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736145954; cv=none; b=kE3ow0OfvTgEd+HqUgOu2ZqjcW0yfveS01Ch57qcTR16U0bNp7EWg6cAQdFMg1253TrLXlZyAo96a9xZfHIzeQCQSjEt/oBJmVC0n56EZNETvF7z7ozfoJVMUZE9kkADBKszKUxX72rXPHPPsK6j4+ckHR4RmQ5Su7TXt6UAfX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736145954; c=relaxed/simple;
	bh=AODeUI4YfyZJAPLsxrByZIyCMoXgfVpF9mIWw0BoTZI=;
	h=To:Subject:From:Message-Id:Date; b=B4fBzhDdh5Fh4U63XpEuWic+YKAV+yoD0ilYMQw+lX7GcRoPL+5ovzFrG1tuVVhAhOJ4yGFGD1Q8iIWjYvtuE5AXsDKeKmpV3ss6zCJ/LG6ksUkRfVv05FpI9PFCFrlyH8DCDCt6CtNwyPtO6oAPLUs0HTYqlSjy18aV1g8yOYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PASt28u+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PASt28u+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34CAC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736145953;
	bh=AODeUI4YfyZJAPLsxrByZIyCMoXgfVpF9mIWw0BoTZI=;
	h=To:Subject:From:Date:From;
	b=PASt28u+uEVX03O+Rj4IznZtVOI/Sq7tZJjj036CbOcVP7cEoDDiKXVekm4xBAjvZ
	 blu71LW0lJiMqRsc5pq3MrjNP2iQDpnvo2DDik5Sdv74C8P1dmGKSdkmKPMNoUnj2b
	 6MOxuuxUp91ynyRbAzbJfB93wkolO9/UDmNzyWEgJ/wMjnteNi7RGSHlBGH+Pwqe4m
	 bkTv8SjzhUi7QPvSpmVkz9mGZtruflIjdvxGEijMCijjIHQ6M/ozU/gwbO356Snxht
	 sC/VQsV6sKDafJV5vPQ69Dblhm+vJB4kYhT8mrMwzvsCf2EU9a3y0MphFrj/FWHvWq
	 YpoMPXbxlM+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93912E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614595359.24073.12235265525993579545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da761e3a02567bfe3c94bd2223e0bc2ea4bfd5e1652a7bcd5307f0fdb1767d43
Date: Mon, 06 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736145953
