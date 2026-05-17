Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC9F1DED49
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778979634; cv=none; b=p7QT6AxQIpEuVhTUqMDUs0WF2z/YEA/Y/tvR39p2JvRE1PPrbGZzZXbOHyIAYIWUXxxYD8rv+vrzkSMFpHNEO0T8UA4eiCrT6XlaPnBxUrsv0GA9A72Ihzq41bhZYbwsjPoBp5jZ1G85WnzMAcBMD7JWyXUX50QzqZJxoMojfzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778979634; c=relaxed/simple;
	bh=pP8Om2Tiv7uSV6UTv1e4Ww3r2UgdTaqkPddr0Os93YA=;
	h=To:Subject:From:Message-Id:Date; b=YNXFxS/rXGxoCG7+5SL4OfzvbIOgIVRz9k8CH2nj3N/geFmiUh4KQ47j37v8cotHdPQMX0ShP1dlFTsD1xV2dImrFw7k23Br4APv58k65UBr40WuwbsmM/5u/rY+g9Ykkj9sHCWLDQuDhH/YLL3UPc+tIDftljQsWsU8retn2GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUS8hIPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUS8hIPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7A7C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778979633;
	bh=pP8Om2Tiv7uSV6UTv1e4Ww3r2UgdTaqkPddr0Os93YA=;
	h=To:Subject:From:Date:From;
	b=tUS8hIPCTZigaOCb3/pU6iRAILcYp2FYgNCxU9Bng7WoMHLtrAy4nMjWhjF7yXYL9
	 BHxcXi8FGH9DBOLWlhE6EDmP64L9S7chTGjfB1dOIk5aeWD20E/Xmc0EWKZxOwIoOD
	 xTBbNL5E7aRE7nvr37kAgRxXfeJyAZIP6u2VOer+E6LodnMZglJitd6RR0SzLk48LF
	 T+sdlSspFejk2qiaaXKcasiey2gLlK76gH3h+FQvwSlXd0iLoW7a1iWG+t8fhc9asr
	 RhLN0LJ3a+meQmujiD9DcMck0wbwdqlj952ZGX6YCp0yYX5InoEcHK9ATtpcAKlEkn
	 BFpcPbRXUJQtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB331CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897963369.1603.13577632941734855893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ee1b6752045f92e5f6f98187c70733dcc146890a9edd08f38547de968d074c
Date: Sun, 17 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778979633
