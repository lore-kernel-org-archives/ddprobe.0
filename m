Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A3224A07C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771903494; cv=none; b=Ae0hE2X0N4z7UA0NTngzx1mDTBhlNrOk76z3cT52HcbdaNX3yRAEBbBtyh0HD90+5eQg17g2YVW12aSiWlSxmEe5Ezg5hFsi6ktL0AxWMvxD1HP9pwa9jgcRjRBlvYNkyVoH8eh86f3X+gVl9rv52BjaNsLCOiQgKa/CKOjMFfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771903494; c=relaxed/simple;
	bh=KdY1ebrOXt0ycmkeqBKA/wdFmR+9tkR3c9lcfFqopqE=;
	h=To:Subject:From:Message-Id:Date; b=lUuF/gfQxrd1vRZVh+bEFJTNEgFlp++VZ3bBSDRsFjDVYnQZcqHcPDzDO8X94hjBicEXVwuxkS/24wZbb7AZapDuqMWP5lFBwjrDgju6xeIu0dsoyHozhCaOjmIheqVErkmH6v69POdIRPwhg92BI8GGelya7jcI/iQ8HbN3nik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rF2/9mHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rF2/9mHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD190C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771903493;
	bh=KdY1ebrOXt0ycmkeqBKA/wdFmR+9tkR3c9lcfFqopqE=;
	h=To:Subject:From:Date:From;
	b=rF2/9mHh+X0Oegni1rOcaxM1Wfaec/LuCGJmzp9yaaalCV/hA5wcBIYYi2besJ02w
	 lxgk1Bk/Ji5DX0EXBR+JxjJHH7ptkGza68xiDxYrIqHTTBvieb46Fc9rxVtQFSRZZT
	 rD3C74cNyCzx7oQ/roSvsdipcYBOy+Ujk63q/S+WoiQksGgpgLkzaXODE/LiO2KZ8v
	 9kgNNpOWjHFQSfcPrJZSFA7gZigjJgjpVLtsVlDbvKA5VNyl4P3qaZDkzcBdL/KoS+
	 eht+dlKdnQ7hI/CAQYwmBrZIVtNgcbDZJY8QD/HoPuGYW3diNebJ3iMaCl94YfU+bw
	 cKET0hhDWoBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB5EFB7EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190349360.14221.3720799621436827926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c6d9f874cd98ccb0964066524739ee8f9aec871c8274746736da37159ad66
Date: Tue, 24 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771903493
