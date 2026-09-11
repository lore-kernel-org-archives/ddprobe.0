Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4313B28B4FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789104034; cv=none; b=FtYngnVTx6XyYhaEHWG1fz91msK3aTVYUYtlGQsLXhO4Bl9ReTiTWPhvx1YxlRWexOnvbU63sTFh1wPad9lspBQhIRzbaACs5vzJKrzjC71ZwoILOLxHvPSE930pm8MppvmDUWEUECFBCqI2tjTG6R7/d/OUGdzeUdgZcitTziU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789104034; c=relaxed/simple;
	bh=6rBZV7nL7OiOMQLb1CNfP2zGSPe1CvRBS1aDsaCZTwA=;
	h=To:Subject:From:Message-Id:Date; b=IO5DxKWvbldb+C7N4Jagz4zNi9AL7ObsDXr33VNvRhwg08mJF1aRjTI09zi56fpHc/hXGdj+aEdL12QjtJr8utFNGxIMkJk5E22zWfJN+gYYsb89QySCN+QH2nHxeBqgmWyR7kJ8UsbnU5e4ktfX55isce7V21XOaHQYvZqiFAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9WbtluO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9WbtluO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB13BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789104033;
	bh=6rBZV7nL7OiOMQLb1CNfP2zGSPe1CvRBS1aDsaCZTwA=;
	h=To:Subject:From:Date:From;
	b=H9WbtluO76VDtuU/RKvG78R/Yp9QlFL5HcV5u7Qt0b0B9fsgbgFzUd8rgkOqdjyKU
	 sKsGWlOAHYyG1z5Mj55q1qGmgpDR+YswE5ryyn+zDqnC0/hOie9bA+kXlZKGaNxgkh
	 EWQQrv82SBQihxgbUUuKb4DRxV9qh2A+MEtZFfDJ9RHKoboISrDsqbGZzxJUjnPHlu
	 amrEE+acRr60UEJIDqkfAAnNBd5BiWyXWYN40Yw73b5H0YLqOEu1AG0KPTkcV668u0
	 Z8cpAGuiVqVvhtAJNOzrmufKIzXG0+6SwSzOkxkeoPoiVPEPnB04ZYNGD7nanX5YNs
	 dyPO1NUt/pJbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9399C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910403368.21410.3646769009361217456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edd0f683b09bbfc3e0b9b0ef6281c52270bf51f4f12b15ed0b7266d0334df1d
Date: Fri, 11 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789104033
