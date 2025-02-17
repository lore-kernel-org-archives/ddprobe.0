Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD273D68
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739781533; cv=none; b=PokE04YpYfzRigzF5GIYAdltilX2gpWYSv7qi4UWklzuhfAHUEFs0jnvNIAQyAq0JLB5TQaoPzv4FE0egfi0/xUuDQ0z1+btL55/YFCeHJpONl8Cfsq8KDymwbZtV3WI5kG4aU5hSuBVBMFFn35m/C501CAlWBmTm+IWF4Q5CPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739781533; c=relaxed/simple;
	bh=rRUyAb3XWnI48Y4nRNzfXLM39nOokNgOP8xFvud4i3s=;
	h=To:Subject:From:Message-Id:Date; b=ZvtnGAACQ12tkdZwFhyqTY3LPpv3RiSbYLjGAGfHFZU4KVQXnKNMGUOkGrX4ZSc/sUnRxVcBoNByCirzHXkalcmAxfB32wlRmStkl9A8Z48pKSz/8YuJOzh9bqvjJ2mv+xktGyiiiETVcaUzar4l3MB4G92W99I3GgT3QlxBwl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnufhVnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnufhVnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E83C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739781533;
	bh=rRUyAb3XWnI48Y4nRNzfXLM39nOokNgOP8xFvud4i3s=;
	h=To:Subject:From:Date:From;
	b=PnufhVnORcsqpS9uRvEF8NP7I0oXOrmnZBE49RzhiymIczf5cc4KWIFchzeCf3FkF
	 m3uqTeYKZInGvH4qJRW0ko10zIdXFurSP06SVzVNPH/QToupFx92IGhmb90TaO2G0w
	 u/j0/ZeEhaOUYUrDzOtVpCW7s36ii7Tw09xkxLo9lFSFLREIzi8IYtm4mmqaaLDoqP
	 bbskGqjCecNCmUxjNpYVJFEO2OHZVLmltFboFojwVAlMkYC6aI9beYa0knuGJW6U03
	 uI5yAj4rxIQvR7QOOqTsjzVM45XzsQdwlvuiMS3bOO7TxU0xlZjiQzU+RedQjLsmtS
	 YC0CJvEg0lsBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC3C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173978153360.14763.2002686312578747799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2876c4be76b76d0b620a3ffe32f51e4aefe489abcb94b914302fd0f634a3f6
Date: Mon, 17 Feb 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739781533
