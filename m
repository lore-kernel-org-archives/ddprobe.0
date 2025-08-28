Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBBA2980A8
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756421395; cv=none; b=sEVIGQCewwn6nZ4pZ5nnzldeVTI9SPP9uPn15abZNpGXnXeVpk0PBkQVVge0S3b22sGarVqu7Qaqe2JF3WcxPxhgJ1wVa0BppZ8eRdXg3gKp9PHnWmPxKuhmP4dj6sONY6OKDs4e37SnhCtWoNbF9cswslmnELIX44MgrVw+5Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756421395; c=relaxed/simple;
	bh=He82nKhSdDfDvmU1mbq4lw2ho5Ifh1RC4d9IhOPpDB8=;
	h=To:Subject:From:Message-Id:Date; b=DkLu7kUKJqr5vrCyQv7S7WX/uJI91N1dOVaDtc1yVeXkEpslECMQJzx0b9dswmZ8bGXjkPVCb0YIEg+O9QEOjvWCR1PDcDf3eeVukrFYSU7Np+XWP68n2iDFuT0N6c6Fj90tYt0CVAX8oMhxaeMMJ+WIu1aquVBVplGymWKNvbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSW4tZOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSW4tZOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756421393;
	bh=He82nKhSdDfDvmU1mbq4lw2ho5Ifh1RC4d9IhOPpDB8=;
	h=To:Subject:From:Date:From;
	b=TSW4tZOcUhjqNVsekW+jUnZOrwAclJYMkMsamtMCvUOE9SEI9+LfvhZeRBtOZVwUZ
	 ctEpaNMGYM7MPhrj99AH/vcLvlEMY79aZRpzzwL3e2ZiQ075LH34neLF4HsxYCWrCI
	 9JQPouV/IvvN9RVvOvr7DMYDFFq4WntORUVDltFX9Wtig4DKj4AI1zZlw8+ZgeIIcZ
	 xzzuyt5gnUsDsWXcImY3gbxdx9Gl9/ogHoM6JxmgoVRzFyFHVoH44YsrtwMrNW4NrW
	 zaluAipvBSKhcnHJBd2nBbfiLcniNaH8rtjsN80d2WDR1w7QWRATGmrL11VZ41fLqw
	 oTMVmtbzDWRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF48CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642139358.10347.16315386593411810076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedc9c58fcfb97c8ce84534c7a998839c9917d581753c424f667ff34c7712fa2
Date: Thu, 28 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756421393
