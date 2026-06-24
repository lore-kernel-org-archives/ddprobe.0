Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387B82609EE
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782275794; cv=none; b=WDJiO8SDUVgQrcj68clqN4XtRa9Qzm4KOzcJaJ13LyXxTEudaiiItOD/yl0Lb00crmDHCDOqK2pgFNAQfyuGhgy5B5pnt7QBRGUxKiDqOD6YcO2640I6qBNJcnDX7mmHBZevH7KBprf9JzAE0+8BQAaBcIN+4QzGxWjNSufz/Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782275794; c=relaxed/simple;
	bh=5EHKWb74cEtsI/u5YvsC7DkvZXE+O/vd8BjCRDJME7Q=;
	h=To:Subject:From:Message-Id:Date; b=XbXCxEK/Nj7h4k4j52flkFMz1/hHtyKv+La5FXv9t1tTbzaEPDfcP0EGeql8FLv+bnlsPpvXX6SmE1/5UVxm/ycKBEAnm81VEZoRRGiKDyaKHeJVY+f/oUtFRqpBWhWkwX1gCBtmeex2LfotoPFlFFnmmc8rT+sb16LgfyIKxQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVXqq0ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVXqq0ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE23CC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782275793;
	bh=5EHKWb74cEtsI/u5YvsC7DkvZXE+O/vd8BjCRDJME7Q=;
	h=To:Subject:From:Date:From;
	b=HVXqq0obIaP6VH+B2Gh8sPX4TMFvDnk3adEwnH45UtyIXAZyG7+Bn0tI1htq73q2x
	 GlVWJMOJVs9DNgioj/Rgwt+cDBxzUTlkYMYOa3MKEiZozZJABDU0Ql0aIDejmXOOdT
	 bUsWDo6gul181iPSbKn7/9fWIVfO2JhdBUwlSyLP78sknD6Ya2RiB21pM4stMIorHL
	 SlDeeEAHgjZmL7J/PBrY6jZ9y7BotzBSCAQkk0rtL4l0sxNmY+tuJQ2CeRqQm/Hone
	 NIUgsL+BHV8IcuuILyfg/oIcPRTNc+xagl+leQA+oWUlfSiiJyjMwlkk97jD+EiZfb
	 NdwGfoDE0Jrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B630CCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227579373.21122.8011354429686627307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cd46380db53b42b37577a9d0f55a61fc22726b682d0c4eee27cb443b57f5fd
Date: Wed, 24 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782275793
