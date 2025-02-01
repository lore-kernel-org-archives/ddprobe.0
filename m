Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0025336D
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738445754; cv=none; b=p9emfsM0nOJq6gGg57xfDXx8aR2qtkjohlo7uKDz8dQFXn6wp0wwwtI2PQpFtK61oGoTZqBOibuffAyigcvONuhfhkdroSXWTZaAUFy3o4whzvMuB7EBAk5oj1WK0d/tRnz6Rqo4o6jZKwnZiS5N7C1pvblHIIBTd03OrMaWmgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738445754; c=relaxed/simple;
	bh=xWqkUKJDvoDtyml9QXQ5s3bVJ4HeJgH9LyECrPP1rE0=;
	h=To:Subject:From:Message-Id:Date; b=LdhFeI+SVyKgyyZRbIpXI9DZ9UbXoNL2NA69tqj5Ml9l9Gey6pkCOM8ZNYEzgqnBXBKvhnhtarVIHPtDNtRizBFiJMSUPbNAuhOOlE7M6cr+LXvM9Joul5yXdqWhEs++QQJlY8T6wuv6iYE0Fvd9tnJta2CqHEMNefyfSfVzQc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X46kq1Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X46kq1Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD257C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738445753;
	bh=xWqkUKJDvoDtyml9QXQ5s3bVJ4HeJgH9LyECrPP1rE0=;
	h=To:Subject:From:Date:From;
	b=X46kq1ZquHcsLV3MsdR7SrnHSA/8MKI47E2YEo966Ot6ptk52W526Nw5TraIOWreY
	 tMkVma7fjIvmvNFId1UG134QBEtRjNVyDAOKivA5ZgPTmO04GJPxLLyggnGIiOSxiY
	 VrdAmMtThXvipzAaWNaNyhDARHo/zL5GocnH1FsXYkq7GTRbKc/H8Ks7qy9ImN9W4p
	 eUZ3SKPmGBTsEQFLIXMpjW/tSeiUgOrYaHBVzOWDFsAiy/tLpdTnA4hSLxVulUrO2z
	 jtVrnRgXNdUPozMeJF1ZMxqoWcOrckkk34WePOBSQfWdGBhoGHcrqxn1AK6JRcl2eu
	 4xwc48MqJpBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9589C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844575360.17956.9705221118396292396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52b4f1d9c06d3fa7163b0bc3acc63a885451c106bc2970ec159353ed2cb317a
Date: Sat, 01 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738445753
