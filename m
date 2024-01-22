Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB06215AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705882097; cv=none; b=Oz8zLBfCaYBrtFhwQ6p1VGZ+2XZiXMqsAyxBH73UNAgirQd7qvcS2EKdd0Qm5OSd7gslZzjvpVxYB1D4I3GzzMqHac7YZUqP6wy1IiM3LzVgQlNSJR9FOJIguPtxtBjoly9OQKXSRmOl2H2rFvvce4MwBmAFtFd0Q/kk+VM0rFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705882097; c=relaxed/simple;
	bh=leqmIzCcsamSqrvAggjBXykEJPHF6Ka0S0jbSXUqkbg=;
	h=To:Subject:From:Message-Id:Date; b=pVJRU+5AYzrzvgfcWnCPzhOUohCvcw94AxNYgjjwYKneWPrcAB0NnJohtOkOtG+x3e9dpy3vdHr9ysyOFI3TtqYa+u/co3On22kPqeuaxDsIN9Qt45pSuF0gqqds4rVOpbXDtT7tkqNt2mtI91FKk4wrcWeXyV8sfMsiGvj7JjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5NCNTff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5NCNTff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB9EC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705882096;
	bh=leqmIzCcsamSqrvAggjBXykEJPHF6Ka0S0jbSXUqkbg=;
	h=To:Subject:From:Date:From;
	b=q5NCNTffFrhT6lbbbNqTnwXbQfFtk8IQfQC1mpqew2n/JPGTHIvV//j+/BA7Q2m2o
	 +hEu3gCnt9tgnwq+Xuo+sp61ydGtywhtSmKlG1MEVo+6O1hyzGGR+r4HJ48YOctbmA
	 2xQaPX4FGHl/I1pNQG+NfUOnRf2k9tXeq19QRWRv/Jpd4sOxU+hsX15thc8LoU8ijt
	 c+6kAiS3yypKs7IYSFQ8HwCSIoSAjN4MDKYgyThH1XTWOiigKge8Hnl0fcPbKvhSTk
	 JZUANcWEe/eFka/hGVq/i95KMcGEDO5qTi8LkcDwEewk9Ncgd7j5IpNJvvl02KYGDY
	 uaHCSz8hvXgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E71C47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588209637.2329.5497279069804640777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3accefc9535881bd67bbb287b1158e9635edaca38da9c86d85b7f24df3a7d42
Date: Mon, 22 Jan 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705882096
