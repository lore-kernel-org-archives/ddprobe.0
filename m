Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B304206F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713300563; cv=none; b=HcYeb6Bm1kXmQtvEWj+KRK6Yrt9n2XfKerEpKa/GsebgTmQbqP5pYH8EPwAgo+c9j8UAWcMYulHBDCafTLvu0RzVYN4zKX/KKIA2HccQ1ibHHokuP5i27tcWeSQ20v597KkUtcyvpNYlT07Xc7DCZfUr5J+7qrexByQuilXiKdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713300563; c=relaxed/simple;
	bh=DlYzphVcGbz8l4ehByaqDWHlTGRHdXWe3qC65quxXLA=;
	h=To:Subject:From:Message-Id:Date; b=Jh4v0G+MGMasY8zY/6Jg6kFDXtkAZzFru28UD2QGjk1dkERCP36CUb1VawzIVR8nhWFm9W6bUsmkVEPTkZKRGJ1PO4WOZXIIKTYDmr6Cv9t+SIMUp6Jvz+AH1lyCFAqMLkVMlkZC5SplRFG6NjMLGqCAmFPsZmguRWdAkdeNi3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S13olQ/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S13olQ/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0D8C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713300562;
	bh=DlYzphVcGbz8l4ehByaqDWHlTGRHdXWe3qC65quxXLA=;
	h=To:Subject:From:Date:From;
	b=S13olQ/iXzneJHCQHV+dNR8oElLoTo6mYmxaHzMM06WUmKKqhsLzrmY1wIZ+gGYDp
	 WO5piq9MxG2ZrAO6mmN2XiTlSolQuVScR4USlUn/GZiQRhLsoHqIalgEGALfqyOTZL
	 dAWi/pTsbyaVZ0B6B+MBv643YUXjvaixVtMdoJX/9oicOyQB0wGlkaN7WGGCGFj/RN
	 ctcQSJcjzJLA21pXqw9uBW3MYZXvhgzQ7I+IuOHTUGe+5RKO7Hf4NPU+xBoMVbxc8/
	 +UFCpqwFBdykpNE5FNesY7LrVijHyZ4AFSusAZlolecaG/ogzGGnpgBXmyjSXFQEyP
	 RA3wIoiDa6juw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7366C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330056278.3588.6387477519024510042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d73e853e3e01294ecac09f73f0af8327be9a98ac0aaf929e1e2ec08623be518
Date: Tue, 16 Apr 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713300562
