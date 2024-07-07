Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD01DFD0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720357583; cv=none; b=fcSctwV1I+SI9DNLzqh1WSred9A0cu6/eT3g2ftA+qNpQBt7aBHGGh3+aYJ0IuXfmv4DpLT+PyvXs4OiiKnZv+IDJZOq+nWioeoS314gmsTtvvO0DauXZNTvBH+Syx+717dpeUqpFdfz5O7t8E5ktsbLl5D4m6XMK/WvesYKZ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720357583; c=relaxed/simple;
	bh=TBGc+jOr5U58Fz7InML+WUhG6zA/peAmYbYmBt5iiyM=;
	h=To:Subject:From:Message-Id:Date; b=fyd7O70yaqlIuv3SVWa5uKJeaGIg2WuBoD06pVMnXvnZ27NDZwFG7wl9YmvMMC4Uhn7d0npHtd7cQ+haJ3OWNsLLEWDZztwqmc4iVHvOWpYZ8LdEE61UsdJNRIaQFCn/law78k87HAkylwRv2K4tKs2JohERlBPKUvNdyLH3nxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWd7EcnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWd7EcnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC69C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720357582;
	bh=TBGc+jOr5U58Fz7InML+WUhG6zA/peAmYbYmBt5iiyM=;
	h=To:Subject:From:Date:From;
	b=aWd7EcnLNw/RZjHD+crk7Tk7xs7xYxdv5NEcV/LZ+yTDhw2XYGGSVsJ/dOlEiMIBx
	 kyQzdr7fmoczbGahSMuhTPkEEz/Y6Q4l5PrLMdPhUbH7CVzz/3L1Mighmn9i6ZS+FC
	 DTMYjq7RGPxHE2kV/MdgH08KSuHHvSJ5G7Ra7egjR9/iNi+NGm5eGwpa905HjsxLU3
	 NDw6iFMm35NTvDWtTu6dP14izyBUuHQs7f8x68ZfAo3pOhRKyd2dTVLHRT9l0w/LQc
	 UAL5XqToHC5eWlMR7vvgOPEFVCB/7DVAfi9koBaZLwY7W1kSEs+vFUqOIMLeomxlYC
	 +iNON9eklKDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6D2C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035758275.10889.9879200475452921532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a35f355c1d5978b35326e68b4ebb3d68d8b05a8b7b7aa3c69aa6ceacf659089
Date: Sun, 07 Jul 2024 13:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720357582
