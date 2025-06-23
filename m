Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F91A933
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750643995; cv=none; b=taAhfUITx9tKt7CBQ3rb6NZ81CnagVLYCCbcI8W5TUPyJb1LMfQGD8BORD6R7cn0voGiX0ItyvtIPoHFSdyNogxqgIX8f/Ddyro48aponemt1nCyGDHIwPsyIjgSzy6q/z72DeevWRsJwbA3ekx+WSxgecPSEiJs4GjWeVJUzU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750643995; c=relaxed/simple;
	bh=dw6+n90NhXCWId35KFjZE108ZXtiBxJP7XUmkPp37yI=;
	h=To:Subject:From:Message-Id:Date; b=GTcNoaYWT+HLXYBZXyNWP4q2BYAuxyfDvKYZVyc0XkvkoMFa6npz4j2JjKEVK+tvrfEaVwXbWJGg7UF5aqlGQHxw0aCHjmOSLyursFJhuUOWamj4cUK79bhSypunXMfXxud6tuTUIUryBA0/vyh1uhiQMs4DXV1cVRMqmyAIQa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya+r442/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya+r442/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2078C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750643993;
	bh=dw6+n90NhXCWId35KFjZE108ZXtiBxJP7XUmkPp37yI=;
	h=To:Subject:From:Date:From;
	b=Ya+r442/9nquH0e3FVwAgTuKvXDP0gZR/YT+sTNYLpszAXj8die1doQ1TFP6RpqYW
	 gB+kcz6JaR0nSUwsb1h+HbXFeSXyvjIKxnQ2pOhJqA1sIUbkddGzdPkDyYCqLuymmm
	 GLjVZoj0AhZS6r7DSPSM7lIPlCv7fzSzABqnxIjie3zbPTLFrxyRjRwyuEcVLNo2rH
	 /tsupesoioPP7T2A8yNDAkIB5dxwzn/DaljjKGbvFi/jWPpxHJ6JP5FG3AP+w5NKeS
	 7slhLd/WWRklYd4/MpEN0776x9ekT/RZcyy7SygvSXfaIQI135+JaY/wXY9xPFcoP6
	 Rk7KAXAogmhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44EC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064399357.14670.15385941818505409288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a2c6000f542c2ff2a9c9ae45fd390756c9ee0a97b7d1152e67f3c1b373e65d
Date: Mon, 23 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750643993
