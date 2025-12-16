Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A325B1FC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765904034; cv=none; b=CSMVvDxWlrwNpP7hMMHGbzkXi0/1fVIDmN1FZd3tan5X1+9yP1UHPDvrnC3KIa9UNaEluZBMWumCXg6PA4+DGNHjXlD0WPikK6VyFGmEZEmJKAyMIz8nkVt/3raILZ8AQ81T/Ow153XQbPJqCp3ONdIM0bsPXNzKLr1JLHQX9oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765904034; c=relaxed/simple;
	bh=BHIqa2PacIauOSPzCVn26PMD5KsxJB0TZiGxJu7bbyw=;
	h=To:Subject:From:Message-Id:Date; b=B9jt0iDF1/N6P7rZE8CVtcwd/7lhVLicCJsN2KN0fdJ697K9yeHBRSxDhtGtSt/d/MhMo4XOwfNlUsK6fA1ZOw3H009HC30V+PiCPDU//PxxkF+xlXOYpze0Nf+3E6pZ+nZUuDXqkEx492ekFZHtp2jU34fSu1V8oMEwtVKVNEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrKkrlUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrKkrlUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B37C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765904033;
	bh=BHIqa2PacIauOSPzCVn26PMD5KsxJB0TZiGxJu7bbyw=;
	h=To:Subject:From:Date:From;
	b=hrKkrlUOoOh/IBmq9fK6NXNsnm/WVS6tdP9Mjw6ilRzvb8XUjRegonLm0ZxjH1MDk
	 63R+aAKHZEd0AdoMak8CyvMYjAJT3vsooSAd8alcUmUeghNfSF/xk/dd2Zcw7fxkUW
	 MgYQBPRkMUPX4dZP468HSZmlIskuL6SdfgSlIgqoxuR2vTNptfzsJNxjvClbU/HxL9
	 QA6A1i+i1KQWUhQ5T72J1NkyfbHEHSRSsHmZsKlzz9GcB/dFvP1BzWsNpMfleX7IaW
	 OAUrzjDuzWFNJxGKqjY260iJw0GkQH30wFb4Mj31NVns+GcNMAlp2fsmn+t0DY4OAF
	 gjpbY12evHEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE0D609CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590403358.29289.12904219982259334063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78936f4eb19ed9dc9877f632d527998cb011c9773a4c1fc63a00b357c681bade
Date: Tue, 16 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765904033
