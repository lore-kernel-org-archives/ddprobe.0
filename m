Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2953A1DE4C2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764300174; cv=none; b=UiT+13t8ZixZtqdb/pEZMMP4HHJQIgFw7BOCZNzhRybgzNNHjkgZwYrWIA8MH1nPWoBZEMlcqC3OAYQZtuF82HQ4z3Xa/DG8XRaM6xtuPdV5C2iUMgjBj8Vnhue23lxjW0x5WA92sqj0K5p6yw5cU2dk3EMI/jW6J743j5lG4bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764300174; c=relaxed/simple;
	bh=ToSB6/881wEOzL70GoekVFSMYHF4ixptkU1VZZmY01Y=;
	h=To:Subject:From:Message-Id:Date; b=syLAJVjfzEZMNZCRYWSXL7rHLKpVE7rnMMrgzF2VGAJuwycxDi3jw50/J5yNZgdVeAX/KMfaRTqd7Ma4/huGs6HlZe9mRefLcofOpjeOo/kgT/YCjTaoKYpyWrpLvuqT3VC1AhMAlPvrBr7Ap0uiRLR/XTefnmLDIsjXY/S9CAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1floLZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1floLZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A988BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764300173;
	bh=ToSB6/881wEOzL70GoekVFSMYHF4ixptkU1VZZmY01Y=;
	h=To:Subject:From:Date:From;
	b=D1floLZCFtjsSjkFZOsMnDB640VbV5bIqizi18mwZQanBcz/i1kPgN4KcPPEyzYoN
	 7NQFMXliwnxU0+VuKt6wU28M99qapDXKv5JNZiunkxT9ECyWw0G3a8ell5+mG7IJFi
	 uQxjedLsMQEFnP1GwtcbvdfbJL0MoO5ONa6UypmjQc0nf12ShbCZ+LQxIwRHfVzqDS
	 S3rl/Aq7xXPi9ze/0RZhFoZSLY9xfhtCZGV9c6yR26PmPI8Pff2Nk5kynLpQJH7IAq
	 FxRjRpI4kuq2g7BgoKP0KEbnMtfvvv7UKC21lu3lOV44VBFFGGzqZWJPZtu84t7Iwq
	 8BPOpte+F1GDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97505D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430017358.8452.8595688788769178471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00cee58ed5c29273d92438db686d01b86823828b9351d9fccc50c37eedf8caf
Date: Fri, 28 Nov 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764300173
