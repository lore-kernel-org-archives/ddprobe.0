Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC4223DD1
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752049194; cv=none; b=AWpde0rrLa8eGGelOppCw3fumwvuHW8aTy2TaIyvtlg9B50n9FzMpuAy/it8hiZ4TG2ELu08JxhNrTtve0VMRnrpxKKEchsb/NZRn1v4ZXz/c6GzibAP1bmyonfzT8unLlABEbO4feQbAqqQa6Ouk3CDS9aScQwIPDtBy7klLII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752049194; c=relaxed/simple;
	bh=O6xYIy4PauVSnGkJHb5qZne4A5u62OhLTFuph9ClHOA=;
	h=To:Subject:From:Message-Id:Date; b=drbmaN1SRg//shY19zBspI1gKfj+yZ1yGSE6AZfrXZPXQ6Z0fBr8RBZlpi93O0b5swxv6tNzKHHXIzNJWL3C7ofjaMiIVwjtJtqiviBVGWRR6z9N5nHIZjANbunGhsmpUu0kjFvLBQbRYYmcygOQXD3I6/WPSApE3LiNAxigENA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1MVCHIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1MVCHIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB0DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752049193;
	bh=O6xYIy4PauVSnGkJHb5qZne4A5u62OhLTFuph9ClHOA=;
	h=To:Subject:From:Date:From;
	b=X1MVCHIF4Aa2o++GUllYr47XfAhOljWMwkDj2nO15KZUXXXvPzoVGvkmghNDUdOLS
	 z8iUK3SIxD5U7e1tz5HT6V5Oe97fK9JOSBL7CDsUe70YgcXj+cAcyNy2Lz1n61WT7N
	 MijJBNDTh4dcIMkdQYt4k4H5b9f8YzxzfdPRR2ySVcxSuQ+viqmvqkXZiOAwlepH5F
	 oJKHb/fscKFyZISmryCanEV2EikJ9qmfbXoTfL/T8Hd9PxvHv30QRth3lMj4CfcxjB
	 TlNlofA89+0bS2+8p8NsYRbIozlfBXrCmTi8b5D208MsODCk3/toyDkQHHqF8oNV2Z
	 c1pJoy8Z5rA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F396C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204919357.566.6401977353315311331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bcec8e274dc3e10ed8c325a4dfbf3a02e4595096d435dc61dafc24d9557864
Date: Wed, 09 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752049193
