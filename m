Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1553013C682
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729364154; cv=none; b=gA6h9TsySQSeKmSVX1DJ0t/Apf5ayNNUB7+CUx0RGZW0KzxEtZggzR9kVMcNV7dhwISietbom/YqeWRcP+TFTs4mXJ7n/J3Y5vrT+Nsb55hBLgOL9KMOaiY69viqaNx8uWuBL1IEEuKE6pwnzTs0JtV2lV/cs94YReoRQOPki0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729364154; c=relaxed/simple;
	bh=bFt3nnLcodn4zoZ/O1QYKtI8H9GNZzAaRm9W5I0eBVk=;
	h=To:Subject:From:Message-Id:Date; b=GPIj5PXoPot/p0SZnJvut3Y7CQ3P8fGQLg8baq0Nej7vk8tm8zCs/CM9FyqrRTThQEasSA7kFEEpEsC9+nHUQKJgSUklQe86vKA5Xv2mpB8Ex0ZJAmd/RfiSwi1TJNRhdLA91iYvSYAE5JRI3V+py/a/4qOAMbeIMnn2vy58nSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSeyP59l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSeyP59l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE727C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729364153;
	bh=bFt3nnLcodn4zoZ/O1QYKtI8H9GNZzAaRm9W5I0eBVk=;
	h=To:Subject:From:Date:From;
	b=cSeyP59lrHMFBbJJLJ7AyVy+2ORQdTBlXNvYf3O1jFV682RDoKGJK+isxIxqWpkNN
	 ty5D2buE1iZlpfdciKW7H9zwIH3Iz6LUMi/qKCsUBHr0/BkYwMV9O0hp3go9JSwyFd
	 Unhn7z3MnovsOdr81N99veS8XR8j0gBLVpk7hN3vvKgHNXEqkdpgomOxlYRTu/6+Ao
	 veMTPG01eR7ZR+uHfvIe/MYoHFSgonqQqBmajvT0vxtkWyxgXKHNGW1X231eHEFzM9
	 lkXkuvBlJ56qUFUiy/RS3TOUWDV8XDdpkAn4R7YH4dyFyjKjM6CDKG4YkHJWt9K8bh
	 BlFLteyAFVKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98579D3C923
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936415360.17226.8550517683286199625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57821ee090007390c4cdf3175af47bf0de1d298b35743dbaacd362cce0ec8940
Date: Sat, 19 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729364153
