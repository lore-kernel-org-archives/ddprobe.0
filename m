Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8093FC7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748321394; cv=none; b=c1lAoruKiU+dWCB/2Xy71k7y8Au+Q44k4CIecDjFNRRkk/tNRHbu8OsotcQZ2B0FU0k/O86/nyLhMRwMQDMvDcGsL/WCrNXdFDG8MnaoafHRUVNuafZsH9OM+UoTPMKGYmFPuZIfAw5e3m6uj12ZQRWgk+CBsXUGtdUoOF+7p+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748321394; c=relaxed/simple;
	bh=eOLOD7FLz2I0Bl5u1JCrRynIMZf/QQB6bb4Vf0B9YHE=;
	h=To:Subject:From:Message-Id:Date; b=AossB2hTF4oh1W3Hv8MX5QJkeMFqde972ufBJhE+CChHQ6ipPPBoXS3aSmVtgqGS2WN1l2Q86sMDEwmaJ8fL+zyl1vEGbRswxgzainTWeBMNf1W3UXUfdS3uDtzh8fjnFutADDZKoYX6gDhOqzRD0fADJOXpF/o7rIbbSgKVpF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF4NAJ//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF4NAJ//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2444C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748321393;
	bh=eOLOD7FLz2I0Bl5u1JCrRynIMZf/QQB6bb4Vf0B9YHE=;
	h=To:Subject:From:Date:From;
	b=oF4NAJ//jfoav6wJPk37ITwehCc3fog61WgTl5jkDDJ1TWlC6jKgBwfsQezWr3o8u
	 WIGq5vFdMZDZkjVyeDQ7Oa4QGwrY0QQJUF6fvHd3w7YRrLrhsRvt/Wvpqey4OLhXfY
	 /l/zS+chdBInaIz7MWnijxhPIjLqFnZUEMA215bR8dldS6ygzqj/2y3dh7OIIi91bV
	 seaknkF0Qs1GoVaAqxU/uMkG4xZrsJ2GtD/KBpWWonhbuyL4C3S/+Bg8cSJ5MKW5q3
	 Y6d57gJDnqsH3R8hmb5txkg8hyQkaq3ehR6K5+h+8XnqbUSbr18JpGum+X7zK2m9JF
	 l0ZJastWSIhLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F284C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832139357.1813.8319795053127814239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8d3806c04ea0e415c6f73c8e675969d3d00445d10e1151987664f5f24dd6c8
Date: Tue, 27 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748321393
