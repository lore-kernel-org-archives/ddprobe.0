Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DECA2FBE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788828034; cv=none; b=Q2eZEUSLvev7KwR+w3Xh/NWsAaNrXoza4DKLV83A9o2LvOWqVaibCZpWfyKuB1u2GXuQX7GxdMdQk8i/+uPEkkqW07fzDtptkP5qdsQIVEdzOpXe9ceBXZ6Hm4OiDkjfXHFX7B5R7um1T16eRWy8/YrG67QGEhOVJN3df7xLCnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788828034; c=relaxed/simple;
	bh=oG5dm7UFfWNMKhu+2qIq7uLAtOEaaFoYmxIgPHrubIg=;
	h=To:Subject:From:Message-Id:Date; b=KTYeug5l3xyJG5FH10jyGW/Nfxdwk7DxZ8SOc0GuJ5Yh35Ot+ErB/rE/+ATYntUyvbS6CSnG4fAlfVCGTxVbEVOQ/P59W52qmtSEnAWcxfRUxTVMKc0u3zu92BScprxyeIzpU1e3P8EmlibYMtqikD3F8yrAQ38NVL+ZrZ1Qhoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRBH05Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRBH05Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE042C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788828033;
	bh=oG5dm7UFfWNMKhu+2qIq7uLAtOEaaFoYmxIgPHrubIg=;
	h=To:Subject:From:Date:From;
	b=QRBH05VmJZLspKpA0d3VdKGe6Qn8fOgRfgZR60GUNi1YTppSaMsQHGvBipchxt81f
	 nxzcUwGgxuskLpapit9hvzEadHxNk/qffFOPooDqsjAUJyUPm1k18xw7MDH+6FTy2v
	 Nq+9gus5rwRCuplwIDHI0U0D9NhCzGUjXkG0TZ8uamdD20dLGE1cYgx89GJ7/SThPW
	 hhg9I4yJUYeMYh1uLGvWqIVuHGUWkeQVywNM22FtvXzeCqeTYsAiWq+J69qr3d7z02
	 zBRShzgYZtya006Y9DG08KzEE+LwYHMrClZ4E5B4ixzzvqWrNQ7cZTzNTlGIkJYZom
	 UV94amtoplu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B957FC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882803371.16560.10219530368655668973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715fe845bdd5a4d999522cce5b4f33ffd7acf7d46c4e6b5ad65a7bd19541cadc
Date: Tue, 08 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788828033
