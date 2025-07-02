Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D52A1AA
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751426394; cv=none; b=CjP1eH8xFAMh5ponyCy7ZgwzGc5xh9WVSRthDT0lN7bGfHV0K8YrIwlnukgTyhFtkYgLskkrljiR95IOjfhVx4TIhsU0g0zCEYwoXGKVV2PN18gOE9UOGO/jegwmhB4RamsrY/VWyWWF8kikMNOF8fNCg55I+Grhsnk3fTEGMe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751426394; c=relaxed/simple;
	bh=pscfDpIhMLoWcmEbm6DeOZhus6Ojfvah6rXKPMCGv6c=;
	h=To:Subject:From:Message-Id:Date; b=lBPg+9kix+Wg2NMJOdsLoejUT0I9CLHqOhs81+RtU77+fGAQIdOKK+iCLLVs8sI2rM1RFUgO1bNz0w5kBtVC67nIbBZe5KUEM4SgsWaxpbzFFnB+6SYoFOQ2EvRg/+bkpPYRLxa08INOL9QAR870wPyG+ZJEIaGWipylWhQrn88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUaLKYPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUaLKYPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB0C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751426393;
	bh=pscfDpIhMLoWcmEbm6DeOZhus6Ojfvah6rXKPMCGv6c=;
	h=To:Subject:From:Date:From;
	b=aUaLKYPTl2OoF9kZhIOsPdkS7qThh7T6HYf9hJ8FzyGUcEmBRgGPmmI0HdcMab/P9
	 wcFiS5F7pQqAUqQQxHb3S9lqNlu0cr+vddiw1fXRwJDEG5ZEyEdKUnIFMnZYIHEWvR
	 AkZkBdcGD3CZfNK3CBElIde5qtxd/rqQvqFE7HdIcQj+UwGEdtOHVWMsmIJqPuzjgx
	 rFPH4o8eChPmXnJA1cJuZrQB86umIgCzzeN6awpHsSxkLvQb+sIO/bhPqzwXh4bINg
	 wplo8a+cTB+2jRA7XP+hCsaojOTmSx88ZBP5gVgh9YwEOnhzG4MT8xWB4b3gQBNiyf
	 rH92n5Q1ek62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ADC8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142639357.24449.6772494797442408835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523cb0a40e53e89616a69206cbad95c550e2628ad8f4c0d9c3ed355caf97c81c
Date: Wed, 02 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751426393
