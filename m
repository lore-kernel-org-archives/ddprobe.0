Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CAF313E15
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776165454; cv=none; b=R6Jr7RnKqbki0VU2NxPWbfMOjoQw5fMS8goslC8JwsfovRR7b9grcjVDVGD3tYRjj7+1PcZe1ULMwRtqUNBIYjfHf5bDQbT6zvXiN/14b3HHZxFxd5b0C3l8eWqyi2FpPEF2fujcBmqubCQmTZqPvZKNqAI5NcA+c8synKonaI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776165454; c=relaxed/simple;
	bh=SpcihetyKKMfNNS8pGa+u4phez7IRky0egGY52Y59gw=;
	h=To:Subject:From:Message-Id:Date; b=hPUrNs3lgz2SS+SIrxfpvox0EubOVu+0oGSHE4vhOE3WQn7y0byaUVcG6BnntOoXBIvsuOoQM3O6ELvEjbQcByNfgph5Ce6MxRniaLRtixz3mnIfGm9ZiDOH9S+FHrXSTymZ/NqAebaRmFtA/8QmbpXyGMdRtGZav0HuRFfauKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaUrXCoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaUrXCoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE51C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776165453;
	bh=SpcihetyKKMfNNS8pGa+u4phez7IRky0egGY52Y59gw=;
	h=To:Subject:From:Date:From;
	b=XaUrXCoyLmOcXpfIFImOSp1u+VZ8lkahUhFFThYVuJQu2VBWjzWzJNXkYkVQbI6PV
	 fg9bbl/H8dsxB91n7Ms6sN12CaixhQjomjUNt/MbgyZcUZzb0Cq3n4uSREOqE4rVxN
	 hinoWZtTIBJB+6MW5kz0RlaB0OFs7W7jZFRV7i21sM/XnZ3EgvVmdtpEMKtCc37B+p
	 A0/ZGLUQSGDSPgYc4iOVUTAqayjuR08dk/6FpExaYerM53biXFqgKkhlz6qjICphk2
	 0JgptjvhcVMNZl8i8NJG0Aj6QEbTLP+sOcPrQJ0VKqpV56XMnsQS/Bn8jE0sLQNfq3
	 BjvipG/RP7Llw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F02F9D0C1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616545368.27937.3377861248162650207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ab211d90b31f9354594fff119d30a0cc0cfb8d4359cd9f4ac239772c916640
Date: Tue, 14 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776165453
