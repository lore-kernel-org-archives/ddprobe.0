Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCEF29CB47
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752703194; cv=none; b=U0QwsQlVRQTFotQMDVDGz3lhvtwJvkA38gsUpxVfKrNFd8hgryeIXGFwvU+nxDKK+WU9gQqVgCTRv0LPgPY2IwyaGhCGHR2wPyD0Uc2GDW+cOjZB1OqREc2fHhO6YrEk3BO99tcwZ7S98SKvF46/J8EJrhTrUONnlRFY0pAGyUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752703194; c=relaxed/simple;
	bh=TVBa8XKuS5hsWv21WQOfePy70xprzX7VACBjKjXbCdA=;
	h=To:Subject:From:Message-Id:Date; b=gSpJcxGZP/VxSly7AHZAKkXCW4Zcroekly10WVz1g4z+MNvVKpK1IcGJjXEPGDQShN+BON9CFnwXSq+Jix7wCBL+X9E1tQ/X+4f6O6W8IrhC6M22JuCULyB5OHQhVtswm0x8iKRXeGFrHDJ1Fje/o0QWR7rjpwatQ48+EcZVcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC5ahArZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC5ahArZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752703193;
	bh=TVBa8XKuS5hsWv21WQOfePy70xprzX7VACBjKjXbCdA=;
	h=To:Subject:From:Date:From;
	b=KC5ahArZnNQs5aiiVpDTHDdmNltJNK0O9dV9sqdt4KWgcW1Qs9jnvLg0ssO345HDA
	 7BIcJC68BFxeeP6z5sn5e0yaB9fFBzb7h7gXohy0F4/9zTbASr64t+vYZT3A0W6XYu
	 y8Ge6r/QXjqUGwALNZ/8+z921GubFZPYOuhgli+3mPijg3jtyJtmqMhbdX/y5cdraF
	 rcUmIliiyYBIW0ikrbMrsi4xeFqHXuX86oZoFljaumPxJtu6oBFNxl3+ZKZr2joJH6
	 Mdq0vvQa5lmiQOxtT9OOcOmAnp+hU9C3ynmYGezksSnv/LEs56PGxweXt2aoLtpAfg
	 QEtJPNtGac79A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE5C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270319357.25892.3107457191794585737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087d5a897dd27c4382d47e433c18ddcb0f51bdf45e275c9ac2e37521d8471722
Date: Wed, 16 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752703193
