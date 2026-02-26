Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3227739524C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095494; cv=none; b=URIyE+wECSg2RaGVp/5IpLwpLLDZfQH/oXoNUV+jF5XSvKj1GalqzJWbLlbokrN56T0J9L4SXHbzZUwlSP8/yPhCudGmUPGPYMzfUn0qdAP8y8d6dhtdKSbSB8PNTB52iJC5HPjyIpOcColh2mUaXtL6/FLEu+DiCatsDoRQU9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095494; c=relaxed/simple;
	bh=3uhBSGiwYsMa0q2v8NH0ewFV660UEB3GDOIWkl5F+bg=;
	h=To:Subject:From:Message-Id:Date; b=ewTgyQFA1jBaktx6ew6d4rcYBDT+qKvFu3kBRTMVVpl4Sg3WOCaToh1OKZyy+An12mgewFrT7yzCy01cDW8vlsgLTvqxJ5ah6CvTz+LGtHzzklcV4vMOrux51Eb8P7Qxq6M/WioNhNDyPvPftB2Kd7f1XJo730mQOULLdZK6ExM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPDIzCEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPDIzCEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1172C2BC87
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772095493;
	bh=3uhBSGiwYsMa0q2v8NH0ewFV660UEB3GDOIWkl5F+bg=;
	h=To:Subject:From:Date:From;
	b=bPDIzCEqQNCMbjCPRc/x32QHfB3F+puUsQUF6LXFwwk5TPjtQlTbOzKCGyoeqkg3k
	 iyaWkoh3dngsjPRHuh3ospboMhjgdT3YJk8YeAS7mfXBLaWR4q6saRO7m4PA5LKrRH
	 IkaV+pYAYjpaUXPxCjJSpYbBtw24qUOFA7v7jug1Jt5kRasLn2p3EX22uHly3TMK75
	 3Mv0ecXrOt7AgB3IuRCcN/XlN6NoRIbDO8QnPwWDJL5kIP46lL7hcUS/PzSUmszB92
	 uhmZ/CNtYr1GRtPzClC3LU9fAh8NkKDaxC2lxGGEnO1LT+kUpbtpJ15k/Tm1+BqKx6
	 vKNabbEK7bGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92476FC5910
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209549359.8548.2381806441819353609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7d0a20c460c4ac2cf7147a389e7cc93286b15b6f06cb197d2f3f251be2f69b
Date: Thu, 26 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772095493
