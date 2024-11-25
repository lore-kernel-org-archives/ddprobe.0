Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C769192589
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732532754; cv=none; b=RnmwUw542dGGjaTpyFSiZq/b6sq8uuTW82TtdOSp82LpPXuv1U63I8AG7Z0Zgn8KMaTJotDCxUggM9jNARide0qz4xfHHtRPZn0x1Iwk1QtheJbxCcry0lPmJvHPh+Swvzp+fBrKXPpuDYEnrsvHdUG2nyDJ4AWEJwcAhFgzams=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732532754; c=relaxed/simple;
	bh=DxeuuGQgDeAS9dnxnUYy6vQyE1fMK70+Jcp3pEH61MM=;
	h=To:Subject:From:Message-Id:Date; b=TsRUCYZ2XjCjyf38cMQyyYLRh6j6yVVX9IwAYld0ZPs0s7aUAw9DSM8H9loJ9osvQ3Ec2EWXfMC8DQo8LsFyqGyHtUr8lLyBzOG0WYz2GDaQbw4rlmuadwWoJo+3z/SJP5gtvFdqzDmhk11z505viX+8+9LhQgN0y6enbDiKnL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSjouO4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSjouO4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE79DC4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732532753;
	bh=DxeuuGQgDeAS9dnxnUYy6vQyE1fMK70+Jcp3pEH61MM=;
	h=To:Subject:From:Date:From;
	b=MSjouO4F0WfNKI9vBcZiyHFKJrJoIickwOa9KHduinuTlQF1vhpjy+65IL16Oqf0N
	 UK2j7absWb1cD1BjHt8UsT3qD1UTXBXapapYJOXt7QAbtjmUEoqIXGNwnkimPcS7xn
	 ePk5u3gegh+2/EnJ/HZCWkEIpNg08+cfmhOUIeZwBpHyB2uexJRLf9ut9/yqEXPEhr
	 v0uMoNk/orCyCQe0SY5xmp35joL2XauMwrqGk2DaR0UVPZ1Zm0hQb4eaxKalLnRJCW
	 ZXqYLoFijCcizTqoKiRwJroIagztwaEVuw4xJISCTaJ7C3j2HowTA+2rrDfTne2Kyg
	 EgGwhu4v3d7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E6D58062
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253275360.16174.13447926952429728859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bc41100226dbb9834a67cd136a011d95076bd7e29a6442d73318b5fef7cdc6
Date: Mon, 25 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732532753
