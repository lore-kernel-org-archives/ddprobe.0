Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B071FA828
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734548754; cv=none; b=kZCOd9WBdz4W8G4iCGJHKGRrBxhaCSyAuVfIa9uTEBRQqlJttyqe34l1JCMPyitdZYiwpd6mKwDioRJyOjIaCLwchE2TIVaWCLNTOJG7EjMyCzFRQJP+eEciMFmb8GKuNLqCkI8fOUjp5iMROEd54F2/4NvXUCKAt/NXkO8cBCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734548754; c=relaxed/simple;
	bh=6SXUKbxMQnGGnqgTPodeNS9WJVeS5GlGdknLRJJN8nA=;
	h=To:Subject:From:Message-Id:Date; b=JA0mZjjv8wN+KAmsRXR44Ai6XnN3+W8dKaDyrE65Co+3GZZfmzuCLu5wiJj9D2F+26gjrDFCQl6lXbWUkbeedTstaNFfmIjujUnEO5CMJOWqWqRsDChrQ0peW6ipMuu8T/4ppDlQyu8QKHWwRV/smbvFmox7y/mkXRrmEF+JrzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNYvDojl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNYvDojl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7284C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734548753;
	bh=6SXUKbxMQnGGnqgTPodeNS9WJVeS5GlGdknLRJJN8nA=;
	h=To:Subject:From:Date:From;
	b=aNYvDojlSXCYoiWreWl2eZo5Hwhv+VvjAJbWcKBwS/ablhiC1pTcu4jk88ls5q63r
	 2a5+sx2wrX9Aqr1xIz2ny5GmyOrNq7RiOqUFxPTkj6kIgJXoZxCcFXbdf7k11B1VaC
	 J9BtEJm4Y5WXn4g/munTCdFsMUM6SQXH+kGnC+ZdRjy1A14gkETG07WgxFlvWzOuds
	 ChUipIwvytHl/S5mAho2EHUabSI8Hk1ImOtPcU8gxdKyVYMHcHN/t9BReC2og/0mkd
	 TvGSII3r89w3F6mIGbUtkqNhjgqJtWqZb6wLJUtL/wJtll2aNOVch6k/iqxfgxWFjh
	 nsbr5/sRrZFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90156E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454875358.2561.12806629754988371951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89dd463d247c740f0712a951f700b4f0bec42bd14bf4eb0dc6a89c99578ee68
Date: Wed, 18 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734548753
