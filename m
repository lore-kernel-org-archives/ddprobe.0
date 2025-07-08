Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223B9246BA4
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752011994; cv=none; b=XNGauXPHDpN/HgUyBFqbIC4Z16Ju8Ylcz4lieN5VG0F86Hh3qVoezI4OEAySi1prOZA5l2YIPKnSSeCAK3NzigO+r5BH+WftmUsP8KNj4M+8QRnkttPCk8ISuFBgSuUb2nU7ewn6peiFpXdamHxhQ00qJfaXoQ0E/aoIO9zcVKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752011994; c=relaxed/simple;
	bh=oKVw0mZXeXLpShjhwwIyyGNXmT8PngR9bO9q73XDnFE=;
	h=To:Subject:From:Message-Id:Date; b=FJpKl6IlDd5RThPyxCXdDuMRVxex/cixGKwkrQ8xehq0dp+6x2B/GY7PesTViBcCUwNLKu6JbEimaIG2CquEdE4AD2yZiw2+KtADJeB5bnU3oslx3ZV3fVrG+TLwjRrp04Hphjb+mly7ijMhVDxI8yL6p8uwhiTp1r6C8Ik0OVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7DXODmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7DXODmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A68C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752011993;
	bh=oKVw0mZXeXLpShjhwwIyyGNXmT8PngR9bO9q73XDnFE=;
	h=To:Subject:From:Date:From;
	b=e7DXODmD75l9cCNBYc6Pp/J1OIWVM47IEZT6vXopYX0UOdBCrr0S5hJiKrviJd31l
	 TWkvuIuHryTAFyks2/rftmYRMEP4SQioTBhyf9jzWibppBYbVn8KbPlp3520kCjbhb
	 DTVfSATg6CV4UMfmR4KgzksjMLc/1iNqv328absaQNyVN1jUNVJotIaKuqapiRH6G2
	 q1Erqs9BSldzREQOghf4qClUhgvujgafY1048O5uwe8FCKf6PXPfJVUFfF8gLG8KZX
	 7hqJicVE0ISZZkUOMy539wVgtJxKl23zxglfvVAalMc4rKMFboHWFKgxhxQAiVbUf6
	 R3OJW9bkEtyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD2AC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201199358.10898.6083613394485351431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59445e769bce95ec9d8e65a7d9a417abc914bfe79380d53b1800fc5973746c93
Date: Tue, 08 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752011993
