Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A51D0DCB
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725636354; cv=none; b=R62IzgGB9j1ByhUOYCYQMH6Pv9S/edKZmGcxizJWEp8tyr0Vv94FeOHEWdGHOdIKKYctLSvp1RWbwh+fKTm1K+oyGppv8FtaP0Nwz+s6oNWj8AupuqtnsCH8MCOvC8i8DBrUkNjDkskUUhZEvyNDlJmKKE//ohJpo93jMywMWig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725636354; c=relaxed/simple;
	bh=j0A4f/I8MCRiyCph8KU8g0WWp7a+RcUgxET7t8mMY4s=;
	h=To:Subject:From:Message-Id:Date; b=nR/3TYoG+Y8YYdJvXl4XRAv4NM9fMFWoae12B1kJhiHav9shp0j+xqoZEK3aYR90vmmLSQ2SS3PCyqUwFHwLcYxMdMla1ThS82bQKw1cNu9+rZSSTjSTltlahyWAZ0D71D0O0g35GLrd3LSQWKbNqxKkObZrB5XroU2z4iTLOZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJgz+SG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJgz+SG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F2C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725636353;
	bh=j0A4f/I8MCRiyCph8KU8g0WWp7a+RcUgxET7t8mMY4s=;
	h=To:Subject:From:Date:From;
	b=eJgz+SG0lmxpOjj+5tKDq7/N5bkIeoO0fJMLFjqXFQiKdCBxXoTCTbqDHpg19tYuD
	 WJISWzs6VnqCn0RijEegVtUvm4ejDug+s1P9NrIaiMHCg37h/BzU4d4fGnSkYZ0QXR
	 HS0lQa96DLXU/zcvJhZMhuYkcF1VWLytQXhA7BVQx4Gw17sM1PEwgWZqr+er3v6c8N
	 RWdg7TjeZ3v2nsBnkpp86GpTJtCXOXKiQk8swJkHF8Hzd4pmvwTSNEHsA/GDK54TTn
	 6rZh1Wy61CyZiBD4SQCFFD/ppt2jyqZ68TKOVcYAAapuAo/cb/n6vHgUPYfmY9xIc1
	 T6VcNaJP3BBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F90E6FE2B
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563635358.6817.418119176460753803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b32980626088df2642f7526c20b0b2a16695f289ded6aeffdbafab5531e08c0
Date: Fri, 06 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725636353
