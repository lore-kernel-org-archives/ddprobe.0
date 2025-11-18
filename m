Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A472264C9
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763506914; cv=none; b=iCkWbF2e3SQN82/u6t8BFBg/eB9qFn0qVw48ZtEta/o2KmgDpj00AoTr9IJGh2Xo/I4WBhRmdOQEMiOZhR2IudBulTyqcJIX3jEzJ1pNxwLSPHttt9+eEvWnxoiLaJFXvoChrgRyHT76gzCmsgh3Df9iEpy7zkSdm57UaiERJWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763506914; c=relaxed/simple;
	bh=B8JsrMcfU8NIHmg4nVM2/WoETkcD3Sjas8De+UyTlDM=;
	h=To:Subject:From:Message-Id:Date; b=kX5LnIyGsJOvKBxMZX/XJ9u3waxSqIMzc+F4/p7YlQG1L8Ev4uXitM+zIQju+0ZlhBzx2reh4hJi1JG2cLAzjK476mGRUSu+OVSuRDR9k638wLcic6FCJGJGMW8hGaUoQtYr2uAbNCTcEkMHFbJLkX/wU1uqGiHnYy2p1AgUJw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoURlbIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoURlbIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF64C19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763506914;
	bh=B8JsrMcfU8NIHmg4nVM2/WoETkcD3Sjas8De+UyTlDM=;
	h=To:Subject:From:Date:From;
	b=RoURlbIR5aWhGPkMY3+CHJJGVmtdz2sbhae5wH24/JiwJzI8L/CO7s5GUEZrkvOfH
	 RKGdbvmCej0EuB7ByFpjejY0AC0E5hTtOt4Ogm+oFnNGoI7EqLe1XMJoqfaSHO79MV
	 FNVLzaabXKvlA/tBK2WkJErh/7gQFLLbfHyg6Fg2aLEJ9cM+sk7/5qVu+ht2qVxLMb
	 p5Fp4oyapdMBl24VQkvkqPhGBeai6bzWF3geQsCDyKwaBBiREv1+8e8bCxRtjK0u79
	 SRRr1fSVaRU83jqQjtwkZXGm5+NH0ZyAgWbOUVUL3ZKzIHSlvtUEcAR++fqjrnsuON
	 cxl84q8tdo7Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295ECF2561
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350691359.19668.3648622204678838295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9b7edd6c1787e4a3bf9a5c5553d7dc6f2d587a7f307cf86a1c091499db0ec2
Date: Tue, 18 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763506913
