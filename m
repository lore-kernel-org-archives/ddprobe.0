Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F14628CF42
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764255174; cv=none; b=JnLNfJLbCjFziRJnhdB7vIYBhkPteZ15n6RKQaOsK6ydg95PDmL8Nobs2PE4EQMlaa3JVrHMhkNmsWAj7+V75fmigq9/52QjjJmP74NmRCws1OT4i5JGaX5pB0nfzEW/WxASzXETDB4u/aoVRnyarsFgYWumuMb0fQukG9XSDVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764255174; c=relaxed/simple;
	bh=DT7Z962GyaciNjFNDm3Si9jVh3c1vWC6wnlbrAKbZY8=;
	h=To:Subject:From:Message-Id:Date; b=EWmcDFdR9L2oB5//Ey0Uiy3bQuNE76pxZOltnjGkxoM1kzOOm9VYDMzMTyNQUVnPTq3tCl4lLb+7Vc9JgdGjF7I+ec+bhBDfxMvTnT3EgyK7OlPxhCG5wwvl08S4UxjjQ57lyfev9bjXPRwYKojlt9e5bV1Gc892zb3rsoT/BE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcaZqNhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcaZqNhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9BDC116C6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764255173;
	bh=DT7Z962GyaciNjFNDm3Si9jVh3c1vWC6wnlbrAKbZY8=;
	h=To:Subject:From:Date:From;
	b=GcaZqNhJuLnWa/JvRmn572xc8SVi9FtV38C8GqVf/iLZtDsHTR2uLG6QkJ+TYYr4B
	 m37W1u/6hK8CO6/swiRuqHG1hWfaXohx+MS++y5Ou0NIxEz748ES8lIZgJ+PMzcAan
	 LMj2b/bOK9fi28Kj9D8t4VjrxJ/dCYMu5BUx8LaicmTm0qzo6bKHY7u9xHJANRSpoK
	 b/+riC6yi70h7ieBWxdwGJ6PlWQeMwHMtk2EVlhH6khyjX6pVqzrEVxK2T4oCyeTSc
	 VQdBDxbyBcjJQntNR598w1EEFOFq0r4p9AxQWZa3kB3L/aarv9pKYxAoQc7zCIembJ
	 sJmjjajXaD+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE1CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425517362.27088.401814754221372084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf14a0b661ddadab846d4c41db4f81b47f0f583b0cd7cdcd63301c482cb76df
Date: Thu, 27 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764255173
