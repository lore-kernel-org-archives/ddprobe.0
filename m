Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFBB2FC871
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768861434; cv=none; b=mauNVlpzQHd06Hw2kqc59vwBRURn3ZguqRiY3Vez/rocFtS1lAIkxrL5lSPnpLQkB7uvbR5iD2HtWewQX8lMwx8zOwNWew1qdgpJkLKWl+gO6BhK8B51W1e6SeDdyuI5DGZ/WxjmnLE5cQLY2N/JiJHMRf9uQJnNwbzhCPEetQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768861434; c=relaxed/simple;
	bh=+4sMlCD9cHFQyc/y9vaF1gENAl1gxQDs5W9WyNXC7J8=;
	h=To:Subject:From:Message-Id:Date; b=NgeUEhljCFYErdaX3qTdnqgRC6psrksRdsWB3NzQ+31yNy9qwX63JLL/AEzjrfdI7elxdsTEqJq3fmHGDZEb9L1Z03JNM2gseaxAmjjqs/OgLubbp0iMW09oUVdtPOBV3vgtmDXZVxLZM4vsiaFAtoPMqUAcFaQWjg/j7/HN8G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btqq+SSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btqq+SSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E674C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768861433;
	bh=+4sMlCD9cHFQyc/y9vaF1gENAl1gxQDs5W9WyNXC7J8=;
	h=To:Subject:From:Date:From;
	b=btqq+SSL/vwjA3OuKszsUHkFh2wWmQnnE07e2Ckaamva/26rS0+c9AEtn/wyGnon8
	 3ynEGSygtEShALIaQ1QJS+0hVgROjeUH1HiScYjKg+cqWGRl7+ZtxGOL2gqfZeijle
	 myY78DyV+sVAEqvUEE6oB3x9oB/eWDWLLfQX+pmGFZglrrnI1VCtqkbApsXGZPg9eE
	 ffPadBky6mEjq4SluViaurvrdVGRgPTEnmulXF30LShyFQYMMC/bpKmOlDQp5dhb1k
	 YH+ihtxuk3wQp6YOyisWe+QsTWrjftCwxrEnjDv0Fq3RjcEI/pZ2oxJJNUCaJ70irI
	 QASDzGaWC2tBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90134D2ECF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886143358.31631.2434229712043100439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5650aeabb593d87a70dd3672e2b27e4d5ff958e76a7feb9a9512eedaaf2daeb
Date: Mon, 19 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768861433
