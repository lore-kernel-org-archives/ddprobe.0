Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935E9475
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748567994; cv=none; b=pB9qUa/jzST6R3JsA/VGSld1gz2s4y1m69voao7XieKHYBNIbcHAPw71/FLC+QF6CpuvjF9jTiAuT7Kl5rZ8seIcSNGFMwIi/GwXWXSF3sZU0FW2m7mdBq/rFFVMz6nJ+LH8esljVWIKusk7ZWAdEHcu1ejWRthYhKy/kpPwakk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748567994; c=relaxed/simple;
	bh=CDulxdrvxpvak6w6XUF/Et4weIXLEXbjpNKI/A+EJJk=;
	h=To:Subject:From:Message-Id:Date; b=adWsIrynUmny7q51M7U78VknqvY42MUm8mCxZuupcYKNRPXlwZfVLA/E9P5ZXjtno8bHLdJc0z315hJTzZfbb1HKx1gbBxteqNBP+CcDHJOoSUeGkZfXBPyTnSgoCZd2VXETJQVdTEBuCPVb3sKpAphDJYbU/diuCdhvXQluayg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmQfzDqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmQfzDqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748567993;
	bh=CDulxdrvxpvak6w6XUF/Et4weIXLEXbjpNKI/A+EJJk=;
	h=To:Subject:From:Date:From;
	b=OmQfzDqsUxX4VdOoKauyjYlWRkHxtCStkWv8PUtNTc2jzfEgRrqaMO5cr488Z7qgf
	 dRLgBW3pG5K3t6vFF5u+2dx1bOD34rPmAVZ4X4stzb8JN49/5RW3GZkKVYzZLGhNNv
	 lvlru35xTTqi7Mmyrs7cm1osLd0ugGjtMtmox4/v8sTXS1fQHRmQbxFzczCG9AuZk4
	 qyp7B+XtbU68VN0mIhJH+tdyByfjvLpyMi9W4phT88cWpZ1FifM/AK0M3Yvwlh+qGp
	 QudAobaXFzOakS/h7ngF3ejbF3sHhRLgrdQh6+GSuLQjj1HIXjajwFbASP4fm1Zd2W
	 ealhTvU/JwGWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F6C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856799357.6175.14713834803623734232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63963a5b0d5b9acf20be427b9ea45e8ca71ad47332ffb52088229415af073afe
Date: Fri, 30 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748567993
