Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FAC2DA75F
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765030374; cv=none; b=s1ZUlvx3b81xk/pMDEtZOjhHughI3Uzb4TO+GLxMIuXeSmgOniXM6wc9lN2iYF4d1wD2F4EHR05kgaSDXSgycrA0mN/N1dP4fBW8CB8YJrGg04P8e3iyZsKdN11FL6NivtExufBTzREz0byOll+esD9gJCtiVlo245Iozj/3pCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765030374; c=relaxed/simple;
	bh=kVAOHjgvmhBmmZxV1CAxWNX4hn35L7hm7C7t6FYFFHs=;
	h=To:Subject:From:Message-Id:Date; b=dB3ZJ/XrQZuqKS0q0CSHgfYqMUQ6j0wnexGXnJrX9lyNmRbRdv8ujm7T2HI/AVpP1K+dFEJN1FE+1W2YOJ1Hq0NdVySwiOG2VN44w4Da7ptYpmUvIaH4daQjtf2LQNCgATvMhFzq1f8/waYwsqvN1+qSfFU+7s2e6GceKlur+80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o17AWdTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o17AWdTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD50BC4AF0E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765030373;
	bh=kVAOHjgvmhBmmZxV1CAxWNX4hn35L7hm7C7t6FYFFHs=;
	h=To:Subject:From:Date:From;
	b=o17AWdTNAQ0NlLXR+U0LrpovtupfT72E4bjb5A43rD0LGjR+aSaDfD77dslQApoLn
	 012HgJ8XiAxe1jhGUp/I3Jg9fGC8UTVi+QDGp0eH5RtLYpzRujIdB3nOvFm9kBxDwB
	 GlPcQdCYNIK5KqpoaX2hJNVYRbmK5sa5Jqv51vKCLBNsJvWmjUXczOcovZd1pYitQy
	 nWtVa9H2LdXs01r0dJi9EoYmAHj94AnoqZCsr3dBKMD5I0LFOJZ37n27Ta7Bca1QDg
	 M5ZJAirDWpULFETENu9foLq33QfUHFHdL0qGEU7n6qtMHxSvDHLMl9q0Bc9yby9BNU
	 BxTzO5g0Leshw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96045D3B7D5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503037360.32654.15492509444820759776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3da3512555bf6a971b7136cd5de378425afba6f8dfb87bd91ba073eb9d2857
Date: Sat, 06 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765030373
