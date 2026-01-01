Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125EA2BE62E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258234; cv=none; b=csfR0WLhmWps8HN90ROsyOM5TpGxU5j9I71FNIo832aiopUo9q8ZBTIsviwoFPHLZBQRSaCcYaiqUWoRzlmP6BbBR+osGjqrFhj+UPGxnyMnH2ZgWTtLvFOMgh5wg9A+J8QgXQFn0G7QT/Hj71H+rNGrbtsiqKQm1a/qscufgZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258234; c=relaxed/simple;
	bh=5j91bhXbhmDkTPfZeIIFWgYHboTLESEaTs/hU9Loy28=;
	h=To:Subject:From:Message-Id:Date; b=njpaM9FNv3OjrzAQQtYWyu+f1qSNn5OIr1o5j4YUNfWQjFKkRDc0qVOs44O+3lE7dCvFXWqVTEUGJ1+FXPokRchqPKGbTrWFYntchZcqSUvqYXVeddWOwjNZo+KUtM7RFUPC+mONqcazB6Axumw4hvdgdMMenV67U3NaFXfTqE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCHkbhwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCHkbhwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE0C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767258233;
	bh=5j91bhXbhmDkTPfZeIIFWgYHboTLESEaTs/hU9Loy28=;
	h=To:Subject:From:Date:From;
	b=FCHkbhwh0YuL17epGI9remceflLlOYVZXyej7mCIc+HYWnIKhHuEBNtVN3iKRVrSE
	 7G6fopvjS4/bdZ65H+1I/DKNSgfYBsJQKputVLBwb8qswGEi7rj2HxOkItkGMRXbxA
	 Ne3YcjCiVXahRR6TllVR+bNxXkAATtpXtF2pAe5B5UhaPTQT3VocXZs7l5Wf0WYAIW
	 OTVvNk4WDEs92dwstcDsgc38se8cBV3piBq3WOzPBytub/ZG9HGqjvoJ2idxNhY5la
	 UALXijUd1dMMbhRexS0FuCDNcEoGa7wvcDABRGYmSVvgxbvIjKTiSQKOLK6js97WVm
	 vgZThtn5GqJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76DEEB56D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725823357.715.13608908507922844875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2595b68dc9984285b861e944e5fec5f6200aa8cddfd2114c383d2a2092c9e54d
Date: Thu, 01 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767258233
