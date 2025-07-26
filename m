Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B2F1FC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753525794; cv=none; b=nK8ed93OMsOClkk5b6wqOX4FHHgozR11i1aQUnP9MOyYFEcze0nQ1bCChrm4nWVd80FYIc6qlKRSZNV/3XES6uIKgJM8Nw7iZbHjmeyofH/3cmuuMNZn01SV5yZNxpqNONVYfJAu3c6C0l5saiZbW00rF7cAm/GKi8JmJu5eUS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753525794; c=relaxed/simple;
	bh=ZRWDfZRMU2R+QngQO7QEBoYh5KKfrk6YxDshN3dpfGY=;
	h=To:Subject:From:Message-Id:Date; b=LTo5r66j5Sb5QUZfes8LnR8CVL+yTK0WL6uvtRKzrvs3v3VuXq6zfN8ZmsrsUg7h3V7rjuMQBMgMwSFX38e3kiRJmm7huwc7Z9KzEidmFK/vjfLx1bYlmMQtRWs0QjftpKAQeHVOW8IFbpWj1qytzxN4GOst4rymfPdw31N2YQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpH6sk6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpH6sk6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A391AC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753525793;
	bh=ZRWDfZRMU2R+QngQO7QEBoYh5KKfrk6YxDshN3dpfGY=;
	h=To:Subject:From:Date:From;
	b=IpH6sk6IAlE3UkyK75E3oGckOeoGvDcmBPNK07eFghUXoFWGeUc0uUVO3gjaA/oQE
	 Z1iyZMVXpr0avZUJqwOEYaniQAYZczXopeDkCGq7080cGHBQS2ymor5YdRnVtUC0Md
	 8IHgssQOSbI4nTCyuy3ySbaalSene3XQaVK9wFu8N9Czhe73wA500wMVCFljtoeD6d
	 Xj6KPKAilanryDRnWAU/FC1E2KKNzmBENoCjDJagGXJOX5sMzBWifk9avmwOwcy0J5
	 Io93Fce1Ut9fAyXtNc7r8l0D6JBk9GdkyCXTEZjL5ZWn95bJvXB1j/B+WkYnRm0xk1
	 KMuTFib4aU7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D8C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352579358.13424.5047604560790347845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b6cde2ecf917e98dcb332527562baa28dd6d30dc5522beb2b7192bd44cbdc2
Date: Sat, 26 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753525793
