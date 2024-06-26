Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DF6161314
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719440003; cv=none; b=gctZQY8LeR7D8vfsp43N09NIQEGaBbxXgFkufy3Y06LljKPtcvy/WkIPnhMP2ul4/j1oW0cSaBrHsqJplBIgqKqeTuTtTXcx7d14EF19zNQSwYHvI/rDN4/um+3UYHcgG04N3saLqc3xE5hPDdEJpr6lYbMREtm2beQ7RG+mgzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719440003; c=relaxed/simple;
	bh=zysdB0bIppKKV3W7FDjZlaPoKHkhQyuO+mB/C0NNic4=;
	h=To:Subject:From:Message-Id:Date; b=LeSWx8QPUQqVTBRztUyj4PJzb/27QuQuQuJ6jp7OwggxwDGVAAHYpes7kZQl0nupeiINQhe9YZt7O14imBTn3eRyza/EeEQJq91Z2cZus1e2NvuiLyeZ3J100Ivju/xMqgGIwkz74/2/s7Kd+6b2ClpnN5GZ1RMFMI5fCFpCS9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnUZYPPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnUZYPPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68C1C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719440002;
	bh=zysdB0bIppKKV3W7FDjZlaPoKHkhQyuO+mB/C0NNic4=;
	h=To:Subject:From:Date:From;
	b=XnUZYPPj7B2SUDb+klDdfI2PMNuzqjmqU11rxBsU3uy3Jo/ph/e8B6Jwdwa07T4G0
	 gqgGqJfJ0Tjv+QOGhSlDmpW6D0ZjgRnX1OkgkfiDlR61P2TKPAaR6mc2y+YCaN7aOA
	 Q2dpAVg2ZQccZ7Bq2zmCt5BlG8pYShdqrWE2/5CSN/cpWAJNkO/6GqOduLuZRIw1Zc
	 GtdeeCeyX1QtvmjI90OYxcdoBEagdd7rJqNVAEEzIeqP53gtNyT3+NDBsaDjTJrLdB
	 E4mWO8s65HJ/QDQsqNyFT4WUxSmvmq7Vzcvs2ywV2nhRNvwCPTsqoYl7ljnzx8RYur
	 hT8YhJJwbq9Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B9DC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944000280.26535.10037680711531429525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2524b95e0c8948632ef4b1ab6f4b4cc12164d60466d5e54d6bc1c27c2be6903
Date: Wed, 26 Jun 2024 22:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719440002
