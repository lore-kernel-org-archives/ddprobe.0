Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB392110
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743447594; cv=none; b=HsHRvxm1xtKvoTdIeqRuYCcey9CFTtRtlnHiwPQ3NiMRWEA4alRyMFxeN0r4T9tWVogNUNODWzuZXq+lNVqcEbt8Y8s0r3PjtcA8Y8zSUocttj2vrdrIprVjyRije3BDQUDozdBbeF5SCX5bYhwiSu/pSK7675etgf1JJDDAW7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743447594; c=relaxed/simple;
	bh=KAm0vl3OFuFUJx5FIgYlq3CJuCeczPoLciBfsxYrkek=;
	h=To:Subject:From:Message-Id:Date; b=n1Bw0BrknPLsMuZP2RpFTHd3L6hKjgTHpii7+zHjp7P5mM/dfPHxOifnrPL8uvfDuz0NDEzaVl5K6rFAjVpygfXy5Ap4486uQbI55+q7LH6o6EFqvPiLR00jLnbMQH47bi+AkOekqPQQuoKuS3Sly8AAPRw2T2yuosTnzx6VSkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qfrg5275; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qfrg5275"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72ACC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743447593;
	bh=KAm0vl3OFuFUJx5FIgYlq3CJuCeczPoLciBfsxYrkek=;
	h=To:Subject:From:Date:From;
	b=Qfrg5275GnSg6WauRaBYkiLU9dX5I6eaf6qvM3c2Y9QSQuI3LmoaWbu8Vm4n4caZN
	 pJyDSyCeMXEH5hUNY5+s/1YcUDheDOyddDwTXcHz50OJvIxaaWUyBwPLs0uYQaJRQT
	 XV02Up/X8NLz7pusv36E0TxlOOYon+H+yM/MMH83F0U0rCwTP4bCsebqH942wsfY5E
	 cifV6GxcJIZPQIOmroRBQur+1IMC4Ph48nvMLZv8g669ZIbI6XZR4hYAjvNkW9uYIJ
	 e2j8NGJwTwvGNjld9dh7t8nqVoVNzKTRNYOrZ/QxNc3altXeZTArOdnzHdDndXD2lX
	 P6oTHXBmIDPdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94117C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344759359.32506.6886744489698723770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c627016a237670fdfb344aa903f805a7dc0df64dc6452b7a8e1bd507b4e4ee
Date: Mon, 31 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743447593
