Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93A3A63FE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769072634; cv=none; b=orS6Y3GaInHRq+CpvMlrQdEz3drypcmlQwInuCD7/imQt4poT8fECBvhd27jXQpPWnqFVxCkV96CwlH04spg3G/FQTwnWIUYrZRptcAVdBiyfOPJtvZbSUIhFgBk+KAz8i7vmyfikBaxVxqMNEhYv+qxQQKPNoA7cqbTzFsQeDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769072634; c=relaxed/simple;
	bh=IPv80CYZi4ANU+Xgzwkc9nRrOQDSP3DASEqtP8VTv5Q=;
	h=To:Subject:From:Message-Id:Date; b=Dn4klHw5mxLW3It1JzQPnz2XJfmwWXjcyjYe+2nZksn9VsnWUUhYzDnS85jBWXlyR9CzCh5Aer9g+jGIBl4NtXyOj2ROijY6kZH8GDPqEqyTHnfbxjS1+DCjFUOukcEhC2t9q7IoH7/iEIBTmLf2jSb6N1A1nRIejrma4OVMKHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/8e4jfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/8e4jfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7ACC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769072633;
	bh=IPv80CYZi4ANU+Xgzwkc9nRrOQDSP3DASEqtP8VTv5Q=;
	h=To:Subject:From:Date:From;
	b=I/8e4jfFSDk8HP1Z8l2Qt5euqmYUi+27e+mRwlTV0SiooKM3o0F3PjTAGYoUiuM+9
	 cNFy8bONp7jDRRUVbIpMZERAr2ajUj8QOJosAGTLX9YP7Jw2iamyS0BIIN+0VwF+YM
	 oJmNcnIlbhEdUr4hxfVcAxst2RztfhEwtjmkszvR1+fJfAL3PatckqX11X1zGHrINn
	 f8X1A2XoWTjYEpuALlOZTj/iYQj+n1RtCRi+wnhNbRvk7Ji/9UhZ0xWHE1zDNtnVwO
	 7R70Wci3yvuyB17BarbqEYt3IDquknDsvnswblorMUs8gwec1o1nDe84C5Ba4UmONz
	 P3I1enKzylt+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910ADC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907263358.9714.255586281119003366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa88b901819c6680cdb8e81e81db250c0a6052d014c46dee11d74579990068ea
Date: Thu, 22 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769072633
