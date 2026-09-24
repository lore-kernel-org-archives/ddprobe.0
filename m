Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A14E3DB30B
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790278834; cv=none; b=A6CSIVI8On7W33cXE7kLkl7575bVCALIo05qu4OrTU7sI6Myl8IWuWa0sJqiOQW696JzHMuqxGJ443PpRPYBu9DLYCrg7NWQJzd45gXT0cnEyOPEEGW+GRbI+XqLkEDu3TDSkFX3dr/uGLlEUs9Egg2o5jtLFFppJsJHVP+K/Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790278834; c=relaxed/simple;
	bh=1cR5BR+WHRtzZSpvW0xnffdpMwG0KrlMVZ3cYB6ZWEM=;
	h=To:Subject:From:Message-Id:Date; b=ixT0NlI3M52yQSONRunQHamMnIVegv1/vH9wIikQ82H1KLd+ItIvr3MLYEzib+e4ffpwzjE43yicxC+YDxTD2cGI86MCAAzhZRAaXX/ov+402SGzaaY5LKP7MKhCjoiwAu26qR/rSuB+0eDq203jJkQyY7ILX5kQ7mBg7qArOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7rKIxvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7rKIxvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E976DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790278833;
	bh=1cR5BR+WHRtzZSpvW0xnffdpMwG0KrlMVZ3cYB6ZWEM=;
	h=To:Subject:From:Date:From;
	b=X7rKIxvVa945GIwv/l4K3qgtdhJMkZP+0IKzHsWHdDdBvZFAt76lv2NF+glB/Q32h
	 AnRfLh1OCDlPFrD6onya3CaTRAehDJAXVF1r1PkA2nVbnk4Aq6zLlflcZI5W2la6Sb
	 jKg6tNy+A8lKwzd5Nw7028CyI71gRMIQfRVSsD+bG2/hf1j3bwIXM1TPA5tdxFeGsY
	 a+G7uezuDOMhVNamfvLKiGvrDUwAv45wp9Sbgebo3/fK+ELnNMwtWHBSt4ukIT4bfH
	 5d22gjrI5Z+MGvKI0Ws/Yq7o86jWA3zaeVuAhea24QHqa3kBeHz7/+/wcMDcOJ9Tkz
	 JQk/1eQT9mWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7262C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027883376.12197.3646102866331612662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d80c5e0a1f40a0851b779f206d01766438a7dd5bfae31786d1e86ce8ad143c2
Date: Thu, 24 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790278833
