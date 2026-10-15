Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2FC81A3172
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792086634; cv=none; b=BTQlWOhQbCE3AelrbRKqTgVJQz82jZTuM3AXUuK0bN62gN9HoEeKc6ClDth7H42UMOx3uxdqiCn2goBOQVNnLFNn4/zwHG8Mz3NSkbUHubSRPa93NLgNxucPzYolEVmuUMmgYDlFBjO0X1W/s2R+6i8WIP4WrgEdj19aNF3mHks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792086634; c=relaxed/simple;
	bh=xjhgrow/fUvDBYeWi8H09EEjrpJfXNCvzOTPml0AlZs=;
	h=To:Subject:From:Message-Id:Date; b=Y9kbNOUz1CfEc/wjGTy3ml2M8/7pSeBPVIHdqXc42xcIUuzn3UhPQkXQl97pvAlISK2JGxzH97Me5N6v5UGmbMQM+iXAYuKYWp6Rm2eNowFIcmSrtc7ugfxcsB8gUk//POTeyh6BGI0YkbAQUpb18dKFL8TB+nW6c0DKfuPUeuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9VeXOiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9VeXOiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A96C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792086633;
	bh=xjhgrow/fUvDBYeWi8H09EEjrpJfXNCvzOTPml0AlZs=;
	h=To:Subject:From:Date:From;
	b=j9VeXOiRBTKZMEEWDbJMjCcpmAO8HSIa2byrCZFJzmA+Zug6HlNofWlCBDHoAZ+vE
	 0XvSD7HdX3ZDt6cGuvyYkV1Mekik7cJ5IcUl7DVgoKiHqsnHr5jFMFGbR41PQLfwha
	 fuXeNfHVJlMnxqnNgH0XcMlm0yJ8hRADWerwA/rb+cU6mJR270BwF89PSya5CWa7VL
	 O5ks8l3A3H0gNhDIsZFb8JK/RC+3Xu14YPRxpc5N5uxDA4ukcsVmugPNEqtWvk1VLu
	 3fMMBeM/KoaLb5qzt5aZn2WxHAQ/3tzS+YSqO1QpnMMAjZT45QP4XwUaUFxOoAdIMB
	 QFhuD29+VYjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA03FC2D0A6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208663368.19267.15361693029159666157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d765691cf7448aa465eaa5840a3296dd75916dc45c7ed6173ebbd8e4e447817
Date: Thu, 15 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792086633
