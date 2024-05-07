Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D41DFCB
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715040143; cv=none; b=n5MniqAhhQVAYJ8GvWIDfDwfaRnhuV7j8ApNGdZjoeMiISIr82BRDbQLNi5b4zg8Xi3kDod1aKYxdNMa8AyTnoFLF/HScsoG+KNTMpERmkiB0CzFMhxCWA+o1ThhakcnLlem1Ad2IAYfhIGXmjWAa5ycDoQVfPSXjlYequqUk08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715040143; c=relaxed/simple;
	bh=ir/yeaUZU4BoEB9aiBoA3TTRdR2HxLwwr3haanBbRRE=;
	h=To:Subject:From:Message-Id:Date; b=leIipbzKJD5puuZc4rlnVrVnshKXcEOgIGyiRmrCazECRPFU63IyVb5sklZ25eAm7BChIS7X/FT4pS+DSosZz6Oel1S3nejabcooQEc7ofjtglpaIFFNaPK5urCG+shKBX8NtlKBXF0HFRiIy8jbhltYXgKCYqBxcSj98C8KCM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BANWSQSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BANWSQSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D732AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715040142;
	bh=ir/yeaUZU4BoEB9aiBoA3TTRdR2HxLwwr3haanBbRRE=;
	h=To:Subject:From:Date:From;
	b=BANWSQSgZ71JC3m41pTMhVBN0Ba8Z6I2XxIyHhF0vTwlFRh8nGAx0pX4qNJXUxpI9
	 +Sa16b6nEoNJX0JB1ZWbJ+yQjilfRw4Jp8H8NJcBYIzKWFsrzKb2Cl0U+d8Kwrz2i0
	 IRzOYUp7XJKndH3Y6Fx83j4Sdpyro8tOy8Iz/LDoxW8AjXlFnymoIvwZz+B4C5XvzN
	 /yXx7mp5OKAuGPFittAUmwfdmiFIkMx/njtPsDsfBlqAFZf33Z46aPtjXFuPmj6ij6
	 aVeCmN9ZefwASkv0FWDoKXL0bieJtZ/uFrxYXGcbNdeVE+uOReM8Q7f5p1jxsi0iOX
	 DF1AUL8ZGvI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDF1C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504014276.9431.9464917317422720718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909f3229c41e16efdb7e1e0eb6e427578fc2541dd3fe38f5db4753d656ff8312
Date: Tue, 07 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715040142
