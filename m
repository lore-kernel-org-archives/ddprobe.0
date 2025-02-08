Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A6243948
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739045754; cv=none; b=gDnXNP3j9Dpvdio9vZggMaSkagZ7RvZjvPCSJE7dz2m5Ake3fBPV6zJletY7lQcjCii6HExg1YzCcUf12e3qJzRUKMDRI7UT3aymnbL3Ct3CJoYcE98ltQT87mnYmX0IowGi9AeClpjGJrOhanABQiHdmaqCI7RNfdwL5kMR7/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739045754; c=relaxed/simple;
	bh=HQB9lNQ8UInSyuS5Y8id5ZNsya+EU/YhiYG+tlNZLCI=;
	h=To:Subject:From:Message-Id:Date; b=N9JnGSnv5AYHg3sSjCbBMV29e1Jv1ZJPs7sTg5Ka9prJ361NkDbQWPrnzK4oFePb9SdZF6MRuIFiw2TSE8DQzGjl1yS1V0d2EJrtPsdK0zJnhC38XQv/fXStp1OeYBbSuPDeQUrVgjywom7SGOMRDjpxiRdm1eKRnbtHFGA206s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amgdv1FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amgdv1FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDD0C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739045753;
	bh=HQB9lNQ8UInSyuS5Y8id5ZNsya+EU/YhiYG+tlNZLCI=;
	h=To:Subject:From:Date:From;
	b=Amgdv1FFhyMWx5VgN3Q/z4I8cnNIV7JOBEpuMHRQC0bJvkXT2XtaECoDWeBwyOpJb
	 wmbPsCqyTM5G52G8lOxaSmz+LB+UAFo03O9FGBjYU6FRW/wIi+nJK5AO/Ea4YJ8Pe6
	 HXQXzV0sgys+9w77mQVQSF0Jt+KQigCLB9qhtbb8+/6nWC4KdtWJGRRbRzghZ5EDIC
	 4OOd3BfB49dHB/5W2nQ1cl4SVMXf9r2mKCM1V5/MO9Pcgb03DHdQ83dpbvV1e/ATpL
	 9/s3MuSERFDcp/jPm4KSPmYQ1y33GTBco1WxULaz9MgXfr6JuQpyLtbR+FJe6HdJai
	 cNhw3k5yN/aHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F67AC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904575361.5243.11552596782115604542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3eea9ad4ba0b44b4d4179f259339bad1f8053e2511818b3f9d3610ae8317334
Date: Sat, 08 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739045753
