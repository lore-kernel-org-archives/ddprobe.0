Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C9D15C140
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751912994; cv=none; b=c+JS4iELQPddlIt+b6fbGDCXmB0NQJqLh/f9ao2TFHF3f0BXaYBhRgi/4amYq7WLid1rA5EbZ+PaUQZilIqsMK2aFmwvQ6J0DYLiaq1Pu+IgTBJn+fHUFXGlzQeDZn8WWyeN0QSDfmJgGLA+pYcUpu6Jmtgvz0PeTPs1IXZUtUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751912994; c=relaxed/simple;
	bh=CQDxiBMKRIHKFnYRkKnF2vzt1yGI0VQmqCfKNIRzQmA=;
	h=To:Subject:From:Message-Id:Date; b=EThuRqwKuDHWQrrfuO0gXl8zhG8owqDQi15NIh9Oq93L09E9XkDTrQ2cFUqHQkTGYgPLNSCvwPi2SQdme87al1Mlu/AwUaKn0nIvw4xVk7DUIMMAmuEFKp0gMlvgkKcEW3a0o38Tz5EoyZTyQ440JlAvnmnKKwesv3Oj57LmTZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orrImu/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orrImu/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E626C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751912993;
	bh=CQDxiBMKRIHKFnYRkKnF2vzt1yGI0VQmqCfKNIRzQmA=;
	h=To:Subject:From:Date:From;
	b=orrImu/5S3QzEm83QNTjRJgNN1azDjn0L8dp5Qk81iX0bx68BvyyAMRqyp364F+Dn
	 YWxxPTIfgds0TdTRWIyQROZ/uGVDYOOm1QE5+C5KB0zKEf29dpDDQgxxNLrGS0csrA
	 trB1jTVR+jrB5j/oyL2aEat2SBYngW8IXxZMlCLa35XWv9MUNA/x1RZFdFnHf4Ph7o
	 Qz6VPuJG+430NQnfEhY1dLKNkCVUsi8eY03kHSLtwzF5ITyyPK9yp96hiz/pJf9u7o
	 NpQPfqiAUGExOuVrv7aV9H1KFFE4hUm7Ab5Pb3w0gNFpekxkDtzFlzfKuZ+MLFyqPu
	 kES8MMk895lsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F783C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191299358.5570.8774974419436677548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0caad37a189f64d4f8aff67884f69f7a11cbe05dd5e71cf25764b4b16bc28dfe
Date: Mon, 07 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751912993
