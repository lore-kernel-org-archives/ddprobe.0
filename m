Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211AD26F2B8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765034574; cv=none; b=tyVtLXJDqla24XG8mXXszbiYY7bp7ir5aFjzBbicnYi+FZLXCKTK9yZo9YMN4jaq++e0IoagZgE88GimcLZTEl99fnIVpDC9SgW8rFSIqmAiBbOVk28UcZ43QmHpv3JtsfeXRkSBHNRgZIMD8IEXUVx3J2N5jmsBcL3naWFWqaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765034574; c=relaxed/simple;
	bh=hj51O4yJMGnw1a6Y+HvxRDZxuogksWz+2oHG20zYTQw=;
	h=To:Subject:From:Message-Id:Date; b=PXDZCHQXEjSFsixWf0aKb5ytVjy/5TE3gYzV8HUeEeB0+57c0XVrzI10RtrRYi2N1FOom3gOJG2Ykn00ZEu9KFVrdQOHvAN7Oj7ZQZ62N1VXuYAHO6NqZaBw+U0k5wnMIjBYTS73YXC2D6IgAzjsaYvHCeJyzFhSVnd72pQSBLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3EibL4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3EibL4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC66C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765034573;
	bh=hj51O4yJMGnw1a6Y+HvxRDZxuogksWz+2oHG20zYTQw=;
	h=To:Subject:From:Date:From;
	b=D3EibL4W8tX4P1IvwPjKKGsA2L+8V2d95qv2QfQh4Fk0Sxo+sSZXY6Dl5bYeF5ayf
	 xRdp/ohPRW8VskVbkL2ch7UZIj5mQXkBXapN8GCSitaaaufJNeSu5W62S//QHgLDdJ
	 uYw8FLaIFp4OAdKWa2KLZ0PGMa1MgKlX4MSiTDEwwXa0brUaEb8/qRSj8GYWMMPzBj
	 vJymy4BPxvjR5rQsmP/9tVs3DNnf7T6WZmsK02UmMqitCYzchih1APKz8z6C/i+bxe
	 WWfewj8A88qGi/vG23MuqsyX+yCjhD7T9GQ+1XiKHRFabefcsRXvQjmb8OrWkmlIFN
	 +OYN+iljPLkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A11D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503457359.28349.10678990600887169786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32588266ea13a6b4eeeeecf9c2621774fe56c9b2cdf9652cdb7b6fcf52d9c56a
Date: Sat, 06 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765034573
