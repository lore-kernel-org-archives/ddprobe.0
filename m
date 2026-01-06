Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5716A30CDAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767737634; cv=none; b=UThcK9Ta6ryez3M5rFxnLIHLaIjhQc4QZnzHcG3Y5PIr30FQVew59xivKfTzos+D7WuNcO+rbOXn5J02l7E1Xa8I5qa0yzxwA9RAo7pkHXM6J6AFGSTGgSez5VUknCPa4UAF9cj0j6WC9MFnvGwhb1+QEXkQL+q34WaHZbfZPeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767737634; c=relaxed/simple;
	bh=YG9zeotrQXmdWm9tfA1KWMP1vFiNkqrT7eXY+jJkS6k=;
	h=To:Subject:From:Message-Id:Date; b=ouLEdC4Hn9XDm7WJbGJ9RWCqT3Gx+knZuLnoQYRGWSpy67bknJH+FPUdOF9SHnWfCaU5XkTmKznwEkI1ymSBShJpU6uW6Z75eDkgXl9O42Lqom57gsX5HfSC+XPl2rRxymgFfum+8FVphCtsxBG8UJTnN4LV+RYKhqL0byusDzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SL3ees5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SL3ees5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CBC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767737633;
	bh=YG9zeotrQXmdWm9tfA1KWMP1vFiNkqrT7eXY+jJkS6k=;
	h=To:Subject:From:Date:From;
	b=SL3ees5D5qgyFMDklFiz1tXJj2ay70qLjksH0q9sE0tiNphxhE5/sIo6eVOXvl/si
	 u8053G5VMx9zFq5655cWl5eQuADKmxiDNbhQQC+b9Fl5OatX+ntVnpAtEh0FVFVVMZ
	 jFJa6wgcU9CaoYIlCgNkrBNC8KdthRtC8ZXy2ta4N+Xsk88CyvpnhLD1XctQVfqTdh
	 i8wtfP8uAUra2CRybuNGlKgREF8pM2/7fPRCYFY5jDV2+s8UKBEAXev48gMyBn1L3l
	 08ZrI81BISUYIg9vE8ttoQczwbBr9GrpqZ2SYh4PbWACYQP/vbmpNojJlYtHMWo8Iy
	 uadsxbzv2w/4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FFCEFD17
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773763357.7331.11432095542817652029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475797f4a9fbf380484250a5810ef9c2f759067c9bfe8fb196679703756dc3a7
Date: Tue, 06 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767737633
