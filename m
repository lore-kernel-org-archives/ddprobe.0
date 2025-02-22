Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE9D12FF69
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740197338; cv=none; b=SZXqH5M1+sabCydidESLIfO8zrH40Bhd41ALm5BrmRlupxrewaICSK4zEfGeGzX7FQv6295lPbf3R01AzcwmNdq1iaUEEDZvU+txBjOu4gKHePUePd+x/1R0CF47N1E3pp2PfnPh80rFZTSH5bdMH7EwV3dDbfWr6zmsoToDf8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740197338; c=relaxed/simple;
	bh=u3DiaexZK8EsnTk+uYNMRWfqaeuTfj7lJ1PjOFZViyU=;
	h=To:Subject:From:Message-Id:Date; b=CHPNkT2j0dH/uLsQ6lX3Q6TW4svvIzfzRDyuCuhWhHjemhb+QEOFoI/2onnH1N63ddIPsFURhPda/agXviGTwqVERtMmjOTg2gm1aRl5I/d/foR+7OP2EnZrFnr8flVht3sgDWUqN1Xukd80dwFFLJku7xuNrDk5ds2BesaLDo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKRpCM0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKRpCM0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A8C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740197333;
	bh=u3DiaexZK8EsnTk+uYNMRWfqaeuTfj7lJ1PjOFZViyU=;
	h=To:Subject:From:Date:From;
	b=HKRpCM0tWYIuagxLP2bOQcNI6aJ/yd/X5solrAHf+4fexcC2S6hfmLo/tRbL7cXCE
	 vCbXOnAlGYe7BvnG5pfvnVeKIFnXXg2n0BR40Dp92qR1GiV8N2xfwysvEYs7Kdqngw
	 htbB29yJxc8r83BvlcXRZFFMtX+0HFFFCwrBqp83q2PsousAvXDk8XUAw6boJGUY41
	 Tf2Kr5sgr12v7le6dP5ocUKyjSFklzs6Nncd9Wx7miQT5X+mX5SRcwuY+84uV2BvBr
	 X82F7utWN8QDag3ZcDrryRnSSb0C1RfgNyYKJFg/PYMOn4UoYZ87ZMdKkuRgRndUJv
	 adRj6yoEM7itQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFFC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174019733358.12352.14381639754111327860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39252be98b183c3137d34172db478ba58dc76f8897c5ea3240b5dbbb51df3df
Date: Sat, 22 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740197333
