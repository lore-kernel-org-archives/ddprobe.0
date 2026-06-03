Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27433453497
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780488274; cv=none; b=HGQ8iTecQyGEwM/hz82VhTRLV7JW0gmo4OSfoKmHQ3GSr8XGV7VkF9x8nVpouzm945GmDr54VsOPWhjMEKrskAV+d0i59Qi2gXYvaoVVtpUDxeH1FVQKra4N1iLGmGkFwG1Jv0KRZoWsJI/6t2iU7GB1YyHT3SnVC81RLJgkksM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780488274; c=relaxed/simple;
	bh=4SIusQeHTniZSznc1fUsJvqXNYelazcLzobIhY495wk=;
	h=To:Subject:From:Message-Id:Date; b=oD7JYP/9752YEBVpMteefhTco2SlKpdUm10QmkSPr9IN63bFQ44CZemS33kPo70YQAJ+/DbjMfE/LW5y6ws9P8eVeQ0VQeKaP6ogbSBlGkhbPQgfa42qM8Y2AsVTu0dIGnUDqnHWAM/98adY9sNYM1f6xHMlsyq2NWm7CX9rkLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP3alq2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP3alq2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32E4C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780488273;
	bh=4SIusQeHTniZSznc1fUsJvqXNYelazcLzobIhY495wk=;
	h=To:Subject:From:Date:From;
	b=SP3alq2gvxXXKND+9598zCG233qSeLNYKJOWs7pgc6qs1GSGXKAbzpyFgLPkwN2fN
	 0z48RlyHBZpgTAjN+sKlqMY864MaYbf0jmSgb0/lT23rxlSxfbr6y8bmTHmBHBifts
	 cJaksF/X26526Q8Ck10FNGuz5sb6qz50G6as46tEPDizBNunH8CpvL7wIeDAiMaWzi
	 TvTUi1jM8rcrKvlz2LtvQrMXyKBSsI1bcE47oVWHy5I1DfINEU/O0QNColiExH3aT+
	 hLSXFHDrS1aVSMW6D9YfkKBcgfnW8aZhXjeyAtYE9NwStckG4TPagz50ZiclDeYU0+
	 763hNJXQ3XlEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC188CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048827368.14967.1334904698938786795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03df55a4211c4f6fe4fea26aa6dd4714470e56d56b642c2761ad5c0e443390bf
Date: Wed, 03 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780488273
