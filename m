Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311C21F92A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732829754; cv=none; b=jZB8Fzrja8KSNIWlzNq/wYZDsodLXu/wj8p91VEolckGxjHewETi0okMiW4SG96OA9rUZ0oe+YxpfgPyQTLKXYhb6v1UcTsllnKNmKvkQrjus70p60SzWtU2w8KR1ZUFCPcNMZ5v3ZDt8ykfteUfQ7pleLV74kLEMEd2tXpmUYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732829754; c=relaxed/simple;
	bh=3Qs4gjH5ce7sFSRQFPPgTlbWjVvImVaE3wA9mteQF/g=;
	h=To:Subject:From:Message-Id:Date; b=ItbLlPwOy8kQFX5kSau8+1ukemRrm+Wv3VKdxthpmv1wn58GHpABWYC6V35deQpZWCl5mYP3f/2dx2pfO/F8g/BzYZRXp2J2O/9Ri1BTf+WI1WowTHrgvapmGDxmgC9/+kyIPTPdEhqqO2HmdqCzJ/fptecxudOoEKpDk3rgjgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xfs6vreB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xfs6vreB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB77C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732829753;
	bh=3Qs4gjH5ce7sFSRQFPPgTlbWjVvImVaE3wA9mteQF/g=;
	h=To:Subject:From:Date:From;
	b=Xfs6vreBXvY8/GBiT88Oisn8ccrqTj+UfkKkewMdZPcDlFVlHjKbZNuYb5VilmNb2
	 GV89nlCC8rHJb2VZMiVtv+MS8A1xHbyGYm3/xS+2idhCAVRYYQYPlnWlE6bsYA9sSc
	 hO1si1x6g+089a2SG/EBAQs6F14LjM5SjfIK60UY2OjK9e+OjnzfgZRocTi4AjS4IC
	 JPHQLWvFhEhKNA43Au3+y3U7aj7szn30eMfqTuU157Ys5rqjjplTJDCfLB2VO0+Hr9
	 8yq/jZ2L/ZqzwZwJhdBtsJIppHnA/WO/i2oVJhaCtZ42uVMznmlFWZtgM879ZqMtHD
	 UexgyMGxSy+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97832D70DF1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282975358.3163.3168027611695449236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970b63a11fc34783b19420bc121da8fb2464f3f46efd677a622cc8418f2ca8d4
Date: Thu, 28 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732829753
