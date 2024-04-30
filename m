Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D92133C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714499543; cv=none; b=TpA+uKn3VIzt21EUKle1NpJUkkBd4c9/OyWmAO4gr7fM9pkaE0ag6vh8S5W3bARKOHF9Ipsz1GSn2D5LzCDsSv9mN/+osGnLpPMFys9fzcBn84fa5PVEW5NQmqaFY7Xg9LPrYGU96XtqXmQJITn/nQK4/6fOsksrq7r/vNGB1j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714499543; c=relaxed/simple;
	bh=HMgZG7F1JNGBAyNb/SE/M+fZl+z6Hn/htUg5vMW7NGY=;
	h=To:Subject:From:Message-Id:Date; b=Sc2gpdruAu+ReXoYVXhGEaQ7F1QjKjWxh81s+2kuTw3LuCRTLJ7nbyo462XFcl9b0p21SUv5d9CFeyYOm5KYafdAD6JKVbXmeq1PbtHccCJMt7DfrGGrQd6HlyL8sjDoHgqT3IjnpUBmAyxyJjX0xYFa8PXjuxOeEoFNaDNzVkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrJYy9s3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrJYy9s3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0867C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714499542;
	bh=HMgZG7F1JNGBAyNb/SE/M+fZl+z6Hn/htUg5vMW7NGY=;
	h=To:Subject:From:Date:From;
	b=SrJYy9s3uidNCXEhnC6ALWu+qjIvAymaAxTcSJqvAEVeEgKsZ+MfSlU47PFGRXp0W
	 DAP/RjUIkiGR5Y/B7WnBHvQsqofq3MBs8FQpwaQLi0+C1ISgcvT9fXOeRb0/Ef2C8O
	 s80xkUU/6I+xgteDofp2qsTZPp4j22b7x2scPTuy7KcPJ5G3FXK5ov306kahQm3bRL
	 bJNAcm2VqwVgRnxxFlWzShoraKjsVLPMVHE3bElWAe1jYbOZr2hiQdq6LIym0vAbwl
	 OXTVks6ANAArluAey7gok/SehAjvn4+yyyM2YY3twFPjTj3F/88ZE+/Ih9GR06ewHb
	 vbMi8Pvtiusaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBBC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449954278.8185.14532561162424263487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480fd671e01de8edcf4e16c25509ae149c6309f20f66cac60eff34f402f46bcc
Date: Tue, 30 Apr 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714499542
