Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DA272601
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747403394; cv=none; b=tr4eENbx2eD+oKrm/OhEE7KbMzf6+jhFMeVymANu06GaJ2O6ECnWB+SqmufWdgYeH4DIbJDSXupGTgDNpdOEc7JIpel8dY/5A1/HdZwDjnteQOEkbb/9+MlMIQK0RQjDkVivotA3nM0Pi9qdxuqwXM40nk2LuPF71rMdXQULeTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747403394; c=relaxed/simple;
	bh=n/xV4F3py8XTEi4F2iule+B5g9lwu1Up4t7HvrwR9Dc=;
	h=To:Subject:From:Message-Id:Date; b=aZ2VBKfgyGHhuGfLmIzZrapJEuAEo1mZ7O1kCP9N/BsMC0doaTyH80gaJecPgHBHL09saG1ZtBEtlJcni/+DScxnK2VachyB316JfChnrKA8Br812ALcwUCDkcwwnypZOy9dsrA6xkwiMDUddCi3FHN+kgX7KaY0hYP/d6MX1As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M20rrgMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M20rrgMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A122FC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747403393;
	bh=n/xV4F3py8XTEi4F2iule+B5g9lwu1Up4t7HvrwR9Dc=;
	h=To:Subject:From:Date:From;
	b=M20rrgMJXkMewLXygfDHWgTp/IwTPMYBqIf8gXIrfpqETEgg2XDz0WJpvroaOxu9y
	 UxNcUYZZsN6mCS2vjc/jtwp2CxMNlMl5D2yIG0kY+gdIhQOJuobUzFULsdBphsSGvF
	 NaHUww4c3gq12poxQDVNCY8GdEdPkdqd7zkaRBnLPo9uTmghPAAY/SJdh4a06hcmFX
	 zV/eVMilGZNBm1l9NKMPDlu1bL0PfbEMTYNyB6V7wGWD2bVv8S/51/SIpZbO06VYYd
	 fF1JLtBpyc9lXe2LH1KOI52ShoHHGvtca2rr72QJXW+Jw2mNRzjyT47TfnK5x4Q3ZM
	 2vpslnIu5+kkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ADC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740339357.8598.188621057107365293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54194f4762acb0db677e4dc4ad594375bca9b5e3f51d9133789ca82e8543847
Date: Fri, 16 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747403393
