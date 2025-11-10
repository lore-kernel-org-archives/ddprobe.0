Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123B31C6FEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762795194; cv=none; b=CyF3YJMGyw6NaaodBv29z9cE3esZJplZHYfwPnPjxNXi4qhG3Eppojk+eqlRZ0bEKkMa9dWgJD5iSO3Rt0kN/Ux7QlE1pi7JiTY1JoxDCWOxEWxZuqZ2dM1yeBQZQVVIBcPttargiYyivMLi5kS1hU0mijjQkG0Db1cU0+90D0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762795194; c=relaxed/simple;
	bh=1kY7D5R0c1+AViU2ZoTZM0gzcZwKnEqH0aCH8jqxol4=;
	h=To:Subject:From:Message-Id:Date; b=bSo46M9zJMSYRXgkjGG4tcFlzhEFv6CGv4093SBhxysq8A77ouhHgChXz5qifBrvNFxZchJEq9n5ae7ZyJc5N2sovzvL8d6mYMd1MH61r2tsR3BrwS+izkbjEPqrJ1aEDk+IHG3o5cwbLT3eD2FuYXlq1YwlqdY8Bn+wVrtjFFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBYzsB39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBYzsB39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFBCC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762795193;
	bh=1kY7D5R0c1+AViU2ZoTZM0gzcZwKnEqH0aCH8jqxol4=;
	h=To:Subject:From:Date:From;
	b=QBYzsB39y7VP9v+CcADIMaOYkcuYzIT/7fglHMrt7I9VNqwrhvtb/rb2EakxuJ3gX
	 BLDYU/e+tVfW57gsnIwWqotzJiXp8JrVtc9seko9sCN8wYy1Y1TrsLhtwiu2Db+OkF
	 HJLReJni4vYy0fzM0MGGojYD3LLwLMklBaM+XU54pNDpQf01SAbBr/NhbajTEiTEfV
	 9OStWoacepaTxNOMx80Wyh63LUuu6FvR+p+lkHCygJLxj2ttXlyzFaoLvqwPZDYhRh
	 5013SdpS+qOsX4lfyUHIux6lxharYooB1Nx9vU26LiWhKWgsJ+xpUZSfCtLTpI64Ff
	 YQ9JUdCJZRavQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A1CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279519358.12977.4236117960036784328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a386dee5bc01a28c872716a6fd2a62c68928bfdbb49ed45aae53f0b83bd081
Date: Mon, 10 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762795193
