Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C201FC3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737945955; cv=none; b=AlKy8qmcVerPfgdqrkAbdqzDgkIwfRhyR8NyedPHlCRSbbZB7v2c2CiTEx6W4eKgkRVAvVtPFd2KQ0dVvagCOTkUaAFdNBYbb3vVB9IsFIbIrsnCdMCO00wbQiLPr6yNlix/UnwzXyRnHKpcdBbuDoeLRlVjdFADU/zGZnOd8mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737945955; c=relaxed/simple;
	bh=iPEjFqgl2ymFqLwyd2/WqfJpoZAPw/+g0HeQGlFfU9I=;
	h=To:Subject:From:Message-Id:Date; b=R4fjJVcDxpbkjPcvggbo7lSgo6zTElGYqpfNcnb+69e0dF7QB9paMEk08X8iuxKl0AMe3lTObrpnDnmu/Z3uaelzKsKwa2OB9c1QU/gLNL1uaRsO1WRMpbOqthvwCC6GN4mwt8vTq1cqq9Lo8o8RQv0NfUrqsvm90I48gVd//MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGYeWG+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGYeWG+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3BC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737945953;
	bh=iPEjFqgl2ymFqLwyd2/WqfJpoZAPw/+g0HeQGlFfU9I=;
	h=To:Subject:From:Date:From;
	b=vGYeWG+f7OZ5QPxCXmqAjGa8KAvuRbQHOSCrFeOwwpnvzysnv9qezLcxPEyKhLtPq
	 W6fb7oWX6p1IV7lVLBGXisMx9bzAPHOedzG/EFBBkk5w5CElbLbSwC5Z9wrcXnHLcy
	 XtP02AslCQm9GsjFzMg2EcRURitA0A+QpEzAmSJiBOzZj8CaWcFxmBtz5/5MBLrm0M
	 MsS+krxWO4PYW7mp1afzKctRWCyg/rny0yKP3PQdNo+53uAafk7VcQyu3itrJoDp9F
	 4Dr/VS+xOxwVqYpfKMjpo4k4878997wH/y48RsIJ1Ptto777cxAPJjb8U5q5hIUXqK
	 CIsXc6oXLfaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B95C0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794595358.10320.17091399773120658085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e00484ecc6038091b1d25e3889020d731978cca0e9129648ef5c9cd24fc5c92
Date: Mon, 27 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737945953
