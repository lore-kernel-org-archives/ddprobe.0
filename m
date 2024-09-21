Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE411C36
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726879554; cv=none; b=eGKPqsveXmmJpbwrf9zzrQNf1oG4ARgVNcFJmWSUOxGKXqD+MyfA9X92wQxCVl6SDo/G+FWFW15ZBI0troki5oeTMLY5KlfKTA6keDC/6I2TpPfF3Im2+9Buv+Kh3r+aIvLUNM9zZDnJ7e43sloyMUPaDwKHiIHFUTvEVgimE10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726879554; c=relaxed/simple;
	bh=g+FG+GQ/ZwE/CqEPrdsWd1qy10h9zDlRUuxLaMUOzDg=;
	h=To:Subject:From:Message-Id:Date; b=rWYe2BaOpYsM/2kVxx+RwOEdQ93mTgwbDCTUK85QQlzgfpirnnIYver6k5214VQOQJUBToCiXwVdO7T12zRY/7KEemUCwEjFb8vhg+3U089DWlZedE8ucwDf3h43N2D3l7zN8ro3Ak0DW1rQzp6KdlvEw9KcZAo9ILx9oamuHqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpReVDdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpReVDdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75F6C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726879553;
	bh=g+FG+GQ/ZwE/CqEPrdsWd1qy10h9zDlRUuxLaMUOzDg=;
	h=To:Subject:From:Date:From;
	b=XpReVDdEq14IL9tcGmAwVXntVBaZ2Eh2UCdO43CJUqRlcHGpkY3bawhznpqdYoimM
	 VnYHm1eGq7t54VFG+YqbvOMidA2jDCMyTbEIG7c1u2QUhg7wjDM5HlMjMxH0Srbhmh
	 5lfoyq9ymHlI9BFMgJuFb6Rvu9/l+hL+G5SaYnyVnFv+Uk0/A9N+g+OybEDpYYTPZM
	 +TEQDhRm6oltxleq6cSb1P6KS8ugvOQNaklu5SphxNT1OS9VsiUoc5Qr2mBsc129hC
	 sTxF91KRye9TXOv/NxX0K8v6hIojoZNKHF0N0bpUtcORYqK2MVpm46suAlfxOk7Xzq
	 Cobsp0BCecozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC4CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687955359.25212.17092746029268807693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889ba666f6499cbe16462543274344945b88d153f27a9dd6a017ca66bf010239
Date: Sat, 21 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726879553
