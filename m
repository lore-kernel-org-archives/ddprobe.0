Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177A46EC70
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791795034; cv=none; b=N3qEAO8keukfitYbAWYpAEt1swzhOuQB1SdlaNQHQAVtJ6er62gmx2iZjA9Yl3FN3upXxlLJ04XZGlZpvReo6sqiiscx2j/gWZ9Qb1DmhgmGTkkhVIn342R4HTQPk0ezQSpg1Dl5aqElKY5d8rZQai0a4LAtBUqFyEhPhrLFi7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791795034; c=relaxed/simple;
	bh=gers7wk0CEq2lplXyEyXPtjD9f/CEBxmxiySpGyJAp4=;
	h=To:Subject:From:Message-Id:Date; b=XaQiTRQaqe/499vowCbWSyFg3kRDa6TEvgYXn1buXg70fRS1yoWzyaVrB+kn5cOIJ2pd0ToWGfFWYTZH3YKvYnwzww7caYtH9x580htQdzKuGawDbo+FnPxToAc2PRGtYKeIRp8JrjqG2SxVFl+WROFI65n4Hveo4PUf3bTMVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtyGa64X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtyGa64X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC95DC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791795033;
	bh=gers7wk0CEq2lplXyEyXPtjD9f/CEBxmxiySpGyJAp4=;
	h=To:Subject:From:Date:From;
	b=NtyGa64XYhNxFxc41DaMRJam6paVP9PKhoAZivKwAyXMFOIRyRGuQlesdL61V0CL5
	 gt0rimY97hdpP2ghaBvrtTmos8fX4DbtQ9chrDWYfLFnop0tkgTSswBa0pbEfPwRIR
	 FDzLIykoNzHX6ho56yXwgQIc9oH1mMJoH+vu5uXD6svArrKEVjNv8RBZKhLBw0LVzu
	 yrtJLZNLLqy06VzVblkCR8w0P8mxo/VdfgSZam7vwcE3Na1sJPwgnp0aQ7Y0QgxgtE
	 9F0klrzScHpq3lsk0VGeiZhwAUqT6a1wryQbKdtGfTVUz7+jw7EwaMrL5limwVfADF
	 X/IB3lKtZ0uVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA2CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179503368.3250.9828759891863149739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c747eb4e096adcb87d1839d47356503351e70f84e74c3cabac39a0728d6869fe
Date: Mon, 12 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791795033
