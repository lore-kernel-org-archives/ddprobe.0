Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4826D1F03CE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744477194; cv=none; b=Xr5T11C9cFd7dBMADe6sE2dqG56Nm4cqXaNh4NBdEMx0cAlfX5bNoMPUc/Ewz4S6LMzNL4RER2ksFKbvRjISx6bGORYL4e8WXYtUaeqHqIzLoJkiifSdqasUh30vl2+Sne4v/qcB34POYYde+GvHc2IZglA9rInpZaXgHFlfPvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744477194; c=relaxed/simple;
	bh=kZJSAkgiU0ITN7aZQt1ODMjMTU46dGf74iGb5TkraFI=;
	h=To:Subject:From:Message-Id:Date; b=QlfCmFnF3OfdeCGJtjGVlPFy6EheWGY3aJYSjkLeqWIba0svXA5wygM87m3FCe/tizsmdtmVbGGHbtEZkPJYTBHD5R/V6MeXKrobE7flyneZzCsuKZ/RFAKVq9wJI/znRMPEbyKnuuwfn7O5UEa67Ar4/CmOIn9EssdST8JdSSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvuMGx+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvuMGx+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AC3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744477193;
	bh=kZJSAkgiU0ITN7aZQt1ODMjMTU46dGf74iGb5TkraFI=;
	h=To:Subject:From:Date:From;
	b=jvuMGx+hLSihDSxKq2vDkmasewWmV3hO2LYGiaAS6mVTanVX82EDJ0/WIIFHqwvdw
	 FxhSWSLU0lPjXT1nSu3WwaxxQ9afsgesJFrGk4OKXE5xS/4Z4LGOg0CBkSLhwCzVBl
	 vaW2CHOo+fyNGAvdTho5/mzZ0jSgi6yNLPglNAxFFHyp6afCVhshwfFTpYKgpefI2k
	 cUDpHmmRRxOE2fjbD5TFGH9gVMkSbBVAnBwLEkA5tC5AaSWy1QKrbgET5drC8Q/tsl
	 YGsiJ8hmCK+vMZ/jFe8aEOZ6c9qN907uNjcq6lJcqVzSmLpX1IjG+jJVBdkitohSUt
	 ipMMJJqhn/iFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE5C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447719360.7639.6036858217523944044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844bce23a2af628635fc121daee3ed1c621357b1504c331c4ab85459755c19b6
Date: Sat, 12 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744477193
