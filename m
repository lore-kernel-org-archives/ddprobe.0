Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A62C29A5
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718940743; cv=none; b=PDghdtMy/2WTq6nlGTbV6yjL51Lcpqr6jzxS3booTF7Lfib5oUGrakZPwZ60IvCX6Sy4ugbkAp53OANvgCm5h38gmOrrlTfxYJZKaWxtwbINbfzI33P9r5zyka5CGhetkQjP5qoas+88uFIl5dnN0HItQ4AffHeE/Hw8YDUp6ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718940743; c=relaxed/simple;
	bh=nBNppdNvX6Cqbs0JYRmoEuhfWCxjTpK5iNsDh2cWYuo=;
	h=To:Subject:From:Message-Id:Date; b=lfWBr1aOM0LaqjA8/mKoH7lQFtnFHt/As9lDcLTctx0+tHb0M3LhEP8bINg7bdH08DjhF53iSEsfqYAr255MZFBiNeOkwbQe964PvVGeU7vYkHJj78M0/fl9PNiTFPo7dxSdXSDy3/YM+gNbvJjSA/8iSSMY649lM/n6Mt8dhF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NznEp4K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NznEp4K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC17FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718940742;
	bh=nBNppdNvX6Cqbs0JYRmoEuhfWCxjTpK5iNsDh2cWYuo=;
	h=To:Subject:From:Date:From;
	b=NznEp4K4SUmagCwu5cB3RLynsu6prP0EI/TcfrDTfupRfX2pCJtLc2UV1eJiEIUlj
	 ZxmwYbH3y/dJtN9iHnBRiZGx+0w3gQMjlLHh06Wf1QbSDWIBVWrDVM01ko2J/7weBY
	 +XngS8PyJQx0+BZwgWZJL/NQBgZTaJGqLPmJ8SwNTR/o92jMwPJAQqc+yLk6bohn3D
	 YX4mP3in4iWTBRfGbp5EY7SigiTKU/DUEr3t8Z/0VmguS3ZrWbQWJNrg8k8TwaGqcT
	 Ma6fnhOIoB3dvq7hMZ5yubkt2bnd/Snl+IIWNqBgvM4KefhBKRqKUbkCUsCwIhu8dW
	 EcP6s7kdDQkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CABC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894074280.26187.14680725354065779517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381a2f1783b479079fdbcd9146f2e7494b61d48a684b0ba8ace899c2b54df913
Date: Fri, 21 Jun 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718940742
