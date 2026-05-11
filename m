Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9AB3FD125
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778508034; cv=none; b=ncW79I6XOtC5t5ZLWF8forrYYEG+CuYpnIzgD4mrnkfciq8xyeoMrIgUgr7ftC+939uDh4yo8bSli/eEaECmiTZglhj/crymlnsku4WZ8Xj/jW+Q9F1Zt0U+GflglDKkK0F21sge/0wq8wNg7hpZGO+gB/sd4s9NQweKtXK0y54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778508034; c=relaxed/simple;
	bh=5C4VT+fLJza4C217jZx4rJu0eD8F84NoENoyprztPQQ=;
	h=To:Subject:From:Message-Id:Date; b=gvp3zCd2Tp76nUc8nHUJ/yPLnwC8epNTnNLIYSEoH5fwolmXv4h2y3h3HEdVSa5x1b2mvwCp8q+HAIo1YDB1lk2fHeiEbRNsfsXHW1AABahePJw/3EE1u+bSJTvabnZzN+s64zYhOI6mqAzrF0JdLaKDsiAHEToep8E2YBpb4Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj+SKO1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj+SKO1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0161C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778508033;
	bh=5C4VT+fLJza4C217jZx4rJu0eD8F84NoENoyprztPQQ=;
	h=To:Subject:From:Date:From;
	b=Xj+SKO1dNwZ1gKJNMBZrI+o9zF9N6c1LnyUwQVJ3cYPcB9b1B92ZqDQV1CM54Hbv2
	 uVBU60IqUl+4qhy/kOKbVo4qMaMW3NO8kSjpoScUhjWr/kBMgO4zEbofs4m0OTiF2I
	 U9fRcozRS4XcCKOMEoOa2XLxVImnr+DWGsCctbe1kYfgQQ0r7FWP7TMDqveuIG8QRD
	 KIR/4rsjEwrusGM0W9ZSylsVyxywV2uVXBTVMkOWv4ZNfVnLQm9igSpf5dNBEsObSA
	 ozaepTTiyZBUu3aJAjidjy3CJF+En+KGcXueTT9mn8etYZNQrvzTrHVpbAldtjf6xU
	 dpGQGgVDEJ6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD96CCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850803370.4900.618487986305717255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61cf5fb54e6b78bad046ebb26f086ed5ea449b9e66d12ef21b01fc630636aa1
Date: Mon, 11 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778508033
