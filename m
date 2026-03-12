Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2263A9D96
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773353694; cv=none; b=mi/A2BmEJTeC64KLDazz9UKQ7tKTQNDwijYoST3dcpLTld0TRrItMYhqNgn33GOUXryMRyYmD04WbOAd8Iy/b4QgxpZ05JnXUWfeBQVioEPhNZgZ5QXJRzuZaGlkngIfhkwgbc/I7+jKvtDYhBoKIpVEd07JoR1/7/F0YyTFCSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773353694; c=relaxed/simple;
	bh=j2+F3a23CsRKCYqbIfCUFa2oOZVOHMh3MX9bbs5Wk4Y=;
	h=To:Subject:From:Message-Id:Date; b=PPm0oWcTMVMuLNyodK93HKX3y1YsU0cv20wEbyUTvnlEFwBmCpopVy3sdZgCu7+CYuHSgPkk+lcndNs633i5bsUQAcwjpQVs1mQcYKursyc6NpzkquO3HLxbNul42Q6d0jK2AMY1r7bcT2Xr2bvxP44sna9TjJWrb0DseJ26OyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwDV9+cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwDV9+cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA709C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773353693;
	bh=j2+F3a23CsRKCYqbIfCUFa2oOZVOHMh3MX9bbs5Wk4Y=;
	h=To:Subject:From:Date:From;
	b=OwDV9+crkj08EX9rtYd4xNMgpM7tiMfRxJcMnZrAWLJOqBU4rKNvmUYCCLo75o0f5
	 IdC9agWkxsRedgXZC8CYH5AT1KrITmuNchJXR595KaQYgpyEsehCv2z79YWItu6idj
	 gDO5r1W10chzXCZTJZw0fVuTciiFKKjqsYTJG5T4FfnsXNVMR80HJtFqPyXy17uXSg
	 i871BdSvM//0blx3HBFHAznnsESbWCrqmrl9Z7nzCatj0LW/3727kSBXOv41CxlUYs
	 o4LH24NDvSOXLDXOh8svKQ1z/OY5kpxL/uHzq8tmtvnlvtM4zdjdGeI2v7dGe4tOf2
	 pYomhNsuQvomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660A106ACEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335369360.9812.5067932447055695201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99f09ddf3dfabee18c144b08658446ddae7cf2e7ca4d3b5fd03c2b30e9937e0
Date: Thu, 12 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773353693
