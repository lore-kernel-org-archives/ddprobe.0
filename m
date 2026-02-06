Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1237F2E424F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770357234; cv=none; b=SKlXHXFy6fpm8McU6v/rgN7k9q5xIX1gn7M8m8ZHCo9V6ShRP2WyYJ1AKi7KxX4FJE9n6HSssa2X7P+f5yxf8S+euc+2zEyrRgS1PEZKidYMZxvFsGUmZHfzGPgFsmZez5zyMbLIp/yDAPVZ0ER7a8+HCwfyaDGIMxHSCIAazAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770357234; c=relaxed/simple;
	bh=cnBqXK7j2EEVCwdwRimWMsxhJzLhxWIy4jufC6zOVtg=;
	h=To:Subject:From:Message-Id:Date; b=haURxnvsbfBiqusCggt5dM+DN8Kj0KXIwOho7Ug1qiZL/Ycj63pM8YmouymjrsLzCftlET3Fi0mfoyp8I1x+EZgjMicOZHkTuTpzS0DTpkSBQmI9Cg0BjUGTwlRGNsVJDK6upuRC7icF20qeiwOn/rqqD52coFQOULvkMDnkSJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLRcPlKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLRcPlKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1082C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770357233;
	bh=cnBqXK7j2EEVCwdwRimWMsxhJzLhxWIy4jufC6zOVtg=;
	h=To:Subject:From:Date:From;
	b=TLRcPlKf4njKHVMC4wwqoTg2RlbzW5tnET5V05nBwhHAGfh6POoEBWB+VM3phmEvY
	 2v8ql5vGwFIB8YaM51PlofcUXlgWLyRup8JKpXX5plu3QjTG6rH0FBxsEvey4Pi27X
	 0e01ZJxw8Pp+qbpGRYHK3Uqg3iOfCayP6c0AprENgOxfHcceVWNiTImJOrgYQLm1qI
	 e2eaoGY1kikoaTjlokq7uP3ZBScyEKlNuF4cUwcSAqc5kiuLPMZk2r6CI9txKPiIiG
	 cHZcI7KjXl5x7zxvoy2fQQSoPKusZbWQRepxtw4CfGVll92jKMHAJ0No8dIXQHDAyy
	 NnTUtocHSEu+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190EEB28CA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035723358.19844.12153502328134474161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640c2be9e944e4e2fbce3536179cea988c6df7919082ee478e84eaae54f79aad
Date: Fri, 06 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770357233
