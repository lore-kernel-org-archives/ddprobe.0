Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9842500A7
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733184954; cv=none; b=nc+r4dtrx8TAN6kSubvCkjzAMQpX4QlZe2D+K6veJagdi4R7H/OacyndoK9f/CFiLMBoiz5zIFB3Yd4tFCmtuKyFndctvG0Cs5RuPU7lxLLtwvqdscl0FFchS3Hx7w5xmL/rbqhx6M7+JHlE8Zwxe8Y1VDbMyuW4Os5zsyX9R5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733184954; c=relaxed/simple;
	bh=EjmQjJ4L+ImO4jTlriXUqAI7kvGCMfEvSpokwLq53CI=;
	h=To:Subject:From:Message-Id:Date; b=gpTSSDEuP6/58l8ecJvnIvQmVjMr4LXwr4dxc1jSVw1rlF1LhKhdPl/NlL/ojrIO5e4hhSX8BCY3J4mVM7/VTzxhC2ugpCgTTpUfFPjO9ok9sim9+6vnNYbLKPBDghP3Apw322c5CANAXe+klTtccJvbekPhdHyF9mhTNNoeXd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTKrIXcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTKrIXcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C43C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733184953;
	bh=EjmQjJ4L+ImO4jTlriXUqAI7kvGCMfEvSpokwLq53CI=;
	h=To:Subject:From:Date:From;
	b=nTKrIXcAym/Ak12SzA6chiJGbuxV2QOkAg7KfJMskNlA3/bJv/jnNZw7Q6Su3iIZV
	 zt+T4FA554WHKRpiKcM0VWgfAJAIt1Ut89OnUkFTLupZ9a6uKYzPOM24RHG+WhI/fU
	 Ju9tfr25F00JSrVMNSVOrFIAqURac+yNhJHP4+DW075FfMeed12a6JkG545dri9c3x
	 FDi+ziRj1Kg/UYzO6q4fnfe0RFbvHIG2srmhkD/2wd8jLKRjJD4G52cszScEVcDNs+
	 pqNvGjcInckjhjXDyYo/CqZqP3TX8i30Z9YAxbI6Usp3aknoQtWSXmJX2rhncDTkk3
	 7s9rN3b4ZkZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E50AE69E9F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318495361.2349.11351358843137283175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f5d9c04ab9e5712aa2998288e33901b84a6e062f0d81c5ac5dd92d202b66b2
Date: Tue, 03 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733184953
