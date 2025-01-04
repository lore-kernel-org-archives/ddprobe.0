Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B136C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735955754; cv=none; b=FpyfHAc2ezuIsGPQwLnaoEg96e6plzw3Hi6pD6VV1KaktWep2MbSgGD9yAsKypVoS2u+NDZJQqrao4uv07U+u/uHN8pyhT7o0U9p8yZogheSHFfE9k/I0IDvhjdFnhQw2laOG/MPBRtdrVMCtlm0m4ALid7GoLKmYXciC6FYB9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735955754; c=relaxed/simple;
	bh=figwUcsOi42+qq1OH43DCcu2W6c9Vz7Dvy9A99eMHIE=;
	h=To:Subject:From:Message-Id:Date; b=ZYv/SqRbbGxKqn+hhyjBvRL7WZd8fNa22It4xkD8d7Kj88iuI/61nbvI9ZMEWf4E4rvZoex4o3BEOpwBxREIdTQdiZlxEfZeYJJY21Q6pymw3z3WiPX6alxGHUQuXPtPWtkdrD8DB3Qn23DfEHAY+IyFqq+waR+omsD19H2pkB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdUFhCKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdUFhCKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D939C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735955753;
	bh=figwUcsOi42+qq1OH43DCcu2W6c9Vz7Dvy9A99eMHIE=;
	h=To:Subject:From:Date:From;
	b=kdUFhCKz+UdIKqC3jxyx23/U2oJLK1+ctCStOYa/bXZSWSW9fdSq6eqn7uMwYbD5Y
	 STiRt4Mz4SdLDAq67b4ShfkNVGLQTs8E4Jqf9rbpjvsUVjAFLBFxMkHgrZtd3H9pb+
	 3UwLJE4kHVFJy96DZwGbc8u/dsuYNbJIaV4UfwSF99KdtLE5+GFaS38hHu2MhTnARU
	 Tp2uiwNKiyaJo8vxx1ih+k1b0Ti00llzIZ+7cK+ZVfBrjvW9Op0352G8iD0GOo8tM+
	 RBDuy41CdPjP2qIip1Z9PhVPrnOkZSOwM65CuLit2dsApiTGq9pBiREqjCapotRYs0
	 e6tYBW7foCftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F3EE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595575360.30480.9080786981551434715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908bb51b532038dbf445aa934bddb6f5b9e64025d7904ee962b8dcfd0ad8bc00
Date: Sat, 04 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735955753
