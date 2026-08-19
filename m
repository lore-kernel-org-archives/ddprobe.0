Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D25E33DEF7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787139034; cv=none; b=HKRjWZj5J+ElowcGMLItcAkIBuE6jOtM/Aq2x81/b1vVpcpsasuN4wbX+jiagkRlvPe5eqTA9TqzYvBxK0PSIBYTMZkPV1U7vQQvoEk8oYS3WelLFn5aqgBfctiVzBCjz4ed48zge4IN9GoHC+A5dtaQBx4Gt+u8TUjPP9qTY+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787139034; c=relaxed/simple;
	bh=H+NSxJVhk2BigySR+vRbPIcVlbj2mpTydQblSEyTrow=;
	h=To:Subject:From:Message-Id:Date; b=Y8AhbexAOunsw6D+TbB2ubdLRbt3kKdDfPrLdqZk+1R44IB6y54Yryj9/pv3SyJkWHvuUO1u/iGBDlOOo6KADkRcMw6nBoAb17qxiDl29Z//Nngkxy0+wI6NCfOZrE5XtYf2zEY6XyXDCH6GX57f4nhjW3T8CyclUkQgp6A9HGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOATgZU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOATgZU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDDEC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787139033;
	bh=H+NSxJVhk2BigySR+vRbPIcVlbj2mpTydQblSEyTrow=;
	h=To:Subject:From:Date:From;
	b=EOATgZU6fC80dGA3rh+FpewtIJNb4L+TgGXjZl6m8lUDaRn4YrCT5KIGnU67ypxNC
	 OsQarGIy1156UEDs0AgbMFZ+qzsH2TSbLlmhUyjX10kG+djyDh0waWrty6DPka0WQv
	 1EG2Gc973f/xOU8whY+cHeLCOuquCCIBvyhF2c/fGKrezPwbtFKVoJRjAdVKCWgHKz
	 2LMDwpHMp/x9iF7YVRTPGUrgd5EVMHRdzaWpieuv1ARCaFXQG7t9fk0L2pdAFWsvqp
	 OyJR0fuSXW+Rbup4l7AxqyrN6cpOJnUmUOf/l6oEPdVBjvJIOmvaLF0PO7eQDHZYuK
	 hiWkC3PP+hNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA83C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713903368.24990.11992289188506551061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4cc9f19a61a0990bf4d1f0367e9744e135c477fbdb9cbb363412735d701678
Date: Wed, 19 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787139033
