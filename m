Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A55139E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728806754; cv=none; b=olZzQPwC3F5RkDjGZ1fS78Ygh0P9PjOkFUVUv6M5ZixAt49JwAWh5gY+PhbphYV4UuV5oNjR3nG1dELx+EDbVz4pNXUxG87A2I+1W5/LYtJn3AAWsVvjX5hd2eCr+CpJcimKglWUJa6OkVLa+YjbyxogChDHOkGAEWl4Z7fFwNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728806754; c=relaxed/simple;
	bh=MV/dej8BGjPwIFbacUKzqcRfCf2MjaMXISyFqz8nCdM=;
	h=To:Subject:From:Message-Id:Date; b=fkJzg39O7OQPeFIVO7uI3/nDlk2V8jdCUwneKKgxfMwCvxS9IJKeM93+GF2eGx1HW7iUPlg9nD+XroDN1J3AAy5UsXj2pquaA9+k++FmVi8Y2xUpL3y6RTbSs5BzDcyPACXnJW/m6lHpSgASmTpTbUWL/eigclxkJIr3b/nsBVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBBVIBow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBBVIBow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9219C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728806753;
	bh=MV/dej8BGjPwIFbacUKzqcRfCf2MjaMXISyFqz8nCdM=;
	h=To:Subject:From:Date:From;
	b=SBBVIBowFZLNHUOFIgCepyjVSumuFxR2DLqjEUqasCya/SeImBIOzJDWcxx3WT9x/
	 OikVfhgbsYftBNcHwoY9D5/Ld1wSIgblp5QG6Xz4RY3G7OPzxNNOEMDJc7MHmR5hQv
	 tDFTDVPldfUkLEz7iE9DZaiRdKLmtqQwE1dxTamvfX+6q38JxfWE+6IygIsxhu5jH3
	 SV/mkpwaBAQWjc2c/Fnv0cOdYX5/iUEHzHOogA68hmBGVXwqSy2G0Fak0EaAA/sG8c
	 x1giJrxW1blxGXhh7T8yKW+GRVyo3b+l16EbnJ4kiHutIZZIup+0E7EJRgkq98H8m+
	 BUGo+6iRArU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE277CF258D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880675368.16326.2924025665732493668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5031378e85d1e471adc1db44520ba42e27b6d58e4300435c27ed42fa1e7a271f
Date: Sun, 13 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728806753
