Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283211799B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734746754; cv=none; b=IEmm8ntYRYlNN8GamZA4SfKvFTdLo0GFggSnJRygcXanBgDA/Bhw4IZBVtuzZIq67l1fdZARaROfe0FV9L4yvchwa1uq/pcQeBlqgwrZUvKNPbYOIwaGFr+NFBHDU6zQ6HVwp2ItpxR4hLU4UL/D1//TTHaDFBP3P9Er2QqKUYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734746754; c=relaxed/simple;
	bh=ABfW1Q72JIYpb3aiCEfVKjKpVk17HilyQ7FEWMTA8Ns=;
	h=To:Subject:From:Message-Id:Date; b=TCMwy3oMRrVkd2CaC51VxSccvL1T1tVLxjr04/Gu0yE6JjTFJM+TVE8xyVIo7c1O0c6kCKutDtusglZMnBpT8MHl7mi9YsuGmTyWa0iKvFnG5X/jvr/+ik1R+HF0Qz9jQLuCS2qfUGYpIvn0r0rdtI4Ou4kAJbTdUxmyhzEdSRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV+CICy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV+CICy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734746753;
	bh=ABfW1Q72JIYpb3aiCEfVKjKpVk17HilyQ7FEWMTA8Ns=;
	h=To:Subject:From:Date:From;
	b=GV+CICy/eYjou0ByW3G2xhFMZXn7/Oax/5nTmAF5lRZ0K3MRnDHdBoljZwMUaYD9w
	 MxhmiQa0ZctumDidlIf7hRyzOhDvE8CxlmNM3vib3KBcP6UwnOvPAc4x5NGDV02Hna
	 x8ORzXkqYbALagSgTJFKz0HLBbS3xUJN6br5L+eY5pswSPSWjJgQTWpyaMAQ77MHWN
	 CG4nZxaE124qacNKqqIKmKTLfs8rjR5CPJCaEtlc3hDnRZDaUeKADBDPzL2UYlYjtZ
	 Ku4cqaSi3BKSIh7tGI1zA2ghVZODtSRfX8gC/Kj17fJxBla0/Q9vtk2tzcQ1o5NM7r
	 ugUhfhV+jBn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4CE77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474675359.17712.11128566094928485959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22eef5f33a03aede0199f4d12eb23ec3ec00c4acbd988faf7c0fe898623760c0
Date: Sat, 21 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734746753
