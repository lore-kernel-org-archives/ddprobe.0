Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2356F7263B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760814594; cv=none; b=EPzoFWXhLlzVZyF+u/IMfRSTosIrciU660hhHy4W0tuis2Qxtb4ofeQZXqizrTPtHj24DXQUZNcBU40oDYq6dxaVpGTChsONwvQzD5QzVVkaD0zbAD2RrsFQKgDChnkkoGzXvN4yTb1QvmVhitX8uOIpyzRw2svje4RstPwt27Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760814594; c=relaxed/simple;
	bh=F+m8QxAXgXmxixfDDJc9SsmqCas6th3bFy42oZyTMEA=;
	h=To:Subject:From:Message-Id:Date; b=R77gpnvaV8W03esgB4n1nWj/N7+NkDZXKFP+PsreqfQc1TE/2Eq7lbE2LnasMFgqDx5Itumft7vuEMLCipCPWq/K94fzajYZCKgWo8fab7R/zokHoGoKyHgtJkgVTk+JesdynMOv5xRfxBVvrB7jDiGu8mahAR8uYDgjHmSGVd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl9iUgyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl9iUgyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7812C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760814593;
	bh=F+m8QxAXgXmxixfDDJc9SsmqCas6th3bFy42oZyTMEA=;
	h=To:Subject:From:Date:From;
	b=nl9iUgyH/Fy/n3xrZzu9Nb28ApQdQWrGC/3xd7wikzdSBNFR/5eXkE64rIaOpFBK/
	 /jjBAfomidv1/eTlT3XBP9RdbpPDC8pgQKbNBsJ3uzBZOZtHgsm/YRJPcJjMFuEzTU
	 h6HXIIXMv4x7UPCdE0Z1C/gHVBDCt2GKAc3BJZl4JHyR06iVbKcf5E2v3DxF/wlIET
	 kxc4aOjmCsZtadR7LBGZjoe+0dh8mPbW9EqVGRPpvEDeN7rlL5JbVzoo/ckjlR3hP+
	 3yXyvqUrqeAcl/oS3sOdv9JIWIRTJb61f38w+BXHmXXGR52YO0sZCCypr9yks0/Fm2
	 GxfFG2NSXa6HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBECCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081459358.24614.2316067752186474645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2cd8b2a7c770a4e448d04365cd59131e8e95948014c73cfb73086d6dae280f
Date: Sat, 18 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760814593
