Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327D419DF59
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720727243; cv=none; b=qiO6AgIwWbiBuGrUvwIQ6iIfHVfBRw9OVlkeX/HozJfD52cx3p/DhUZvYF9qias8ep5B7ZDPHr9siTQymkHrBfWWjBXfzfxPPTQkXTx+1rf8b+CRiSzGTh6MvHfcthgWhJ1wxhek7PB1n1BA3EEkX5qFjcsvvo/Sf2MEylLbhlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720727243; c=relaxed/simple;
	bh=NxRadFk5KBqtnfpr45IgW0R+uHanfYtWlBshp+HpHC8=;
	h=To:Subject:From:Message-Id:Date; b=RZLHNT3EheIYYN3jbsiMu5YHSwBoaM1D1fmgFzLuFn7vlfbwbXkPs1NWBcMMUFs+EpeoxaiNay+i2YnYI5jFwF7UxvERPh3gtolKYAEFz34F62xAJZNiQKbi9T17+QXNO4Nxba59PXhXNO58Ul48GyLh1totJBy4iFAgux8pRxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NioeuUf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NioeuUf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD437C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720727242;
	bh=NxRadFk5KBqtnfpr45IgW0R+uHanfYtWlBshp+HpHC8=;
	h=To:Subject:From:Date:From;
	b=NioeuUf58IsrhevECrxI/wGyFUBvFtFsXZW+wGgZVkd0eRj6C6sE6wVV9TjZwxxOI
	 KElp/PsqnBiCXIsosiyfoUCxc/LiJiV0BCrSHnvxe1+fxRyUxrVKo+aHDdBy7/jmk/
	 +F4J1RQe2GqZWvZInpHFqBeqr4/Aa+a/6W4G7p/Sq+6gxDp0bsUuB6B85uNRNK8HJv
	 re6gTnwuPmg9IQmxX3tfybPY1ILmk/j2tFHheKyTBfn4tjmWMGUn7SuLXQTwnPWJVn
	 g/BOsV+5olmD651kxCIVQjTZ7k7fplj3IBs44Sms7sHrXEA+x4V9lr1Ms8Nkc10doY
	 BUv8ULbvp/7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC97C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072724276.9566.11492641132501328139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33b956e4f994dad8acc43185c3f8abcdca3f36655a94b31239d9fb9169857c9
Date: Thu, 11 Jul 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720727242
