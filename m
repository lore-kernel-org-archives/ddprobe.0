Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFAA1CB501
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725290754; cv=none; b=BOx6/VY2mWr8ooYsDWabATgTC1ZaZxCKwBg4fOANT4Nru9pU8w5pN2zc9lU+Tcg0OOucqYsCQ6rNbOpJ035aQjQ1ESYPph7kWLkUiaQpxbFLSLKfdV9/eovg9mSEy2DcKA57aiLPywasIrPJYq+8yHTRwdcaO+ZKcYg8fXzAWsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725290754; c=relaxed/simple;
	bh=YTVgoQ02LRS0gumzXOmnePHB8ID9BzSzLvWQaoByBpA=;
	h=To:Subject:From:Message-Id:Date; b=NZDpc094DUJA9L5BITTEkuq/i/YjgcW12oT0W2dw0EbLyjxH3xEx7cOKyjlLSJNmCImWM2OpEIRCGYwaGeaYdaIJlrm0C1OZaMetTmfKZDPzTOjDIhSeTqTtoB7k+D3EQLZJvVg0wPfsFd6ZAJhsLkCYuA3UTDzXnTBuVrMdBOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbh+7P7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbh+7P7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1527C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725290753;
	bh=YTVgoQ02LRS0gumzXOmnePHB8ID9BzSzLvWQaoByBpA=;
	h=To:Subject:From:Date:From;
	b=Vbh+7P7VnRAvykfQKSlp6pvSZE6Ht9WNwhStl/esGhl+bpBL/LDcrtIaXRbamSSBz
	 s2eGwlG7AKgJ4bdxBD7EJFfgNloEuRGPbRLYAc40+YQ9pW37OTg9XWlEa+rh8O6ctt
	 beRjXzkm5NIPxBIA9j7VkNYpyDzE0C5vSGe6ZSkfj7cFLnW2uSXOehp/cPnj46RHQN
	 ho9UBNf9hZvQcKPRkp+znAr2ZGApITqHenB9qkB72J7IZo6C3XUpyQgpDkH5Aqtz8t
	 khIoWKU3dyH9xce2OLIVBJEm4ZQTxOsFIC1ti/W/TPpkPiUcvGXZWLZQnTj2GGkxSD
	 /XriwqfZCN2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF74CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172529075357.27593.11581243808508883256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b8952735d7d615b2d5e9ec9e99d6877151f38c2a4e34f8d1053bc53622b8f2
Date: Mon, 02 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725290753
