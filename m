Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7C94CA77D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792334434; cv=none; b=bM3gaMx9yos7+FcnSjtVoQPeuMoTZ4d/UPt6yBHDOofTXCqnEsM0iT3WLKD81gcXYIC60j6zE0YxQZXFo5sk5nzDZsIRoWvcueeBndtkS5IbYlF5geT71PvCY2fD+TSmjsXhKJtoCmSEgqJgEMO07i5STEJj7r/3zu/ZeQHXwYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792334434; c=relaxed/simple;
	bh=gv6XKfSNWoibdJ8w6b6hjoWSOT/JOApGLVV5ZAAixgE=;
	h=To:Subject:From:Message-Id:Date; b=Xzus4E/6715C7kiczrEw2vkk+25ya0J7Rc2hs/Fpcj6EATZWi1TFH9HYU9cdlu1KSPvONbS8VO/NyFYzuQVH7/yvmvMf0Oh73bSmCH0myRI04cBovZyoNo3k0ozaA7PYMYJnCUVg22fFNQB+RsbyGX1AL3O7i92LgVYcXfbVs7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOS+ncjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOS+ncjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFFDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792334433;
	bh=gv6XKfSNWoibdJ8w6b6hjoWSOT/JOApGLVV5ZAAixgE=;
	h=To:Subject:From:Date:From;
	b=fOS+ncjfBGQYnHD5HhpsIxc5fvGsGFeUUZTCdLDqHjfZ+46luAuKoznKXsE0nwTdy
	 jqmcA8ThuGjQ5Im+SOoiClodKCZ76tuhsv7HP4KoyRuBoDO6EUcmTv0ELY1XstFJbd
	 BWwbvan5fgknCeITHInVLk/pJY/BuWX7w0sD2pQJ9+5CNL3NVop/UEJY6vZpEUyX53
	 h5nvYra9a23QbJSdJ9cu/DpuCjmJQLWD4foj50fhaPSKjEpX4wPVI6nfARq2+VDO7q
	 Tjl9R2LEIKrd+75amBdgutptjyZQHw32xNQldVO094vEeOO14mA90jvpk9YPJAVEhz
	 oxWeHalWtPI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971BCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233443368.20142.11721590568243123045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8fe475bf6c7e978abb28e918e2725cba47c162e81eef75341f5fc7e7b731ae
Date: Sun, 18 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792334433
