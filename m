Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F051B813
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720245923; cv=none; b=btiNArzeRM4mNrlTOQA+2gh1fO81RGJbiMJ2/Myzdk+8hkXkP4IUK0gdGfY5Vw0KHSLNnEAvOOy6cti/KpicGFR71loiPOUnLiwkFaDWNPn6ZLRRn3oLFg1CfHxejbKzVWlvEJ2KnKkJ7ub/2yJOOjQJU31fTKXnCj4mt3/byis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720245923; c=relaxed/simple;
	bh=RQGYSmkOsEnBHhqD4Ozprk6ET3iLBoxAVni1qixI12w=;
	h=To:Subject:From:Message-Id:Date; b=uzdf6gKTNXh0biBv0j8KazC4jUdRagMJWv7k3fRfVd4xC8BScs2I6B7KSWXfVcgeUBmF5UHsH46S3uYnOkTJZwf/REmSpJdveSTTAGZQofWiPnu8mhRSYVLBFIaUXs/o6LxWZDlhXNX427w8NOM9skueU+wfm4296ND7TL2FcnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrP3K8gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrP3K8gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7228C32786
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720245922;
	bh=RQGYSmkOsEnBHhqD4Ozprk6ET3iLBoxAVni1qixI12w=;
	h=To:Subject:From:Date:From;
	b=mrP3K8gBa1B1nuMHinNM+3OZwuxzK97sMVUJJrDy3SjVC8JxKxb+cjjNnL4nawJlh
	 28zGabTjqwuR8hYdogHkrxF88y2UqoyXctOV5VIidHDgWF4kT3B2nO8D977dCcSS3c
	 u2szPWL42E9bugbKtfQWvAMuRJJmEeeiGsIQU7gXVn4w5+4cGzXSvbHp+5K6hLuJ0c
	 v8IcTJmeebpxPPKtblwcY9KrxC1XY4+g5ma9GxVzd/JCJmekpEiRhgFp2GwUFW++N6
	 YuC51y0xBQzamXxVJKd/d+0lAEiBffJBA+7R5YBGF3xb5O5T4jVjh7unjPxcPDnERJ
	 ZwcCNc9C6fn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C416DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024592276.15242.10259039346626604110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cfe9bd471131c486957792ca3103b553c8f5204c47f4c54640820cb889707b
Date: Sat, 06 Jul 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720245922
