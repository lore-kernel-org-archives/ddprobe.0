Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B5A2E7623
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788867635; cv=none; b=ME5bDRcuTTzN/ngEYtayV/j31APJGwuYbcB7ihMHdTs82wfMx/6UYEJcUIojMRabJCayb4611SdCeCbF5HiF9i0uzp0p+T24GIjLFP3WSLAQNS7wa8UYsvxNUhiIzSweZSbwXZ09rjD51gGmarfkim4YUP9rORden4wgmzCPZ0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788867635; c=relaxed/simple;
	bh=UVhDnkij7f4uuStLz16fqlMteY/5NLMN+IiqN/QdS70=;
	h=To:Subject:From:Message-Id:Date; b=Z3VY+sHyZ07kOchPEKuXZXVN+Y21omFFVz7HdXbHv6U9CFJGn5W1J7duX6JKIYvIriz9WFKzsGFw9RdepQQCX+joitN669A7Zcw6x9MSfQIgy5/TZRk9+/PQYaiWVm6H0/6ZfuUNoR5OeJOgdlBgZRi4q2QclWHsXT2h9+1yfmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MypmM2SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MypmM2SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F14C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788867633;
	bh=UVhDnkij7f4uuStLz16fqlMteY/5NLMN+IiqN/QdS70=;
	h=To:Subject:From:Date:From;
	b=MypmM2SQ1I56JdqegpjjVnVzWHDm7O12lBPrj2BGWPbffvtVGUiHJjPj+Wm1s16g0
	 3Oh8LGR2vWSaywYsnn+qpzaYlf8y5CL0Tc7Q+FMm0MkL+2BDK9FG+z7JV5NPmtHAbe
	 +ujZnQUOJc+zEiAOTnma7zOLzE7nYCLi5ct53msCgP6bqOUCHqbT+O2rk4pykrSE88
	 qHkBkoP9U5MIJrDl+NhVP17scsEwmE4fK7E5+FQtun8I9ABAA6tet6QWL3dhZo4FiD
	 SAmshYz7kHwe/Syd2fB6YTTOTWWNsZtCg+EfZcVy9gsv96PwKeHfqH4vMS9/Ks8BTY
	 StjcHBgEAL8TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDFC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886763370.1159.4840253842469485953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2250c34137698e502d24f3ab26bec556b2c41f1ea0a57da40288dd42c124c8
Date: Tue, 08 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788867633
