Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503AE1F0E34
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549995; cv=none; b=VZ7y/KYQEdtY1+n73IRRw+JA8vJ49GBv09MkIOvZbjvmK+osQkDjKYw3tvnvQQD8epBGNtpkTjyqYv40fm+3kTAuH/xUK3L7FIHrmKmx5nQASZlzR5Rkos5rJ336RfSe6ncOldtupAyMSvJG7c9USic2u/n0sTztJrsRbXXR+K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549995; c=relaxed/simple;
	bh=RtHKTiu+N86EiRGxnhNdNcMAH5aD4Y9h3T41EB6CQsQ=;
	h=To:Subject:From:Message-Id:Date; b=dFh/Xw/IcekQbyIlLx4VK4TrGyGrlaY83zlhpnEwePyVzWd/etaMqKjx+LSvARv5uzqPfIl/7jZ70PvFac82KdIaoE0O4lBljGTEya5+ThHt+7U+Q6OWoSVGB9y3VHAKeo3AT3ZNbYL796POAtdWXb05BXBEtdWnQp0BHOMSwH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDT4OzhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDT4OzhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF44DC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742549993;
	bh=RtHKTiu+N86EiRGxnhNdNcMAH5aD4Y9h3T41EB6CQsQ=;
	h=To:Subject:From:Date:From;
	b=QDT4OzhWItl+ryhugMLyVCKfjVKjW9iZhto1RtzGJrDDpcZ6HO09Dk/MpHXvpKT52
	 7dK5HulGgfmdA827YTEuJ6UChQWSU71OeaaY3BV16u5XUaUAhTiUFhNdL23epm/q9A
	 Gl6nRXfRJOm2aMy8/OAkn+TdWIZmRX4/8DbbEHsMsT5aHp4P3Fw+oD43PdLfSMmQgE
	 bP/Xv31Dpd+B4gNpsSDco3k0BpoSlskg0oB6b2Z6Hv2Smp1Axs660e3YYNhKKI6nM3
	 awL8jGDaMp5jJuG4X8KcBlQqz6f6VHBVbjeAMRHpIm6Fu46VBqyaXpTEQdhV4bIU0I
	 yJDd1sMo/vMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7103C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254999367.29312.15474884203154603643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5dcf35ea6d51bd904a8819bd32115226741be9c616fb21553b675d72441ebc
Date: Fri, 21 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742549993
