Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CAE24466B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767050034; cv=none; b=IsA7dw2U1sV8ylnaONkQlbJgV7SfVXIpNxX3Brzhd+rRWkx+qEwBFBvhhYacPirfLjeCUKK8dgKJuaoAUEpc2t//mXTdkD8f5O36T+PHbj6jOoCvKu8KoJOsYX8dvRpbhVhKtUZsEBoSvZ1kbJvQKdv1zBYZaXSzscvPpcMlkaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767050034; c=relaxed/simple;
	bh=KaSjCb0m/6U+uMf7c8/CnzaD1HVbzL4WyLcudI+KesY=;
	h=To:Subject:From:Message-Id:Date; b=GlIe6NUMBvHdAk2DNU6/a/KukE/oD9XIW+mKn22ZiP1Fkrh3LwJKgWm+IdynO5KjK9qD+jRJKXxJKVkzayzzQ7sEDoFbxXGBCHvnKTccFslpUHzeaW9p5O438rh9lpv5IT37Rr2VStx8VsVxiBi8YNzY51FcOe2L9uajuB3ydkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXNsao5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXNsao5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767050033;
	bh=KaSjCb0m/6U+uMf7c8/CnzaD1HVbzL4WyLcudI+KesY=;
	h=To:Subject:From:Date:From;
	b=pXNsao5vbJ7WU8KpZCkzJS0D2qVb1voY32bYdyu5R5MuVvhFK22cIpl1aQ83AHNqW
	 G8zJZZCK/o3lM5HxY/belQ4Hq5XAMW7FrAst4ZKpWnt7zNaFPGFCwnoChf/cyt3W0v
	 FKvDCpk+66Q+US3bB1G1oIrwYw5CvsFJT5Bf8wtVZ42ZWRWePRbmE1FQ2gbo/oj4EE
	 eDn8lelSX8xf9GIA2vDVKI5AERTp5JbKo3YbPuKky6FWDQn2dDViRpUTLvKvYbkQcX
	 mlX1v8joPwgDLlI1b0cYj6U/m23a6lF4b2iehDnldmfKjLS/rCoDkto8C2LNSAjfAc
	 QPcl+ElJSScWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C27E94100
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705003358.15281.17272078143713287901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aaf6220a33ccc7d54cec5021e6eb2721ff32bc78612dc81ffdbe72b1a5de63
Date: Mon, 29 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767050033
