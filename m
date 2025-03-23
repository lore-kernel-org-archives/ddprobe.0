Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C71A0BED
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742762395; cv=none; b=tavWFDQSjCBvviIpvn+NnRqkUd1B0o1yzAXSUdXfxpSExtZDc56ejxOPxvxHevC42sTexLc2Zt+vSShohVp2wbGpMEYujTz8asygh+mmmE4lnnLHeD2eaEMgf33r8HoI4dTzeJ9V+wq3mtF8iI5qE1AJNEaci6zVH3sjsS25Nmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742762395; c=relaxed/simple;
	bh=hjZUIUagQY5KM/gG2qwuRE8k6YwVEgeiUZUgORivOJg=;
	h=To:Subject:From:Message-Id:Date; b=VKE2zs+kWm098JISiARhhqyAV3nglnAkg4+3MUs+Ll12KBQ5AHwb/GrNj7Z6p+vlESt+vFI85pM71mfgVzHseYAu1G+RrwZ1yUpQsKPfI0a20qWjy7khmGNerEaV+3djm7ZlnprzbsCi3Bba6KM5FDicj7GRWZYI+NVjDh8iBDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyVGKsKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyVGKsKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29F8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742762393;
	bh=hjZUIUagQY5KM/gG2qwuRE8k6YwVEgeiUZUgORivOJg=;
	h=To:Subject:From:Date:From;
	b=CyVGKsKiXFoLBAwJPRMtEC+g5kTtXEo/Nwrj/3YbX76teqcURbQ7hQC89PFsUNDIm
	 J1CKiQXZOJOsFEvEaTtm4EWUiCcjULnxa+zEL0R4v68316GUC4XgyFD17F7+8cJq7K
	 sgCIe6Z/4PZDD83DTdlmcT0ToMfHsvzSF9Hv8lH8jLZWF9zV0r2y8cHnFmSSwuhT04
	 zGY8RIpvD6EPOoovPPuQ42SadOGeOWN16zOaCQ0DiAskS1/9sJSHoJhJgWOzM3F19w
	 YHb0GLgy5eIy5j4ytL+PzDl/lVxQt55TIinU7AgjADiSU+cHYh6eAAMuaRCeeLAKE2
	 UO1HifEYKM6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4500C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276239362.23304.5043909658541766416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8647f336f217337e49bc2fdf703982f2ed488c0a763527e8438c90e39227cf
Date: Sun, 23 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742762393
