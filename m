Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0682B35F17F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772747094; cv=none; b=BAEiNXrxXe8FyltRq173LAbNGChwhMajxo5kfMedKVVB34P5jXsMhxk1QxkNWd8HnOFJJ7qLTr8sKgg8Bj5+f01mBa9u7So0JOTt8HmijbDA5/ViqHqlN2LvczFPm3H7WjmHV9T/g/RoAJce2K0FxrGQz0/wQt7bYM0a45/RcQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772747094; c=relaxed/simple;
	bh=AAKVxJgWMimyhq9LVS+56hZi+mwGlk/+v0EIpplMLGU=;
	h=To:Subject:From:Message-Id:Date; b=ZbCc30eucLdhebo65d0hR6FE+D2pbS63apfWlYIQ+4gvLUplZDaCoup7mrALaBx79SYgwScY5AySj60eSA/dSIbyZ/0AU/IXFoc6dQZmtfd/deHwu0xDuFz/YubDxfiBYhh5oi89PbhUCKhlpcpjRLauFLaTbg/RstaHdugNW8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir0/4dkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir0/4dkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772747093;
	bh=AAKVxJgWMimyhq9LVS+56hZi+mwGlk/+v0EIpplMLGU=;
	h=To:Subject:From:Date:From;
	b=Ir0/4dkMCLdFI1lSd7ZC7fGNpXz2p+bmSg5MJEUuvUB2qS4UbDAQPEvzQ/FX4L4kT
	 5y5KE+bh0+arK95+lJ+UdnK5MkybGLUxZsOOq/xzrnoCZoWUl6OQJ/R3OpgCiWjbtE
	 U9+ys/n/Oa16W7cAOPqdHeRbBoyxZvfsQeKe3scxxXWQdIlYXqhmGGoi9IfkUa8OL2
	 Zve08XIRbHlkvHFX/9SAOz9KxP896Ro9W9PnCVDLTpdwSEuu9LnPDcWz0SWS+9n+/Y
	 Vu8dxnkZZ9Io+sRfb9LnQ0smxSyV9vKh0LBF8T+bp7yJXzJb3Ox8GPuT8xMx5uxOnQ
	 P5R8Xx82WnUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350EF33A9D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274709359.9594.520267935518422065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e5488e492884c34d1938f89bf5951a1bce274ca01f17d16bca9f7cb012d6fa
Date: Thu, 05 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772747093
