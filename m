Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233A35187FF
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791909634; cv=none; b=V5Ed4u2fF5/XueBABXhLF2SMzAdrkwBxdxJm0Ml3ueGQgSexUFcHi4QIJ1bGTMnAjlRmZXfjvtrnp27S6JpS4T6CiGEOyl5RtXtDQXhsynDmc7o+E8Gv9NjA4HeFYBwaS8tjFFofEzm8NG3FK9O5MXM1r5TBDD5r46dEhEpZtz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791909634; c=relaxed/simple;
	bh=gK4tF7PnesqOKdHUsWjG/HunWOJwNVax5T68HmDvqzE=;
	h=To:Subject:From:Message-Id:Date; b=gj/NGWRUSsRjErOz5nKeNERZ9BhMJ84DsdNFHcK6S0fqSUFv3czV3jrMo+lXcq30cpujB/iFLKEim5T/UXeNOYdj2QqbX/6UYAlHZwy9HHFGTvRlzbxUINbaOe5yxuNeFwuvgKLlTW2ch/W9rOwQwf1MZ5fUE/K4oG/4fUZbCM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgpH4U7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgpH4U7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16CDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791909633;
	bh=gK4tF7PnesqOKdHUsWjG/HunWOJwNVax5T68HmDvqzE=;
	h=To:Subject:From:Date:From;
	b=SgpH4U7+W5lWBOFdVJkcy6fWOryw4nEIv1lW60OmXRDYffaN1Xb1QKuW9L9g8752/
	 RUe2C+l8qwp/BAD1I9HuNJ631facIngymm3L+jsGqG/ShuFcWdeXYkGnEvOie+R2Cn
	 tRewKY4s0JIKfZPS/w6NreOvesbkq5QNFHm/AdzIUjM6pxYQRUobl17/Ui/VSllec/
	 hRGEGbzwlxBrgsBMSfUz1xUUuxysv8kezOdZtiIO5rOOIOTnhFHS8vsYu72qxhGNiO
	 Lg6FkWogTrc4FJEgi2a8fH4jUJJnSbztTtTbD/2jJo5X/PLefzfbW3kanViZwR637R
	 BSRugGOGtgJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD9FCC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190963370.24484.13638724890535488962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c42bec0c77087de99978bd11e3069c6b6c9951d5acf3e5b174dc40eaa392bce
Date: Tue, 13 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791909633
