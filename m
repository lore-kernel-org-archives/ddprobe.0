Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2689D20F08D
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759792194; cv=none; b=gQjXm6Bxv79sCp95+mJEdldwlmx2G2cMgUjzNhrMcyglSkPVrAwbVPVFHIFsAcxLccmT0PdgtNot48eYGbIGxAnp/VqMnWIpB0mtoVTOCmJ2TjkNGM4R4eGliTEErPf4s+5cBrGrMsCXt5wkNEDJR6F/rWn7GFh8FZszaaukTkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759792194; c=relaxed/simple;
	bh=D98zUOGe4lPqDK1W/BV9D9Z5o2GcC5rT7QtUQgBjvxI=;
	h=To:Subject:From:Message-Id:Date; b=WzIQkFUJTCBh4JBkE4z2zqtVooINLOJgSGwW4xJMD9I3fYa9ojDSp9DpLlyuIqKFpJL5HXAC0PtpAPMymK7bAzEP6N9UA6Z6UYg2slCLsnGM+DVpIl7OtG/RQn/hIU1U/B95qZadu8nNwpBqmn3GPYsVVTVw4JhEPeMrX9zjnx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVPHqpWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVPHqpWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A867DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759792193;
	bh=D98zUOGe4lPqDK1W/BV9D9Z5o2GcC5rT7QtUQgBjvxI=;
	h=To:Subject:From:Date:From;
	b=mVPHqpWSoQzbyuxElksj0TbWOOqa+4ZDGaj5sMRIRDl/awmlaD0GLlNjIbg3IlI9v
	 Jr6tClKDnWaSGDdaCoduzVHRQ4GOLBOkbYa8SlJtDwnuOlab52cH6Y9/7deJoPMMQO
	 78o7N1f/I55ojWrvvHbjx+5MplfQ48+ZUiyA1iyLJ2pB33fVo4cKGuXemAIVRhybwU
	 znw2i94CgRrY7i0dIrz90A4PkP4coPzuznmmt8ThHsKKxCvXQpzleJ5S+no7EsqJWE
	 He0lQtQTBmmBcgpZk6dsAd2t85zSJCEwQhpPlAWZLjfwEopX/aOAXo44mhcnvseaM9
	 lwUxCLvVb8ezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9381DCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979219358.9138.3988407056714808263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d18661562b55e691fed349f2a583bfa0757b8d75436877be68d02c0fc8ed9f7
Date: Mon, 06 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759792193
