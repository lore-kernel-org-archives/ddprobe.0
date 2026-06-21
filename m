Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA22E573
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782026794; cv=none; b=QxaWLfe1mOCP061YPBqYIt2G3NDmXvxnNh94q081yvYfedaqAMMFjMxlI3RIGnTYM//3Lu3MwZmPHMvwutEDjurikWFJy8dT9urrbV0JP/BI8PvvvCjMLBB05WofRPNMu6mVhSm6Z8PDf6gp1lXMlbiNLNYNrGUw1DYNMjKxUV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782026794; c=relaxed/simple;
	bh=UdjySUgvcMSwJZYdycvcEcij37l3flEGEf60yJYWrtE=;
	h=To:Subject:From:Message-Id:Date; b=V9/ZQ9jcKa4/LD2EuccMwVtpIBmiJSVVUzZlGgasxu6XqbjJbX8Tv+f71sixfsGR9njxa+RzpHDGxX2gIhANb3ZSiOUsOu0NeDsnOAnhIuHtztBGdgyM/F1fW2/o6Rcc5ZCf774vy+VeKoQvr03Toqn0+yiJ5+of5bjaMUXDHJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ba+GwgG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ba+GwgG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B9CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782026793;
	bh=UdjySUgvcMSwJZYdycvcEcij37l3flEGEf60yJYWrtE=;
	h=To:Subject:From:Date:From;
	b=ba+GwgG6UuA4BUSgx3beHkCm4h7zUaAMHuwKJ4eQUu6BPAGHWOHrT/M6JT/t1/N6I
	 BcsQvZLnheOeuT/OzWqwLxXBaITmE07lmZgyLR0+hHWb/4ozMJC1d4q4uO+esoAOic
	 8QbXwiNbmGL1qm0ECoNr0pKIu/bjvwxs7FOhE5JBoD8r5DXT6FTRC7DyU7scm4Dxqi
	 3frxUuyIz2Sm1Gul3tqFR/SGz+alZMhP/b/6HJsiJ5ipNtbQS5dvlP0mN77MKWyeMN
	 U56i28nvD8Tfn01I+JsPf3EFAhU9VwRMEJsa5ptgxYdXSuHgzhlkuhhqy3x+TllD3K
	 DC3Y8XC8evqyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39CCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202679369.23765.13555983348930293772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5d347e5a094c89b94c5a60a65811bcaab4c2866deb71e24bc5422d8764faef
Date: Sun, 21 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782026793
