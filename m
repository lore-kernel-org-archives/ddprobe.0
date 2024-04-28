Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6BBEC3
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714270943; cv=none; b=CjivltA+GsropSOjwaDCWjzDHAaS7vh+PxyAlmJSgSK3achxI3W/KJvRsRTWha6n1wBMlwO+8si4cs+DRhXxXrHtlhAJ4v7xNXdmQMWgVMYiWP/3lCN/H0+/xjV5wsMqp+eoxoarjXoxMKEq9Iunii7YcZcElMv+xIzXj68fC2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714270943; c=relaxed/simple;
	bh=/Cf+dnsf1SIBudNw2a2ujZsNibbRXVtUVsbjPrnE5hE=;
	h=To:Subject:From:Message-Id:Date; b=OJ9/yvoGRknW9QJAI9sLLjRsLiwYxD7VSv/ihjJ77utK+QQGpfZkDjRGrXjEMZ3ukch1KZzb4fGFnswjxdfWlLK7zWThzaj0exJ8nUIvrl0yZA5m9YVzWkifqIgyCRwRGLi3sEv+IRhzhkf4iH3vBz6OwXYv9Y2S/cocRhNX6Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afvAifze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afvAifze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD60EC113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714270942;
	bh=/Cf+dnsf1SIBudNw2a2ujZsNibbRXVtUVsbjPrnE5hE=;
	h=To:Subject:From:Date:From;
	b=afvAifzes3/lBEtHoLhixCdXRQQk/BPsD4sh642j5wtW1DHoAgPJcc3H0lgQtRyNC
	 NkdGlgfvNCTpuQqLpbot4q1s2qoXQyhevxZaqI1vhoR1bqxcHs3zP99vnqceQF9Q31
	 Orl57SW96fxBERh61cWtEU9vBWWdv1rFq9n7Cysdtgi3kfHtnFxa/Zliip4kzv+D5u
	 m5S4zEr01p3dTlsaxezMjE5mJxIpFZ2DKFF2IT3zMG7tcrvm3RR/8CSNrgxQJHHpEq
	 ebXd5I4mB+7o3H3o5GHHtlHAdtNo3Z1rIZkafVkUIdywrVbsmYQ3WxaLyiwEz6OBI9
	 wKlUHtnurKWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27BCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427094277.15673.15161733724121116858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cff37569dd4b44e344b3c6404bea9f2ff5b41799de2ba67da3bb35ce3daffef
Date: Sun, 28 Apr 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714270942
