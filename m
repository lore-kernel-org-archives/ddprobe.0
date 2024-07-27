Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2739B2C69B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722119154; cv=none; b=hHfORKnPlXrcHcF62ePRwOhChkab9Xiu5W11Ot89+5A7opleKCF/41E1ArzcjNsg3dUOi33MbY18xbfI/hi3i4A8m4wuvK6hpPt+KIy/5QYi4IagdaKUtivt8E+KWmNL0FRVlC4GEddtmI5s3ihh0AXG8aGwSzusE7Ij+00xFdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722119154; c=relaxed/simple;
	bh=zrRJVJwmJqB5ZoghEixVppnf/G1iZyW6Ng1L+FSlDJk=;
	h=To:Subject:From:Message-Id:Date; b=CX+mNGY13IyVKi6HmDX+9Qn65HV37GV75b+zF0pFl2/jjJt68DOBJ+ydjKP4auOXdUasGMEQBkYwCr0EKDrBqb0pFBBinOlgLLN/bemhmDk8uMb2xqOzsO1D0yIp7JJyfl9eOy+HLJ6IwlhvqKbaklu5P2NctdM/PC/EjwWqeEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opOPod6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opOPod6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDB0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722119153;
	bh=zrRJVJwmJqB5ZoghEixVppnf/G1iZyW6Ng1L+FSlDJk=;
	h=To:Subject:From:Date:From;
	b=opOPod6gU51nLEALYHYrrVoFnqoQ8auo2RKtMChZsM6aNEfTzjJaVlkLL5hGo3pCY
	 8T7JDL6hJ+7q+N/HIvp7HoEHstVkTydWFPqtbhp3xslzHwRZimyeiNcTRGwc8hm6A7
	 Hz78wu+WFxVKyMvwDn3r0DW5Ln6mSZD2UHrwF4Z1DRMx4ThmiaVSSOlQf2cM11FAzd
	 t2nkWhLlVCeR6Wyrt+yfkZvTYd+xLfZBDtLKa7WAVkBYuHAnn8v7BSjdPSKQ41AqS8
	 hfX2MSPqc+x6XW++ZlCeo/qesm2aUQIEwpNf9gEBE2pNfpeBxWMQMEJkyEcdNH/YAW
	 HHK1KqwiQ2iFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C76C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211915360.3574.9914265726461496229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0720a6674bd46e771fcd5c840ad32113f346e56dbb24958db0db98ffd836bc5
Date: Sat, 27 Jul 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722119153
