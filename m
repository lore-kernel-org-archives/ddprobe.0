Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813174C9D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718678303; cv=none; b=ZArigplta4NL5XLCKmdWi/J24ccI+HVYBE5cUwZv191Rts0n+0j3bIH9oWOEVpjoE8bOCyhCc7AA1plYAAI3ofOT5rVAtCkdEm8MgCYaBmPP9i7WDQ7DByCuWUPMsfcFVfUfIkx/N1AqG4gVgg28k/qsxSm2s1UgIvft8CUsgeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718678303; c=relaxed/simple;
	bh=A54lFiVeo8miFLsZF/ff/n4XM7LmEtiBTlOJdV6jmps=;
	h=To:Subject:From:Message-Id:Date; b=svNOfDWErXss5aPuWzvKTIl5gk2FSluNO2Fi/ImX40CyTDxoKQiD3ciLfcw4nJZZtxgzSXCblw70wUlXNL+7juf6lWdutzYWq1TRA6VfU1QQ6ko9GmbcMIgTfBsYlOWPs6DFFt62SJSxZnnL+bhARG5eiHohf+QIT/VzP8N0UoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgR+Kzl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgR+Kzl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32E3C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718678302;
	bh=A54lFiVeo8miFLsZF/ff/n4XM7LmEtiBTlOJdV6jmps=;
	h=To:Subject:From:Date:From;
	b=JgR+Kzl9IU20FplJ+ZdO3iOmiAqdZt4HmOrViQEQr88rKnOg2jCG/ELN2PzDrMQSm
	 Udr+vDuvv2EzoyfOOU5f9S9lR+SsnJ2IQqGgfVyEMO3dN68Y1CB6t0gOJiXenYaTd2
	 688pIwtcowezGCCnUm3qPYb88+egYgYC3kUAprEGr1cIRNoCu3nzNEqmjiPJoOpBw/
	 ZI9e37rLLHAPMwgJiOD/MXWh/pbomDGZ92pAwkmW4ub+odNIi4n5lXBjLPLxQjPRQp
	 XF33leonUvuPEkqDfl4g1UobnY0lTWacCkrfTmAYKa+dpsGgwnvyBeYeZhXXhc3n2A
	 n6dF1+T/iJ5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0EE6C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 02:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867830284.14310.7309174917865256737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827150a8dbd91c414afe5cf31ab645dc665cf6ce50b79ff018f95176d900e3ae
Date: Tue, 18 Jun 2024 02:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718678302
