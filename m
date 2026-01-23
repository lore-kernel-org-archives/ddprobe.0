Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107102F39DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769204034; cv=none; b=GKOYbxZKEZqCgR2dk0DaI6suKz2HoWBxIpHRwtOd+Z6dSR7Mi/JZv84ZpywnD55WFo+5v1QiDB7KdZX7RT+Qmed34pjFZf0IZyOHzR+pnIbe4XQV792bXbcONp2O29+DmfpSI4cM2m1WEVujKO+P0AXKaMmB61t3f00uKYq8Tu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769204034; c=relaxed/simple;
	bh=8YpvgwtjHQ4mNBSdbR9AmWA88Zny1Pbh2TlRF7cgZ2w=;
	h=To:Subject:From:Message-Id:Date; b=T69VUWBRnEUfi0xHqWW87wdOd9xhaSIRXDw3ENqIkYkvFP/fBwG2BJKW+4pQSIDDiEzm+mG3Oo89ek+JoQw74Yw5J3NEsJ9QEGAfWPzupCipK46qDgPOdR6ZYTbMPW0vqe/IOi2XWHEKZ/pCQEN+P/dKyEerbfIQo6o+0TopVMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjQ2UJBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjQ2UJBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769204033;
	bh=8YpvgwtjHQ4mNBSdbR9AmWA88Zny1Pbh2TlRF7cgZ2w=;
	h=To:Subject:From:Date:From;
	b=XjQ2UJBq0RU6PQPQosUd2DdSDJgk71ZOn58qIYGxoh9gfk8Pqn7E5IFq3Bn3Ig3qi
	 iAABxnOw32s+mKZBZEPOTbUUaHQYrWpGn6MZBE5okneXlkCkssLNRK/hAAvMt7RC8A
	 n/UvmY9R1hgHDny8STEFoR/Ib+cDzpDmEkJJhptFexJO9w5jP+iU/R9Nq0fMz3wzOr
	 UeFNeLfmNiL7BwRBQWKIW/AlXO5jEG/wLhwTctMn19h28MXUafS3CAxXeTp9qFfmFm
	 XB/M4P3aFxLAC+4rGS7MgiGThUW0G5QnXw/GRpeodbCWdJrNW6yGOqaOATs6AhaHYt
	 BycYgZz7Fx7LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3D778B2
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920403357.15673.5134465412746440926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fb42fa2dfad4d687706dc067415368503a1c5eeac62f24a813e67fc3ebaba8
Date: Fri, 23 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769204033
