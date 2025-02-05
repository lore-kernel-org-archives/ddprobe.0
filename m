Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401B922A4DF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738749354; cv=none; b=XkSzhoAqSCKCu5gwjlK36XphoVWwNN6Is84B4J3SPgBRppVvm2fbxK8BeWQ6aLG/5bIYYXIH+h8UKqo2wqUAMXEDnlvhlmLEZ26rrODSW8Qr/isZx0oN5sLs9xMmklbZvBLkatCK3+2ZYWD0dXNq95paeg7f9hyaPww/K4vODpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738749354; c=relaxed/simple;
	bh=wibyU482Fqlg312i0TaMHUFQcsQsAAzjelhDGE2p2MQ=;
	h=To:Subject:From:Message-Id:Date; b=sPylAftRlaUF6ANO6kMKl+y++oaOdVFgtundUyEBvUQuLtw97G0aK0GiyLfbmb4Pgjc0VH+r+p5mXuqJtysegUYMDzria2XUw37Oc77FxmNA6mDGh5DH/noZ2ZfG8QsVKK2Plvlh5IwUeBlAvNncjDnio5HOHNacZKoCXFHIev0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSkilYVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSkilYVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C62C4CEE6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738749353;
	bh=wibyU482Fqlg312i0TaMHUFQcsQsAAzjelhDGE2p2MQ=;
	h=To:Subject:From:Date:From;
	b=bSkilYVmPJx6PzX05M2AyMRhUh9nCt3q2N/D/kQXU32XBczUwNQ6hLrvdzHYhve4L
	 kr3/xAbYTY7wbFyFBhBr9+cVRoCb5kuK8lwZkgj3dVE1TqzlmNFUIvsvdxw3mtjplt
	 YZDprcutkmUWWLZQDh2VbMyyHAS+z0eeZ2rGArUFz18oMCiIIQdxeMe4u8ccBR+Iir
	 LW71TsHf30lC0Fttf/zLEvW7TSVtexy2l6Y4fggRf7FmZisH8NpRQWzgWwNdvVPgq+
	 eEuHwFCOBRxBPWyc4iyYywrlvP/qNFJTgjboUfSZtWWIJRo6NIJFjS5uu7Pi4EwdqR
	 7HzJpnRrYtlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EB8C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874935365.22213.8587850328338847938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1f480c9dab294d311daa6ea3a425311bd87d0beca040379692deee3c94c059
Date: Wed, 05 Feb 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738749353
