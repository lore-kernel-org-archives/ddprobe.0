Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCA314A79
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769043834; cv=none; b=u1fEL8D1sPX+EoipLgUOwgCR5HF/fDHBZiraVPeETNwjNuQqSXPtliN/zLEvU7RO1Q99aO+Ub9S2sEepr+xER+JyPl822Nta/Jr4zMT5g4ryfa8eX/uBvyNw534ZF5Dy48LViLrQJUJUA6aGdGCqDsVP8hN4lIsbLi2VaCj2aek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769043834; c=relaxed/simple;
	bh=BGzZUsmKU/x7tQXQCjHC+na6DfJbzQMSpntT4I9QaW4=;
	h=To:Subject:From:Message-Id:Date; b=tX3L1mowPDNrdXIppnEloiEnAeYqAgu2DkvPnWqjWF/30b+PaYN1gHJPtNgIedrvDjrjxIpex9fwplnjYBPJ05q2vzNvjF9/CsvZ8dJn9AsRb4bDIDJ1fSJXcz0hRGhHNiT+u7eUhl448tverEmzwpKrszw5JdvVKEGd6domJaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1AwaTG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1AwaTG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57E1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769043833;
	bh=BGzZUsmKU/x7tQXQCjHC+na6DfJbzQMSpntT4I9QaW4=;
	h=To:Subject:From:Date:From;
	b=r1AwaTG8Z2wyNCvkBHSFNwpgBmqQoHEY3mvrvgTPkH3YzwhfrBZgkknE0ub9HbHGV
	 TqOn2Brl6TN1rj0efT+SDycZNXbRa1py8586VYNwKAbtSRaOD9AEKpkYsyD2PGxw6F
	 /0GP5y7knp/et/Orr2cxQOHHDCcbEv4Asb0Z1XuwB0TGfk+qjtT1NSa2Kg77oYq9qq
	 OTa2AkoTn9ChP389BXsAJOPpvIUSIcEM2ty2pCkPp5wkqcReApExfspDBHv8sfXiJw
	 fUrSgh7AON1YsX/jQuw/ihRYDkoO3PfQxjuZBCM7Zfz4gQPb/bA6LTt5ZjXWXhe8CC
	 33vzgKUi6PcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8BC44508
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904383358.13198.4339831278529080784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8351bb8fa82de79fe5b891e7ba1663d83795bac580a7a1dd7bb91b5fa4ffd6d
Date: Thu, 22 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769043833
