Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8B2765C1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757149795; cv=none; b=l1UhMHFUggixjA0kGxxZQ4DIGnja5h9LS6a7n9BDBmRfQ7+avPlbY5I/3E0YZkt1p0s4tS1VSDcoa4eAwWc1izWGCdwi3yD1zdQsPdJqmt55BQKThtW4i29AG9JGmrQ+ksVLro7QI+TZC88Klw1f5cnU0QSaY6EY8fKZNr8DtUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757149795; c=relaxed/simple;
	bh=AMEErTirft7QLhILHIUjFm0Lr/AI3ipSHMnj0nRymcQ=;
	h=To:Subject:From:Message-Id:Date; b=Wuyql+eToPP4f2RmCVf6p4ru5XV57yf1CK+0OKCDtiFEiHMHiGbvyuECL8swFbovE9NzJqWNduduK65DEXXK3zyZQPePV9k1vcEb1zVyfvbEQ0NHpURWPjJsCkL52sgxM5jHQhrEO4pDG2tO+i2Y/XLhTmc/X+0qa7lm6rkeIYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSVnboma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSVnboma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40ECC4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757149793;
	bh=AMEErTirft7QLhILHIUjFm0Lr/AI3ipSHMnj0nRymcQ=;
	h=To:Subject:From:Date:From;
	b=dSVnbomaJatY1kYyz3mgt8NOtG/tJqDvDBZnymrzE/L/a/RD1pr6/KRYRTci6DwJJ
	 uwl/SZdm/aaos3w2aQPHhHARizAsCo2oHplcUROdbeb2TcFvpkQ1ueXwoZtsCU/JJT
	 wG4HMVgjGkBGO72QQ8E4Odv0+ktSlFTMIYSGbcFYqnQY4iSx77gpm+W1/c11da1wpH
	 gZ1xDwhV2gHKOIKPJG5oj7o3J3oYFyfo+2F0wzjErlCk0+UVA9A2JJkE+COUzS1/Tl
	 7MInjXBCf/IG5OUmuWf9QC1oxoXS/I+TH1GWMUvAS0Vugf8glzrQiS6HKU86/odYpA
	 94vFAjN7rXlxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EAFCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714979358.7012.8118093028370167023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230d42f59f9d5c1e8181617d9d3bf92efa0327c225e8bbc9f23200967d36576f
Date: Sat, 06 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757149793
