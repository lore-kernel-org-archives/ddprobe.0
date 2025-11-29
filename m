Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2884E221D9E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764449574; cv=none; b=qnIX7dvUIpAmXOk+mci/FeQt/JCqAyKWHcgUfzHRYsOq6v4sedn6BpFieYrXbaUU17jmFiBAi7rv78J8BF0hjRrf0TTjliWnXkYXVhsteP3moVzubphq3ynIcgv2UKI1f0JrYHFynkpJWO4WtterYqDu5T4/SvR7nJSJsYV2s9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764449574; c=relaxed/simple;
	bh=ZJNVydtyqKkLHNRmheDHQnRhI8ATNV1ihcuDSRjL//E=;
	h=To:Subject:From:Message-Id:Date; b=kAvNjUG4PvAxFhLrYBFPim+eo2FPyMDaaER9mNe/hkPt30i9a1m+H4ePtMBVcutQw0swjwqZH0z+3UD5GlRzhr7UbA7tp2Ye2TQegJ2lWf8BWgZD8kQqEc45VnqqIynDHE94q8/uTobc5sypLd34wZn6KOzi4bfkjiHnDSp4EcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUG/Z9IA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUG/Z9IA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F68C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764449573;
	bh=ZJNVydtyqKkLHNRmheDHQnRhI8ATNV1ihcuDSRjL//E=;
	h=To:Subject:From:Date:From;
	b=NUG/Z9IA6KnjwNAoUBVrEcr1o82bCUr1pHaR6xzmv0MXh3YvIrV9pypVRUri1vu/4
	 rrE6i5BujNGk0TNKGagU+r/0hErUE0QJTisD5f8GKPlNK9CYUXhKxN2krAVlEZ4LzU
	 iHrbEZeVBAJIzXaEVqIzxQjZjgJFij5uey7y9n52/x6RwVUGW08e6e3HEywS8vfmfS
	 kepxbVZ8YRAkcmJMhIokfObLcvSMvAyMfH5Gmb7g+As0c+MldiWGqEeep4A2nRqyM2
	 9iCCYs60gggzdJz6/hzfVC5oC2K1Kk3PVdDaWRLOi3MfcSFiGU1prO9bTe1jzCvkxi
	 7Xx6lxY/xnjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DACFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444957358.3155.6464057468715758695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f18da047e47a195b9671ee58fded5a4cc62fa917fe05d4d8fb7a8fade301a40
Date: Sat, 29 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764449573
