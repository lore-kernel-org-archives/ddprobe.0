Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417D516DEB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743614395; cv=none; b=fjLs6TBK2kWC8LKYZcis6y40wwhqkPsL4ed256SpGH2tlRiou4z9MSsLSmHfOHC4jYu3//xgSPd9QReLVkXNhxUh4C08MyfOJlfGmbNMyaJJU5rx8y7S8RxSiod100bjAMhlH7NSKJuqjOsgciethkJv9X4GxdlBYvsfjldVhr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743614395; c=relaxed/simple;
	bh=JADych9HT8BYAzI8WWNs0hzvlM8p564bfqKIRTHbkRw=;
	h=To:Subject:From:Message-Id:Date; b=eInWb8Dzchc2VU+eHvggnoXxsDiMl75k/yHmnRYYSYk5Gslod4W8gUIDlUV0KDPhCmzXcRcsz+ujkdpBKyQRukwe6ghkSHcX4tEZ8v7m8ElqlXge7tMt0/jOLGwfcJDXUZbuduuc88sBBRO8k5120C3Ss/Y3udv/jdokhpek5qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm+aGNsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm+aGNsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6804C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743614393;
	bh=JADych9HT8BYAzI8WWNs0hzvlM8p564bfqKIRTHbkRw=;
	h=To:Subject:From:Date:From;
	b=sm+aGNsjddYO6jLdidIomDRD4/zTHseS/A1SB46jJ3sqX2UipQ7erOJgmkUI+fQg4
	 HVKwri7KCEyZ1E9CRGUi/GCgv5IAEiVYG8fJPFtpG0hscy/RJGiMibbPQiwVoGLJ6F
	 7Dbq6dIZ9crUU8CGK4hBZIRByVGFwBn/NBOBqjmd1kHVx2dWpM/9ShzdnsNIp5nMBk
	 DVpGiT7jr1IVSJkYbVsiknh6lDa2ObEPNcaMQygXTglyKRAKFd2DZgGohzdyy6z+3S
	 ZZBUyXUgCkBAqw8WFPLet8GXNElKFtvZxkhSAZNSh71vxBzEQEz8ysABN2pl+2lm2u
	 wM8oQ/GeFekZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2181C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361439360.15445.746706162100080652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9fa0b26a2258870dcf810e3e8095c8cdc1cdf86964731400d4622400242d60
Date: Wed, 02 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743614393
