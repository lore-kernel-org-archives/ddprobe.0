Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB8E2FC881
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766672034; cv=none; b=BWPsS6IvTq+W28OS+M7n04ookkKauqk7cE8ncNQhJyyfpnJSRVfiUcDNX69cS+jIMo5mdC+ukak7FpUk7r8ifAjvvR4TIBsSDyonny3NoPP/nJ45F2p+gcVhYI2SAesoiY+hacWxn2hscfHr0YeTQB5XSt8mvI/dfjOfSG03r2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766672034; c=relaxed/simple;
	bh=svmLp2EtOAfeyvcg+ekZpU7l9AVP9xW5i3UZdysMMkc=;
	h=To:Subject:From:Message-Id:Date; b=oUVXuHm3ZauOn8N9FMxEbew2/Wxjc37UFCJdFk9ozahOr1/R6g7TvenK5fjOdxRk26P9SBKZYa6vo4wMIzOm3r5dD37RJc6hyJzd0VU39DQSj+efeqJYTzUbUCy1YC+UdxcIXt3xtuCim2PPb/KfluG3ZF/x5lilzaLFhTKBXGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYxKxYpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYxKxYpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766672033;
	bh=svmLp2EtOAfeyvcg+ekZpU7l9AVP9xW5i3UZdysMMkc=;
	h=To:Subject:From:Date:From;
	b=rYxKxYpGHb9xCxDtZ0Kq85qn3nQzUcFsm3FjVY5wHfNh6KCoM/3xAUCMtMbRnc+hC
	 YUtDTWbuLGtDHVjfZjP0Va5BH9K6TNuhCWM5ZQ85yWh08vq8+8uXonw6Ep8S6Dh/99
	 kTkNxUra9Z5MXWjhBEOz66X7gDId2CEcXRD/SFzsPrHhewVaxglq2spCIZYShV6te0
	 VDB9UPjhaSJMm8cO/jTqUM+rz5vw8auuX0l8I5ZvxM/wsTglGJlyhRVS/YyVaYwsIe
	 GqNpZW51V+zCqHSi3ICITNWtBJH3dStHaoVpLrDBkAiVY5HrVDQfJIABIU+dFtZ8AW
	 InXPUuhwnIsig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B0E7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667203358.15879.1834448365604845133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494b3cb057ba2598116b714f1f794331905d2b5a7279156bfebd908753d310bc
Date: Thu, 25 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766672033
