Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A1346781
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776702454; cv=none; b=LLLimf3UrBWCfP5RaygVZbsWlwUnJdqQfibOV+SK0bWHr5EuLORKHqDojA+pVvLJTC+ExPjyX4Jq3A6Th0kVIdO8SWUrORAP6PEqJQEM4RVMvJsaK1bti7MZlj4X3uU9SM+L5HQ3IWpXPWmBIxFc0ujwV/2CPMFKu6MMcL0dpDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776702454; c=relaxed/simple;
	bh=JFGZRaoElp2qO4VdHlSplmQ40DN9bb2HGU2sUBfiuyU=;
	h=To:Subject:From:Message-Id:Date; b=nG4LUMyx62AkRJDnlkMOD28D+6iz8rJp+iMenDOsUX2099vTW4L7XZg+/Yw0WK6DyL6DR+fo6D2vw8pUH1oQPmFApgMe5jhAfrR+NngATSmmuZhJYewNU10yXGWFEMqgiVoRCiCn/X94ESlqxrbnfzpOFFImP/tAcIgTNRBXIBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQgXPVu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQgXPVu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7527C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776702453;
	bh=JFGZRaoElp2qO4VdHlSplmQ40DN9bb2HGU2sUBfiuyU=;
	h=To:Subject:From:Date:From;
	b=AQgXPVu9dsbhR2RzoiKB+cK6RVxRUK2gTHv7sGRhFSlvOzvUhzvxCZvo3igOMC6iQ
	 +xZZafL9cr8gaCiPKY9jN6LcQqEGsZQxjrynQYXXeFn86GApGnHhNNZQSMejfkpQT3
	 BO3bqBLlVTFeXEwxnoQhurWYJYkO7Cajyu/f1TU2l/uEJQLpsFqP10CczN+QAz5P8N
	 wQ8CzqoPHR6dfRaPxP3IZb+MroZlvW2GXe6f8+SIVLaNfLVB2ZyaSTy0w6gh8X5H68
	 Cnfu8EEZu4JdWF5MfWp0kmhWCfxC59foV57bchy+3/0A3SDF6A7r5gmqr1s8CAYAYh
	 CkTlu1Re0TxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946FF588F2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670245368.15401.13532547706965154705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ee8aeb5bef9fb90e754513794d8c1dbe468beca2605bbb30fb5249a412eb62
Date: Mon, 20 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776702453
