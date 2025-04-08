Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486AA218ABD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744098594; cv=none; b=QGV8M2YiMZSw97qhdatqSIDL6nC0hL0+9tHABLy7ivqw+CpeutWFVymSfJ7wBovwfiaErsNJs45sljgdAnRbAwRge+PrUV6zGqlgy7oqJmsSzLLuS87t2up+Uh8naRrCzU6/Bh1cPwgjhdIzMu8OMUkEjO3XELUfOtSua8rB7+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744098594; c=relaxed/simple;
	bh=51OOF7tDdKa0kk/Nz+ZqyrTaP5txe1O4tlXVPNwfh8M=;
	h=To:Subject:From:Message-Id:Date; b=PkT2kpIRvKl/oWFfXqw1JkF2yMAMPjL1CHE4SdMrIqle4hVASyAho5qABC3wcK08aI4uosa5xL4WVjOuRoN4vieKc1G+LSPM2otnWQ9S45Bu6iNglhg6+zUuzan2RFWtJN+dDpAYuqA1R05rfN8ZLyLPru3grEUk+M3XYwAy0A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4+FWLCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4+FWLCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC805C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744098593;
	bh=51OOF7tDdKa0kk/Nz+ZqyrTaP5txe1O4tlXVPNwfh8M=;
	h=To:Subject:From:Date:From;
	b=u4+FWLCtMfEf1/7PjBck/iBMOzhybSQglvU/jz7jz9nOWODBDPH/tzpOJsMvv4c3A
	 7b9HQO5i1LJbLgk2i4tGCO1eFnSkiaXPW5QNrdj4hUcyBsQN2fn3ZaEXGdEC06XXLO
	 xCz2Sea1cFOomMOUJPr+5e7wHtvnLZb7rAbt8Veh/5yWShtM4FQSrrmCpSVLbCwEau
	 ircN9+NFhhvfY28vn7S7y4uGxDtBHuB/qxwsUZwmlj4xzy/KkFLgXy09D9v+i6wbxA
	 AQdqQJ59KqLDZYRnIHJdMZ2qkKRepEOGmysF7TW1fLmZvCXYpNUx3Ndmv7Lgj9Gugf
	 d2zym4fdHfGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E36C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409859360.29555.14700141409156918494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb867a58f40784a02b649d40bb4969da8bef749453b171b24a112d2087a1b82
Date: Tue, 08 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744098593
