Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0B43DCD90
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777991855; cv=none; b=dhD6w09Xzpuz3+fZpoGYxSgG6jXjFZz+t/h+Kp9LuiQ1E1uhDVoCzWBlisZt4P6sGxUfhioHw3vm6ZMHN2sE3eGmm/L4t9sJK7OftzkSwxv4Z3N6iJQUP0SwM3I4wo2KLPuRW1DyfDy3zuHh2f1vgu0QJml89dl9tbXXGSu4Tx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777991855; c=relaxed/simple;
	bh=mo1QHkJfX5H9cIAJd3qMDZHIz4fDB4DprfLfhqquvpg=;
	h=To:Subject:From:Message-Id:Date; b=HZ1uMDAfB35ZR4EAt9AbqCBQu7qfsLTWGpuPXl6tlyizuqTWNCVn+5Bp4gdVAPa3Dur3AVq7sc6VuEwoEYF1+WFMcrKtbEINs1nIHIBhsYqtVmvJ0k82zy4Ht+F4RKSRYKZ2Ize2eNaQIu4+tjtpf87eUp+yioXusTvMKRq69xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/iY7zFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/iY7zFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9044C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777991853;
	bh=mo1QHkJfX5H9cIAJd3qMDZHIz4fDB4DprfLfhqquvpg=;
	h=To:Subject:From:Date:From;
	b=W/iY7zFsg+in8poQJZQK+6wQoVNXDeEYcRLln+RKDowzmJmR+v+gIDMHFVesL258z
	 t/aFIEwyxA7Np5VXV2H7U90e9SCbN/L/KO+q3ydewmyWxdTqnhUr61MHh4iqz/QeBV
	 hR17k1I6t8sJc50FwrbE3nv4JEKK1+oDg9MjtE74o/x83WvsjWs/Ev8qLqLSFB2xbG
	 eHltkJ/DKV2l+zMOdwQcGtmvI5aPmP0WWjWrRWf2GqV1TX9Bk7JfXnv+DYHpFn93zO
	 JGH/SAxRqUrRemLU+r+EzLbMuwghYrMBETL79Kz5XasjmtEWAJfF4h0powbV5mnZ4s
	 dZQ9VmWpzAdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA077FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799185368.21020.10198418923027138403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32381fb02350652e582a828d1907939de929765cf5656cebe7d81292882dd852
Date: Tue, 05 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777991853
