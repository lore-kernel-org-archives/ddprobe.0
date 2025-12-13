Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFB51A83F9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765661574; cv=none; b=LhGqnsDhedrZDJwREOT+gQ6BRTTakHKk/1glHJJtwrRrn48vcsaiCnMubfbfl5aXKwKiQJJTXCI+ZwFxGyZSm5h+RbEeLfSvjF9aoeNKs8nSaxEh1xtoMMlIysKXnIXGOcdlT+DKIDNsiKRCZKwTIbZqIgXcLRvuHliRXbUvhGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765661574; c=relaxed/simple;
	bh=V2ODbjE+Yk2YlyaZLK/x0hTfYN8p0JAGrsbuBvnAhHw=;
	h=To:Subject:From:Message-Id:Date; b=gInIx0UATyTrzoKywu1JOy37ANTiMfLc8qhP48RrFrxPdsOmHK9MQVXBD88tuk6ctUSouf2+o4QI6+WcxFc6/ZkZxaxJXT8p862Le8F7ss5eP7OdZm1kHMtSw2qr4KWBx7bgWRkI/H5/J3DwskS55YuX00d8LOpZhSg9J4+3FFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2r66g2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2r66g2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8927C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765661573;
	bh=V2ODbjE+Yk2YlyaZLK/x0hTfYN8p0JAGrsbuBvnAhHw=;
	h=To:Subject:From:Date:From;
	b=O2r66g2SzPdCxw1scA5Q0I+aDHmO7rsEzaa2bx7l3AC68VTjHmBYwLPhCunruOYBh
	 hGlbeZx0Tlp9u06im+yvz5nL8DEgISvRdalbn4IxyXBv4M4j4d96Ns/M/XgVk0AGBe
	 yvwfL7Z0kpamUhyTSMEQnSxm9rtu68gPpk78kk3CquFsgaqbraxAp0nA2XfEe6zwk0
	 FaoEs7jqad4LOKlB20ZIgLTSe3fGH7rRZHjpOm8sssV+Q06WQyL8tGCptIkR+42E3n
	 6i0R1q+hwX5CMivrcI+b+T7PIebmYWpTT2d9yIUqzhczLJUcRo6VniRxH+XJTDt9X1
	 ruOGnZqHJ82Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE6D5B16B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566157358.2259.17832244109762585266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30736fbfe14f81748f499135cbf9cbfcac6c0637eeadfc4c373bc5879df248f2
Date: Sat, 13 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765661573
