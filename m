Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C02D062F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763672514; cv=none; b=N+Ybs3EX8tSJ5Fb+9AR/024vR50dV2+9+gobeZNqdsUCDIpxFzPzXwbcfPgZU/dfGzHH2sqt66wbx7Oj70KaxjJw6F0ZmEBLK+IGx5G55WD3UlPmkc+RsBxax5mIWs2ayDuG6Y6iwd8ADF6lPWqqMWiXN7PK/HlNG5URhTQkwKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763672514; c=relaxed/simple;
	bh=Zw5f7v1r8jNTpeXlchVHQnrhB20sA4FZdKYQg4YYoD4=;
	h=To:Subject:From:Message-Id:Date; b=vC7eprRPByWWnJckrhnVCZ4u9k90ShyLRgTj86+idkaInG6gt2RQHYIz6PGtwLTbZfAsi6y/74Ez4AULuFuciNa/e0iLR1PocLZDENO756RDbc9aOqdRfJxdXlTlrfaZ1djyEACSkIvmweafVfgNxEIAHqm/SGkVXrObzdyOdv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZXuFU5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZXuFU5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763672513;
	bh=Zw5f7v1r8jNTpeXlchVHQnrhB20sA4FZdKYQg4YYoD4=;
	h=To:Subject:From:Date:From;
	b=BZXuFU5pwcdhJ3XQtsnKtI4pHKKtI9ke7nIR52gmaVsPAPv24+e4Izbw6hJ9dRdya
	 wSEvAaALGtabyNwjM67PJNdFxRcp3HxwF90QK4RzCskqOMrLQpFkVahsi+yQapZ6h7
	 VcVSZvv85EeiOqh0hvcKXH+pXqj724mP11G3ZEWwhPm0AhujQrONJO5EkdKF9Nc9jw
	 w9elkiWDSa0F6B39nTmX8JEFEcE3oQCQKJpKDRd7HYUj+SFii+Q35yFz5w+GvhgAo6
	 kdajl1W5m8viGFtNz40gKL6OVkGI2ZET4Nd5SjAPzezY1vPVjCXvHUMrwPbtG0N1sz
	 6LsWYLIcW7Pqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E6CF885D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367251358.16299.5334537994599698311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16a5f1028fa4d5ac99ab59dcc707dd01fd0fc99693519bce2fc59e5e379f960
Date: Thu, 20 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763672513
