Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189E71F0E2E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757429994; cv=none; b=U4DC5rJvw81o6h/qcfSQQD34fuyl9FmuxIOPhhFYd3YYpwnomH5Nx2pEkMfnR0VuaFM2Jpsp1WF9ikikZlWmTSJHPlw1D1t1eluCnO/L9Cpg1N/+u9z6b37fjh2Arz5btuyfmJ5bT95Ymgtq4FPNlHHah0OBCvM1zs/l1Cwr+/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757429994; c=relaxed/simple;
	bh=INa2i3rDhI604QFlLNQp7ZKiZzg5T2IuHDsc/BV1nM0=;
	h=To:Subject:From:Message-Id:Date; b=dElpuwiU/jG63oKw6IwvqP41gZnukVoYAkkHplwKGxAY56crEoWVzGR6Ia5kdmp/MKoJXdTn4v9JEr9//5FZ3TfFd/xLPDizCG+qPPgLBmVlBIE1hI+p/kAMR3BuE2yy28N+RWKSQIh9JgS1U/TJNALXu0fD/JhvNSg6DMg2w1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR5+w0Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR5+w0Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3369C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757429993;
	bh=INa2i3rDhI604QFlLNQp7ZKiZzg5T2IuHDsc/BV1nM0=;
	h=To:Subject:From:Date:From;
	b=IR5+w0YuV0fLa9hvQ9ieWvBCsgH5J5zM611g4mjrHhw6J4a/m5w0jXg2FI/Gi/syT
	 YBU73zrHeUnpoavMYyyVKlkneejz57NErMFuOFhtbNSSGJkPJ8XtT7PrYeG+TV1gNi
	 5XMJYADaWalg6QttTVHi1XYyMD/yr8eSTDEPL8Q1Z8BYqKiXsfkdqHute0ntmDCFqn
	 kfmtm4ms7ZS3ztY5Pa7sZvW3Le5WMtbOs573qqOj8l+cc/HcaFK8o8o1AAT6Qt6LJ6
	 nFBwNGpOTxT+LKUWnHb/fHSWsS322wF29ztYyqB2rfrokBmz6v1lxkjYrkV1/+0nXA
	 cqRcrAtvadX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DABCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742999358.16635.9678971833916148507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5996b324079d1015dfa9863a5308a51945d5001df11f6a2d7e4b92870bcafbc7
Date: Tue, 09 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757429993
