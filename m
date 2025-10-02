Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159F718FC80
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759439994; cv=none; b=sUO+ls672Z3qr8zhpOTDRO2XKlGMAqDSy+3cljHjG/HMY5nJf2n+HPrjDdhO3dVHfO0eN8D6OLj3pceqlHQ93y97kzH2UA5Pzh9pf4jgAlK0NxPGOs+AGcjNGEnmHRAcmU06Wekn5JkQhfEO32/S3X1L0t2LhvJSorfR872jIt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759439994; c=relaxed/simple;
	bh=iv3Bwjh7LDK+nbJPL2LrxjSBoBYeA2TQ/1aponcFvCU=;
	h=To:Subject:From:Message-Id:Date; b=huTld63RuKHML9+pywF4tiIGUZnhQb3nXukgAm6qJMaZMxsyyBVZcHhXWNXNaEdYrF8zBYqrOmJP/Tr61iXQImEN0lSJARm5jQKJP0UHaYRcO0Ft1WOSGsOH6bVI9rLv7wnZcEmk0xhtiIgHJJxJqmFFDRksn2HDasKX9aI2FGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrOuLLAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrOuLLAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB93C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759439993;
	bh=iv3Bwjh7LDK+nbJPL2LrxjSBoBYeA2TQ/1aponcFvCU=;
	h=To:Subject:From:Date:From;
	b=jrOuLLAE/EIYRAxsSrM1sEnnVsSghfGOpCGkbw9nJESIDiybJh0VYf6nRcXDnWZu+
	 Kj/da7uIwbgXrSuzom4M1kiTdrlDyVc6Jzaspk7J2Lw0fcwOtHFOG7eI9LEkhtFh9D
	 arAJmNi6r7WqXi5AebeZa2Uw8seKs29oIw/cd+mZKYudxJ74p4zeN70LE3BE9qsONL
	 2lKgT8s3GjZBnPi+8a0NeBwXEHmeAwyPsf6ucLiwNrwFUD0fX20BQm/SeYThAKZ/2f
	 bwxsNHgODpwQcQEu/iVS9vj3+q3VF0f4eSnvblkJJ9DoZ/ZnUe9jG6IsHH3qQyXTD3
	 NMIGsi7xZuoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B4CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943999358.1223.16115132473629522492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0c5c2e87655b99c18fedca19c8d196e6a3b51eaf642aa9e0e7b5efbb1c05e2
Date: Thu, 02 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759439993
