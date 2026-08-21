Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551453B0594
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787298034; cv=none; b=p2/MNeyW1mXTkz5QC4xO/h8nx+LqNkzdrr4AFo7l2RFYocpyyhhdvbwuLv53hEwwrOEBqA+pVPHNcEK3xAxed1z8V7AlXdsYD733fq+g/6vg97TU3d/o6q3ZdCqwA0Jplm82cawG0UzJ3TZiPFGK4bsYP6DKSh6WiTfRAo8nhzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787298034; c=relaxed/simple;
	bh=tgka1dALSqIx6Kc7vlgrdeFFV2d6aPNzi3mRrIZ3VoQ=;
	h=To:Subject:From:Message-Id:Date; b=odWZWa/MdVCUImqQ2z6kiutmGA+5OK23CDqvT9Z0SZ0fSY3Dgmrq36ESqIaLo5QyQ5h6vV7hKyYde33OpeixPvvCHynszxYsS9aLJ6YjFNkAO/FP8KeFxvMXREVgrwVY01bVOUTROsHjYssFzBnwEimBvhpNpoJ0AeDJXPVbYfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvTa0U5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvTa0U5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A64C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787298033;
	bh=tgka1dALSqIx6Kc7vlgrdeFFV2d6aPNzi3mRrIZ3VoQ=;
	h=To:Subject:From:Date:From;
	b=tvTa0U5n8OfRlii9HSKr5SmTT1+0MTy0mdOhTvSztrIWOizockAvUO6GYnR+kIC/m
	 HzAiUny08yLsdrzCPopvdyxtvdGuAW9DqSWe9hak04Y6cRdHDHE+ZlE4mHgYEQaAot
	 9e1eg6OkIvdM+0eWzRcwvungsmrRKv13AZ/Eb1gR1njQKhX9yLrV8PHnGOClwnhRR2
	 rjApalB5uMPnrGYZM8g7AfvKZLNJfmZ5/dyEDD+8900WoQrfUIAOraGJqCgj1xpfXA
	 ZnSKQZi+nGkUbIxYWGfv2Ihma7JstiLFsUav+VqFlTtpGCglwXG0AmvQZCzdoTNIlc
	 Eh6AURke/eeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE37C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729803369.23119.5897544447515638961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1c57b8014ad599b917862c782850c3d46e719e32547cb2ed7b536d5b8b44d3
Date: Fri, 21 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787298033
