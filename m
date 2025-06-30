Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10001A073F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751324993; cv=none; b=Zo3+hA6CzRwlLWh15yXQMOFPUwQ7vNK0CoSMrrr2HXWpQ2IfGVcbc36O4atQiGE2K0shBjdeCD9LdVR8L3b33vrSzXiG+pSqsGSoRMY/D0YFdiaNbEsUarumoOO3gCG5Jv3OGh3CrEp1mhVjFaN07j0eFVDKNp6qRxlVvJk9cEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751324993; c=relaxed/simple;
	bh=Oc6i9TPiA3D1MK0MKFeTh+6I5yaRCK/n4kip/OqSpvY=;
	h=To:Subject:From:Message-Id:Date; b=cYgb030tXb2jWJvFg8ykaECDUVC9yFTQZt/ilw0Gl+CLR506VCNQ5boRp9q9VG5AeYse+g/YvjqPFz+5hxes1yCV8HHgT3Fox3tJWh0PNM8/iFpHeMvWqmNoEw1kxElRNRwiyqw0+OSP8bDq7JucwZCW6wQp8MJsAoMRiOVwn3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBUnwTBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBUnwTBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0A7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751324993;
	bh=Oc6i9TPiA3D1MK0MKFeTh+6I5yaRCK/n4kip/OqSpvY=;
	h=To:Subject:From:Date:From;
	b=uBUnwTBNyFBhF9vst2i4aZMx5Cs8yk/nDU8JFUPIC+7akV4++Z1T6ejBr6tUwKDJ/
	 mYbs1+MmQMuq8qbgi+n4V+RAha3kuntsCm/AId2mDIhmyDdLwryfxrhFjoYP52WM75
	 zbjAjJAHnz4yM4ZtihI04+eEp55iSUMJypQvgrT6EYv+KSFcOFv25jeXZwfHeLaIy1
	 ChICrdFK1eDsZVI93vlvjieMSHWo/LCYJzsoVtum7xkc2oQEC8aKYcOCvcWegTKaDq
	 BzaQl4ignVGLKa7S8REpSctxkrZXqPgy0G0xNsj/OGZuKboBPOo5JdJffNJTpyW008
	 UKOnh2lixVkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA2C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132499357.12814.5780684943516390108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fc6652fa8e0c95088f7f875e2b3e1e6bf1c68a8244d19683acdd85141e2d98
Date: Mon, 30 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751324993
