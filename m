Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADEBBE5E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639134; cv=none; b=pU3qjeaL6p7O4s4xLTd1TqETXz1A6/61KEdVjSOIH8M/akHRlO0sWHODHc8l3gQMwUzTqzbLq4JvNdWb6mErwSwJJWOiSGSY7j+0VPjtN3DS8SRLkWRLCe2TYntQpllAv/0CbwLeBlYO4LYB5kA/KJ5PTwPm8qsFG9KHRJwHQVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639134; c=relaxed/simple;
	bh=c6d1gOPBSRcLx+vLKzG+D2yBWU41jK5SkeTxX+aho8I=;
	h=To:Subject:From:Message-Id:Date; b=VQs2Fgof3HHO0z/y52YnyGph82+Eb3GBb5+hlFy71HQYm+y1p0c8v4hNQqlk1TGuH6D1XwzdTE44ccDo4PBub/dUGDJLNg4kk6oWvvJUtmR+niojDrTTDSoIe3dAiBS4wyqPYgI5nS9s27SPKMbhL2W82TLcz5hCZR9dLK2JlEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzlGb6v/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzlGb6v/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE702C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639133;
	bh=c6d1gOPBSRcLx+vLKzG+D2yBWU41jK5SkeTxX+aho8I=;
	h=To:Subject:From:Date:From;
	b=OzlGb6v/4RMyhKRJJkIzF7lJdHZ2+domZXw8vzVgB2CJRBCDk4nDvcT4shlKMoPHd
	 vj5kOe/rTJoV7tgev9to4PHjZJW9XIvks+/lmT7Li7nuuMtufv+cxeA0cZEecDcmvt
	 rQudykTNyooypK4U2XDNXz5T4N6J/Jzxg0PBS+6WPQErLFjX6IB8Uz41MyAUzbMRiX
	 Z9cC1i2c5xCkZCaCnxL2ez01Jogl5VcFtDvBjsYq1t8EQehJ6p/r+p1l/ecUJcqQVn
	 OQPBfxzgOGGuhy9gvXXELP9mKGu144CyFTbShcc9YRWo8E0s6OkQ53AzwWlpVd8Pxv
	 HwG48robv/Pdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCE5FD5F99
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563913370.12314.220682022363032968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0befe1bcb439a9eddcc20c668bbb33894599c91fa6e88ac8a6c0fc4e4dc8ac
Date: Wed, 08 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775639133
