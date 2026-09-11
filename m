Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164FA390C95
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789150834; cv=none; b=YLO0JGvtR+k5Zf3OUtX55YUm8Rc46Ww6XFFH2R4lbvMi0jir/YeMOAHxt+y8dLdpVxMipAqVXyohAAaMvsvBOhhNU+QCBHcQP2ejXuTIDru0cTthL1SAwMy23QPgubqEVEMMeGFdFWD+DTSqhp76txtYcFeS6wAqLMJ8u3+s52s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789150834; c=relaxed/simple;
	bh=8XmW/aHKYttcSOiUIA9UWGkBsR11flwQT+LE0f+rtqs=;
	h=To:Subject:From:Message-Id:Date; b=MVb4KRZ5UGJBHKyoIY/+ptul0lx8EstmlSKHo08+3O0vX6rj058Gdl3aw57yMeDzTBnzXntNmoYdV3ujHT7g2Uy3jlg7PFfkjzaJyj7yuNIUxma7FYmhDIAsLU52lG7HtanBBcGOk0MGoExFLE296HHUfFFxc/rbWsAy1PbjegQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbxPeYZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbxPeYZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF68CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789150833;
	bh=8XmW/aHKYttcSOiUIA9UWGkBsR11flwQT+LE0f+rtqs=;
	h=To:Subject:From:Date:From;
	b=LbxPeYZr9uCX3cQeFooZcn0GSBj50YMCDHOZUN724zi6ZLsVhE/Ugw82+3xMrvGl7
	 Oap+oHr05CnRE2KxB7oG+wqTnibNvRp//lWnqhJl0JLVu9R+oKgHFq5RWx1a8/bBJa
	 6KyS+kI0LCoRzNccHUhhxbmGZcHs8qf0kqB6MyVyL+TguJUugAuDqh0sowPxN+PELz
	 WOgJODv8Js/Pz4DUXx3GvMJdxrbamlVm5V+SU4mrzDSYb+hYloiLcZ9cvA2LVSZW66
	 IMfKMO9iaL37iUUya4BQ/FS3HkII1ZRrTpLgOmE17QMSAkNEBYzgw+co+3d08408hm
	 z6Kv8pvTxna+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB595C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915083369.17492.13584648138664248783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a361442c00c82ae16cc4f39e2a498f8fba0293f0f37cda36d05166075f74847
Date: Fri, 11 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789150833
