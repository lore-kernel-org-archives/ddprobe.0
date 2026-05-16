Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2117E15665C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778938234; cv=none; b=nUcZBupJIZD2PtPtKfXdMwPlyzs/IT/SeNO/d6q9WRqV2r9KvOBPW+ljUsDPci8d/4DBGuWJrkhFa20t9+3RV7g0f46RttRtEq/WZFo16B1DZglcZbc1EJPEP1It0fXu3FuCry9ItVCzrmWte5npfBhcjdaQyeD9QgNtlHQc0sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778938234; c=relaxed/simple;
	bh=pMtDUky1+vXCO5iITReYbEceVI07UcFED/TuKQp6Nw4=;
	h=To:Subject:From:Message-Id:Date; b=kHa4VivtE9ajccEs2W26L1Jl8sqqc9xYc7MYIuGbocWOI0G1uNLfv6xEnomj8m5QaomfXMA0NE0CHCSUuPeypouejSt4UjAU859u6b8ryyXdkY/9+uyKhJOokbqtxpx2q0UkYPQnM6RB3mDbqSMoThUFxKezndXHrHto78vNMXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E03tjGup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E03tjGup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE08C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778938233;
	bh=pMtDUky1+vXCO5iITReYbEceVI07UcFED/TuKQp6Nw4=;
	h=To:Subject:From:Date:From;
	b=E03tjGupuR6fJ4QcjXVpnkLPqnZ1ZfYlMzvhog2tnd/4/lejtSK8jZbbrqIwQU/Co
	 JA+TPLr1sNVun3GDmFqcB+SY10onr9oj1HQERnUxCWJHK8HyYCvbrr9PfPEyoAV9V5
	 2TIBEdeG9ye3WMWx6XFkdVq2aVR57F17omt7rCN4rlSvCb6M5bRjOAk7PfUu4T2nE/
	 8u8UByxhl4wc6fhO6JOHScxIOelLiSjy3qiLS8mbit3rPBienj/3ZCk+V6QKqRG7YX
	 S80rxv+2z5+urHd4EWvTx5iQ5e2yVuedc/QmbwrFPasAkoGqkR4Ur7sLJepvRo/fkL
	 oghmJ80TOHrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB585CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893823369.27921.8863386723515054593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d31d5f010793ece9a51a7c70abd7b86b1fd3e250759e1ea0e7dccbdaf2b290b
Date: Sat, 16 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778938233
