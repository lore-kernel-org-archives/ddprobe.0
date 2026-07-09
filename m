Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE973AA182
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783580314; cv=none; b=iPxoig0cZ3CMKKbdn9OHGssUt7ldKQ84hEswbJq5xTGzx7bZEwPJXWKNT3vvV1chpBMod6VkEbjmfonakqL2EZMvSO/2g++OZeQt6CSNlcFtzxvV9IQEojesU9iJttVknfB86Vfv4mtLrWQVXeObRZ4rWxloyQxF12sT7Z+6iaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783580314; c=relaxed/simple;
	bh=i7/ovtF4nAL1GvKhy+dFDWh1714Lfsp97ygaQzq5qK0=;
	h=To:Subject:From:Message-Id:Date; b=BqhToBv/f4mPWrZV67HTWSm67BsCH7NkVmAIgCOBg9qA7elKXlfHM9FizYAookyFvT/VNQEd0ZryeV2E5EkE/E7W4VwjlexTb42H6mhcnWluPmlix8n0TUd29kAgD6uX9ogiUpGm/uamHTxilZdxKtZb3AWu9YNyy786/5tdMGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzWH7WIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzWH7WIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA64BC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783580313;
	bh=i7/ovtF4nAL1GvKhy+dFDWh1714Lfsp97ygaQzq5qK0=;
	h=To:Subject:From:Date:From;
	b=UzWH7WIjl3g9UPIDfIh4jgSlGA5a18zfzTQsolE2fC36uU+6S/j4tjv9ApMevF5xa
	 IMQ/MHUQIEkjVvhuX79RondZzvmCjLtWpHxgdD0CQhzeM2AFqoI6P6N4ExdDJXJ6XE
	 G0WAHGU+2f3ktDGefH2fj/LS7w1O+EKjXq58EHC5r4K7NhnBASCbpruNUtLGNVu2Od
	 MNhgi0kYV1OPjr486GkxUA0eWca7hnuTeCoDqW1pvOnEA8JhoznY4ozB1E4YPOyIa7
	 GOA2DEl9A/HZaXMxfVkGB1EpUMIf342S/qNfptHik6CVQUmOqOhMZCgeDEKFyLw4Ij
	 9z1FO1iqzVJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8252C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358031368.16968.9106596104151292432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d145efad176c021c025996c96e53802440d89c5ae5039c566bec4da3219e3a0a
Date: Thu, 09 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783580313
