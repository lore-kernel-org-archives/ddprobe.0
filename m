Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C3D208BA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721376954; cv=none; b=rmYJ1TNOODSdLdz5hpzMvI8xio48j04A8K+gTg3ItovpzMRNUqT5GLG92N0CwlhNkrJvriZx+Q7V+U4kGgd/usv+l6hzAt9DR5q6B4n+N5kJu+2EsU0crCuHNBl5ynVbgu0+nZ3Uwsb0qcdoB4zrAvFjfFAyxPgy2RSYh/mg7FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721376954; c=relaxed/simple;
	bh=tCN3jTXw6fYJGwBHgbplh8mDmGpnCRp4GhegEPVQzO8=;
	h=To:Subject:From:Message-Id:Date; b=FmrLbW9N2o9553l7dh+bonRYWE960pj7oyR3mWDgGyt1lV8oEa+BkcFDuepMuwEqyYzaTd2mFqfOEkB/uDpOoQhoENAFqnwCaSaTW+cZDeRZ1/DN5nkKrApBh0Ot8L6DZR0V8zbNmrsQT14LVkxApxtQp4eA/JIi2IoD5JwaDO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt0+YhtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt0+YhtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86B4C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721376953;
	bh=tCN3jTXw6fYJGwBHgbplh8mDmGpnCRp4GhegEPVQzO8=;
	h=To:Subject:From:Date:From;
	b=bt0+YhtZ9ByTf5+7CsmHAefS1L3c/iRS7nsuD2omdknCrUqZw+WSq7kGWNtPzjPM9
	 TDDQuXagf9wK7WdHDwfzUO36jSjpiWrgmdhIAFihBz1zp7KVtieuj8OzRswNQH5NC1
	 TGhLqNWOMMw2PTZWVBnn1c+jBqdbCOxY4hHex10fQRonkdEiPKMMvdTX4n7xIidRlE
	 xEFeHYv7irqY0mCnM/cki1vc70jzy8vMs86YhhpVy38WlzsRqGl6pgsVqdqWznjxUW
	 yS1ECjugCWr6pbJKBIiRU1yhT+26H/HDgLFduFndBXCDeqW73xo6YehQmebaiML8CJ
	 /JhEs3TrkEjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F60C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137695363.18759.17792817676213521477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd33c7f3ec44e512a77264612613676320b4498e7ac05c2b310b7435fc04e9ac
Date: Fri, 19 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721376953
