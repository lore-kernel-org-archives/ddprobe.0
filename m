Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7A188CD7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722286554; cv=none; b=RYOcWk4X9Fx2WdPphvOspAfzxbDWic9RLBcQfRuA+uU9Il2IJ2DcBrG362bF2UpAugHZtQrpaEmLCFDwRBmrhnREzWvX+4Y6WaGrnp9Cqpcj98DY9tSjTzsC+izLCp0s8IOj4H2Kb5dt1j6RFMiwgoBLYovfccknAmrus1tpZyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722286554; c=relaxed/simple;
	bh=QQyOAxpgI/rkDT1uPGFRcwFA3ziTYEjFylLWlx5CMts=;
	h=To:Subject:From:Message-Id:Date; b=YYU07w237M8jbbKd+Uwr34i6YvPulzU0WLYhwdJLftQQ5O+5nncBp5GVVa0LDBOa/TSMJ6pLe0w2Ex//zV1MlNAQJcJSkxx+fUNf0pi7ZbethZFz1S1AKETKyZp/CQ6xLcy7gonONYk3wndKR5vHDa0i/tmQq8yKVvuuPC6eB3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BumCN7sK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BumCN7sK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA91CC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722286553;
	bh=QQyOAxpgI/rkDT1uPGFRcwFA3ziTYEjFylLWlx5CMts=;
	h=To:Subject:From:Date:From;
	b=BumCN7sKTQPV8aR+pFViuY9WKIS9tTsa8L3RnmVsZBPXnCfvVjMOa3gWOv8r3wNvz
	 ftXChpxpmmDc6XiacDsuJ0JPK3993kLCIqIAvt4IVSOjVhEV7GBvoyNRNRkrpC8jol
	 RTx3FqPnlnS+5ZjAN/4UOiPbfnBC+GZziKYonjU0VUnjX7iz8jfPqF1qL7/pumfcPJ
	 INlsO9QHR1dg30Q1a63PpDXPvQOCA6OlYUSQQViG+lsZYZOSHxLAe/03ryf4mCtqSU
	 hcWOjIBPqb92tzKPd2fpJq+RrzrrFyXFsnl/SQMIt+6q1OecwmDn5oUh9Ri1Ax9euT
	 5ed+x3RdXLxUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A9C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228655360.16754.17914885770861732859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56120ee4d5e11d5b04487d31d3aadfa89e8d06b34736341a2b17d51d4834be8f
Date: Mon, 29 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722286553
