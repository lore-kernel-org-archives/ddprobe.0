Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5EC2DB788
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789311034; cv=none; b=T7CkLhI55OX1gbOY4pmqWDSIiTqdTzVCmKbr7+4lArC0V5IT174Wb945aAkK26Rto3jdyxU93rBd1HuaRsiOd2xXW3fhIvAPmDn3xhJ0is5s1S+q6njMKfQS488yBWZDYxbJgd9Qa4SpgQzX48nm41VB+mk5R6AEKO7zIUteBbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789311034; c=relaxed/simple;
	bh=nYXLZ1I87QnqjjDsCGJsxDeKo2yI1EybkkA0HgSSMyM=;
	h=To:Subject:From:Message-Id:Date; b=HqixRhjt+w8Up+qSbDXzerj+0JavAVh3klT33Htz3FFQ84/pVj80U43QGJNRj6tDFe3TA9Gokx9qu6QRgxh/gupoXH7wKEZiYfQEgj+aIeHHk6NdBQGxLAx5eG6BNLCTWGLg6EAd3p13UqLlviuwLAkQomcKYeFanDJ08usLnTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLwYVPJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLwYVPJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADCFC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789311033;
	bh=nYXLZ1I87QnqjjDsCGJsxDeKo2yI1EybkkA0HgSSMyM=;
	h=To:Subject:From:Date:From;
	b=nLwYVPJ+d2EMHLoP1oCULJ6wdb5G0fOj77PnfheXJd4GGB5PQNNTuVAtqo01YR5by
	 tbW7L8NDL8e7hmp/v2wU5DTRko8E4iDHM1ldqe3eBLXEZ6cQWLYbY3q/JvWlGsWFqa
	 W+iSRTAEDtlJ0F4AzPJ1AlGX4wL0KDqNWVqtmKECuGGRvJm01kcY3vslN5XmW0P4iJ
	 ABU0c3g/YDPZLu0BqeH4tku4L2fbNdPWq0YY1f8YCpeI6Pe/z2DMgPEJ3rYduxEIsI
	 S84T4Ddmi4sf+hvA8t33GrBQnq702FJMvv0zZKrqdfv4gKTmMZ8HqPB6YWrvopvFj7
	 MpsmVZq6sopyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B37C88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931103368.13731.13930535000391058635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eede03634462d069d92d739e9450907a5d14f75f50fa0bde338d3ab2ea5f978c
Date: Sun, 13 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789311033
