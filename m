Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2D53DD533
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776928054; cv=none; b=Z7LyzW3KAftjvOrbJRwyJYersFapgmOOEkQRMtraT/yIDzGUAHB+UgW1Eydb/1JbFQWK7y01PtEUokSSiR5nAyRkgykbTVjOy49gU4l5mmhhC9DUZHHqrbRyk4rEC3NNLGUs0L8ojxRHNquYqIucG7DdFbTiTsK5UvZiYNA6fSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776928054; c=relaxed/simple;
	bh=ppf8bs8bIANXsSG6geFvyrf4bZ5ClkyhOdWvJ7hc2ec=;
	h=To:Subject:From:Message-Id:Date; b=BIVIJIp2kEW8y7sVMMQCHh3shlP/2AvtFKQZtDnx4ZVIoxyrv7eyqIJVSQ811VRPFbGPuxL6kBzMoSYRpYCmqE444iZUjyjI9KDd9XtSwpQeKhXXqA2pnGXE2og3Al1ktQAQZxgMyARGlWyZGDsuCiUzYLgKS6xUiBx1WRSI4tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uohgiuil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uohgiuil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAEAC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776928053;
	bh=ppf8bs8bIANXsSG6geFvyrf4bZ5ClkyhOdWvJ7hc2ec=;
	h=To:Subject:From:Date:From;
	b=Uohgiuil1F6bLda5yaeyR34kt5EPQniDd9c1/DuoVRObu3k104c7L7E1QmPpXXFTM
	 Brww2NJ0e6ntjx0/Ej6+istj5EpqQrT8rOr0J6V0WXzXHO60ahDQydgQLlFKkjul98
	 CLJa5m1cNnx7Z/v2JWoAEHfOb1DrNORSDm2rNUibkTwMoSeeCu6o6434N/pFtcnzEy
	 VlrHqaWIXWocHBR7FCf2JZ4idpnVXmAU9I3/yMqw9pZlvGdRa4fUGgAq7U/DYqJoLk
	 WvZS/FJWryNUag+mG5NpjeYqElLm+QWVo/+cz1Esdqsc8W5O7Kn5JAWhZtPmP151kq
	 U2UcQhmCLtsIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E8F94CBE
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692805369.822.8715671026554540068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b84c4990bf40e77f5492e880faf2faf2b0d6b5a7079b7ffe37e486d8e0b0b1
Date: Thu, 23 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776928053
