Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6EE14658B
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724665554; cv=none; b=fvUDSlh9A+WFIaSyGa7We3xYo/xU6/nL8uF0bMUUT7LBa9jWv+YWyyJJUlKdVdEUeT8LQDBSH94XJXlrpkWr91HZjvk+mG63TCSLH8L+jWOYIgHg1v3KBo4lqm2uk1axWeclaGD1VLRAr9TQtdhgUbUTws9ZqR1dIniMtAXCiD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724665554; c=relaxed/simple;
	bh=fNjyDFzST+weLeMC54Ks67rw9V8qJTYx3sC9rRH+7Ds=;
	h=To:Subject:From:Message-Id:Date; b=hLcg2dPIVZ2tRSNPicxJY1OpcOBJZISKzDHWDntUQc3/1WiaeHerfjYi9BSwMsDavwnqY8iydn5l3xjc9LwsAbASKlAL0K8O2ZNofnBsOBegDvim567DXU9l6ud9gkzHA+hwQP3W9sZ769FdjkaHR0P8DYUX7UcZGmzgQcO28f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqyHiYby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqyHiYby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A8CC4CFF5
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724665553;
	bh=fNjyDFzST+weLeMC54Ks67rw9V8qJTYx3sC9rRH+7Ds=;
	h=To:Subject:From:Date:From;
	b=qqyHiYbyXXzU1Ip7hb8vf8ofEZxSFnvalvQtDZCNu8McNQfWaXpk2QZoxM4ecRPOf
	 cpVvmSirDa7oIvjlcYuX8/razqBsiGQEVCcnPTlJZtpw2fYgnwm6RPjpELwv+EQRRX
	 i5kkipbWZTGzny5a6pIszVMOEc7gS5ZjxH9UgNCyWmlVEjJBaOqLh5YVgRIpy+jufC
	 atk2J/KtWYi/dstZEXrzeXJkm9Pptxas8tGkWnCuhM1MLJpImBDvjHX3ygqXjQfTit
	 Rz+tgngL/JD5qfFvdN4VBHTUl7YvYMG9THr4Jn1rFq9oYe6K4Ft7perGt4p9ikPo5c
	 XpW33gysb2usg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BEC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172466555359.13574.10137951790826350131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126c54167a0235a729ccdc1a27bfe71bdd9880fbe7cf52b0560a19695461e2e9
Date: Mon, 26 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724665553
