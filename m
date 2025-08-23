Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA3717A2EC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755913793; cv=none; b=Msl5eEhrixBq167slobydq2MhNRm7p/OPvojAXB88Cs/r6Uiw0KO5eluTrQTmPAY2OhtY0YWovEt0iKkO7XTJaobpjQDA6f4555nIz2PraMzBmPLSyVzA7wDyGxGceEbEAvcXHU9jTLMppghCC6jUSdVejMVDYeJZ/HWOhlaatw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755913793; c=relaxed/simple;
	bh=EbURcOTrjxdQNEOMa+Vb1pKuEw8EK8hAwVyM/qi8a5s=;
	h=To:Subject:From:Message-Id:Date; b=dvQyaLRPW1XLbY9515J0HCe4LMeOnCStLHWN07l9ieX3Vw9ueGmS9N0FuuzRsa5kCluLFn1VgfwvqRgKGip1ZufAk8cbMrj7kZIwziy2hsutPx3Z/WgYobyDiQh6PGmcT0KBAW+Ldz05zCaep585fcVViCeRdaFdGYssBKLN1VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2pg1WnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2pg1WnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3802C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755913793;
	bh=EbURcOTrjxdQNEOMa+Vb1pKuEw8EK8hAwVyM/qi8a5s=;
	h=To:Subject:From:Date:From;
	b=o2pg1WnHWVm26LAQrcQ/akBHddCdKz7/LJFKteU858kzar0K9S5eSHdKmzN+Hng6/
	 NsfSVSK9aYA7hoq0qptjWCu9zwnGwWmRTri2RDLqjvorRiNCujuEfE5KIp+3HDu74m
	 AogDjHIfJrMl748DWGHxamwqdBNz3k2mFF2ZXEgj1ktImxzxcPpAhmHHSRwztOHus1
	 h7VlqhoWwqXeUP4VF5tXym2toE2oT17EdAQkhIvUwbTAC6WvGxLWDLCqHaCtZHoc9C
	 P0umSPpO3V+FsHLh+dV+vYy2Lx5g6zyQh75iaDfXnAaKo73UP1yj3KxCVbwPGSrAF0
	 Zhzk5Q+R53UzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F7CA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591379357.31057.9678609081808563055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841465596013c01fcb31e3d267197ccc953ebae520d95371440b48d17bc61a00
Date: Sat, 23 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755913793
