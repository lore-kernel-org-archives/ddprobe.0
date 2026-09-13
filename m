Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5061C5799
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789322434; cv=none; b=Iim/a8INGNt0NTKpUVLJC3ItGwv0uzfTlShHuIxbNMqzdmh2qERD4DxTIqKcM47Rot3bmSEOl62j80t5DkYKibxUX2Py1XXh61XmWqkyJdvuq7wL179QotXzbn4HjFISE11hFBt9Jt8IWvtpKanrc66PDC1/eEUWCQwB2lDDRCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789322434; c=relaxed/simple;
	bh=eCqRF4E/PsI4ui7rzm325UyAElVtn7REv9joFG7BFH8=;
	h=To:Subject:From:Message-Id:Date; b=OnQP07tAhWqxhKA1o98xjHuM/X8bUWeIe9YtgT/oNWVej5cco9KhS2EsytwelayoibpXOPSbff/upj7niemZXDakdh6GSLNlpMyKutAw60xkijIBOqCs5BjlzwkLmLx41wVB15xtjc0he86GlFbNKkq4YuZrPX39JMughuoZwzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDMB7grh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDMB7grh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2529C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789322433;
	bh=eCqRF4E/PsI4ui7rzm325UyAElVtn7REv9joFG7BFH8=;
	h=To:Subject:From:Date:From;
	b=cDMB7grh7t55XPSazeS0i3zmaaZWPrwbGslFyskA5fjID4uhGGjtcqNEhRI1ZvHcz
	 UcNdcS50pKp1klPmTzGlgHk4HmrT1twR18Qb9V+NrUnDMwIjyETSnzGHVI8oZEU9Ii
	 9NFwDX797IjvvqbDeJVTGrv/cuHBOSkIXROguU2we+Moxrm49S2FnGy9N1ZRV1Q82M
	 gnTNPDYD91a3qKP/qd01mvhQS7dEc0xZoxfZoFk0xxhq8q8OHGO7eXXwLH87HB56e7
	 ndb8Mzl8j0YGYUu+BnhGLg1jBoomIioYqXyKO1R6BIHjYpjQtRdhcogEMDfINt+qOr
	 ZQQN0wRJicIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF50AC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932243368.9893.13992176646321653937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b275154535e4fa575e09a4a080efef3ea1edd080afbc244493e055db2dad68
Date: Sun, 13 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789322433
