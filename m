Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7E21E1C36
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756837794; cv=none; b=pXZ5InyhhOniBav+1odZTM55C/omJC5D1C+y4a+4OA5MI/ilEJyeYebQ6wWpJsgVS1n6AkTMSR1VWXjk2U7+vrMDpK5lgJClyyOHy5SFJzqSy72WujRON/ZxVT/CObufKZ7jz5YetW7XZxU6vZ3q9855EWaXkqIglpLyOjdFYBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756837794; c=relaxed/simple;
	bh=AkVwRRHv1uLkFKftzq7ng2Gkx4yMDSZMztiesjD6uj4=;
	h=To:Subject:From:Message-Id:Date; b=RnT1VMufkdg37Fab4aoLx5mbFMZ3UNO4j0yJM9v+AlDKh1C60zex1kOdfB5+EIh1Siac+Ei0+C5giNaZVQPzAKujpJOMtjR8lNX5K3BuXxJz1cNh/VbNvpRjz/nJUeVYfihrTHhbqV51wQAn0kzYP5c3YBcIDyhRsy3FLLgkaYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABnvfv27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABnvfv27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4925C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756837793;
	bh=AkVwRRHv1uLkFKftzq7ng2Gkx4yMDSZMztiesjD6uj4=;
	h=To:Subject:From:Date:From;
	b=ABnvfv27M68SRx3sDCiK7V0Mn4ZWWLG9el5A5jMDZGQuvrlhSpYWG5zwJPFJe1fFk
	 BhjdYKw74fwog0vu2s8OQP4QaULLWGt69REERW+f91D7clGMrN02DRLtkcioy8mHiU
	 0E8Qics64uwFkTeFMvvVvGSJ1PAJATs/L3SMLPOMjAf+wUrN4HcswzqaPl6TDHe4qX
	 PgEnZFp93OxsvXa/znypWFwsn/EnmhRbl7kbNYBrmreelAH4OgLFaYZ7cnaDnTeGp3
	 kdUYG4uWxUfDKTUFZOXT/bVKD2h7qfPXtL7JmbstYs+8qcyN1T1S+K64ZI18MagBkx
	 Zl7bs2xUtmTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9056ACA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683779358.25950.1350294360649675827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e7e1ec92a8f33f51022a7045afd76f02e802c817165df5b8e9e52b214e3557
Date: Tue, 02 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756837793
