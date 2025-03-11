Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38572360
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741679934; cv=none; b=uVXaTrdB0aQBrbeNmCIn917K0Kw2leE/7llTufad3MwcejKLh8pzV+ZziSUfNXHqvj9iEFRjQVY+tdQnOmOCovqjOR+Dcr9FnVZN5qeKUfpSfYIvwOLre8Xlc9YlxYJgUas/OmfpiExtgG6MBOVrdbxj+5peYl3A7/JPh83ZmZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741679934; c=relaxed/simple;
	bh=4UjCi0mUDRDLZzIL6a3ncJHpgp0St9GpD9sNui20nNQ=;
	h=To:Subject:From:Message-Id:Date; b=pxuPsX25nMyYDE89dy89J0o8SrubS9DcQ5rNIUr4aWNOTnNn4SiwVn3blSzYZCl+eeOayN5UN78PCrLVleSHSHy4lqEYHarleABJ4W2WLi2ta7hODMvNEB9Fv6y1VhOGcYdt7XN8gqgHdumHlKJOSId4IMAIXgkcFdcdrK2m2qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtJMS3pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtJMS3pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F031C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741679933;
	bh=4UjCi0mUDRDLZzIL6a3ncJHpgp0St9GpD9sNui20nNQ=;
	h=To:Subject:From:Date:From;
	b=dtJMS3pBPf67h0eTFs9IBmb/yIiCaydkRd0oMgTxUkgs2aK0OfYLPrAtZqhybPy85
	 1JvkJRnwzCpWx1t6O49VSZaoBEMP8eg7xh5phr6bayLr1UpDEhn6yfp4qbrN0dj/DR
	 87LQiNOLGHSiOG+KZC6brblwThueGpVyVjrVGH1njVlvNIg9BREy44nNIIMDMl6wSI
	 g64zFaXq1UkOJScxi3PwhpQ01rvBF7+D+abR/zt5JnKWaEdwD1dbNr6yqSa/d3Y7bx
	 Elb/Q3Cv9iOR2tSL5fTD/MyRz4HxsM4VA+COIjiXdNquGPxjmgr+5rahfCFg2Mj5wp
	 6xxFgMRQDRkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D1C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167993357.26509.15815776906373114839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752008210f714455be3710e1c15818eb498b0aadfe8c9a9752facaf806a7b941
Date: Tue, 11 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741679933
