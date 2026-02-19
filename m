Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C450032E136
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541693; cv=none; b=ZPTAgkoLfv3m51DvRRIJ1P+F/3ayKWOxQ6Lm94Jwq5ckuvnyt/9HcsqLouYKM95IXi6abL7faHKM6Bs5XJJdR7rdFLUznFsrC8EXvF5o1pMxmg7pnvyuK5nai1yCP4GggGs5jF0GenZoXZ7OjTyZP37yClrzwAUKBZNYddDiiek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541693; c=relaxed/simple;
	bh=g/kTW6TO6mEwhqjSo7z7mlhH1XkSxZJFVmS50npgaMk=;
	h=To:Subject:From:Message-Id:Date; b=rkkAzpVsGk4jEnlN+xveuOW6UTqRq20/Sj+D85JpkSkFWoDmC9cKRUxa6lshLtX6KlAitxwxTpZkjUMPyY1+5mcYeMkK1Wkz5l9deYSSV0jBA+/aE3cIHPzhDwR6byM6i1oVfgfk0JZifxCBd7S0gL5Lw59ksh76klQF/LQNy2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGquA7gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGquA7gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4421C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771541693;
	bh=g/kTW6TO6mEwhqjSo7z7mlhH1XkSxZJFVmS50npgaMk=;
	h=To:Subject:From:Date:From;
	b=RGquA7giPV3ZUCw1WNbqDAnA9bnOAwKX/jJGyS4py53PtLqe61M3wZGDlcyG9lKir
	 aNEjxaMq9uU8DEc3VsXUYMt1GAJ5KMuxegkGiPdF9pkqXAH3dGisVAVy0xIIqYS63w
	 igK0IwwtVSQFiD0dhel8+dO0dUTDlBJH/EWWcpcoUEpEXWdjCtsnMHkksdSa1n5ttY
	 XzXVMmu8aa2+iMQSZJeU7pr8FYiVF9OnrJPcqTEVnvNUR2wk9QP7YBuQNnmoL61MO9
	 8FWpyQLfcJqUpdSxghd31VBE8sHqJnsMCGWxGy2567orDZOV6O0j7UCGvVzG+jjLWM
	 8aZNAAgwvtaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93007C531E7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154169359.16771.8497610842731453694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6ef86300eeca3b0f2263c5d18e4475f9d51c7dd5aeba034ce0eed930b3cbdd
Date: Thu, 19 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771541693
