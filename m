Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525A482866
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785457234; cv=none; b=N1wqaPXnUMTJERPqBf/7p0sOCF2FFtlmUSwNe0zqluA4Sgd8a6lTttIUYb9acJfO1Elueu2ceDWrySmo5GTzd3N6fYQ7zCP0zw9pizfW7i/ILufX81OTP6IssSDNXIIC8ENLQBFzU+EICy5XZypWpNTT9FhzUVvw5UxmQ31HqRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785457234; c=relaxed/simple;
	bh=RhYEwBnNrlPLR+VqsWHIux14Jv9Or7Dmp/5a1s3ADcw=;
	h=To:Subject:From:Message-Id:Date; b=mBX4dLlQfpgRIowPt2qP+1vCk/raWe7A4DTEHxMi85BuRhDg08MlTnXTsTw2aGunyFj67k1bZhZzNgrOWYTUrI7LKXw9yFWofw6Q5C8BMqsrMDR5DQKi+EUlxbwoT9G/MV1SdAC1bgHukw08mAapgMURd5bKiTIGUdefMGpkaoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvdjr/4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvdjr/4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12E1C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785457233;
	bh=RhYEwBnNrlPLR+VqsWHIux14Jv9Or7Dmp/5a1s3ADcw=;
	h=To:Subject:From:Date:From;
	b=dvdjr/4PEfEqXi+VcxXfxVm5FXfvYRM2piou/nAygwf7OfTOrEMS6b/fhUDGUpGnt
	 YO36EHT7hdQARKUsKztCpsKAk7M7mlkL5Vi9WAaZM0f+mMRGydGTPFI7HIUdaqp2ev
	 MXP6PQjC+x3Are6N16BguTdgNygH6yBN7EXPVIYu93e4USKT0yBJKO6h8hJEBIRO1h
	 IbrCs0nHMsctWOmOQEKID1I68N+9UINK/VkmibrGMmzc8x0JHMDf7rzNR4VOH9GIXa
	 FTxIhpFxd5jkpf46rhat+h2JAXarc7Xqa7z/Z5ULklftJ1kC01fiiDjp0Y+oo795nI
	 SznYgUwE5IOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF568C55165
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545723368.30888.5783294283064034624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b8fdbca67fe8d888f367a877636d00a1d765b6e131b09289ac69ccce00df2f
Date: Fri, 31 Jul 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785457233
