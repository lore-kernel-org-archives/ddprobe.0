Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3985963D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745297994; cv=none; b=Fmez5ocUIqA/Y9o4h/FPFrQ+KmGDNfW+uNvmRxN6HW6Qf1J3a35tXLVTPfYyP8GdLTSNfHhTJKGb/bavDtke8UgY8Z1jB5JNBuktLViLnOUZV3C4Ownc1iFzTeOV0S1nLwG00ByirFk0Mv6J1aBb7KOaviSGRTLnwAusFH9PR34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745297994; c=relaxed/simple;
	bh=TTVTq9iYFXyCglybtQQOcnlOq6Ts3qOLlN+r0gEQMrY=;
	h=To:Subject:From:Message-Id:Date; b=fs1hMsyqeQARCokFEYbNcaBs9TFbEKRODOI/ObIdhHFppyV1N8LjuK0IO65NTDudJp9rG8GEdRXP+KaxAscwdJHH5mcXZGeVNPhjknekiQQsCvh2EFrxXkRujZE4PG1/GulkHrQGeK9AZj4JSDFMRqOW3Dwy8bSWcQ75mYeq5tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChYqCXbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChYqCXbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF6C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745297993;
	bh=TTVTq9iYFXyCglybtQQOcnlOq6Ts3qOLlN+r0gEQMrY=;
	h=To:Subject:From:Date:From;
	b=ChYqCXbfB5crLtukMMQaFunp0v89g0pEV5epf7wGydQACiOczRvOYBlaTHAGJEN4L
	 fxB/qlwGlotheAS3vnB1n6jH0wksRw9WwMhCYhb00sLuOkG1iM94NoEJKc6LGqMrvg
	 OoiQl+zy7LCYx04TltTS9Ud/sRkL004V4xjpyO6istmo3hZFF35oSmD3j8d3Er7yJR
	 XdfnCv73ul0wLiujsttG4Z2XsabVJbbOiUmJRYSenRWymAzikCw7p3fafgZRjBj04Z
	 LIcKxeJrXroSwGZqP+bPA13viFu9dLzpeE56RY4964DA7+DFHPsKlduGHYxjpf88Y9
	 RNe/DKWQckbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E3C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529799358.31105.9534674727567363323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6179a120348acca62a278bf1b791ae02ae4ff2b9ff4e8db520ddc27242e146
Date: Tue, 22 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745297993
