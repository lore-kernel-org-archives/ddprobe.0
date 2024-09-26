Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4641D5AAB
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727369154; cv=none; b=G0EkCFgWEiQUM44g1AvbvHMHCxgCEQB2i+/Y4W1YDFGDgLwavBQ/vTkE/fMsH8mg+PHOKhP5mJjoXxRnzIVlQDydxJNzqGf0EPuBvnF0DXs56733xZfR3aXfgW8Z8Mxx6na2t5+GNijrO+hBgRBV9rTg3AbfFbS/Gg/ajYDr3EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727369154; c=relaxed/simple;
	bh=kSY/rt6HZyXNee/ucs3cYxjvXeSwyBKiYHAafZ/MVqU=;
	h=To:Subject:From:Message-Id:Date; b=SI0sND+WzDyOq56Kjx0GWNhDOvJhQF40hjdEBkNrt7rv5ShAXFgXXheKWkCpBC4IShwOoHCYVj5jRQ2g/iTlqcczts476p4FhhSyP6lVaMYaczBohQhCJcLhXh0bq7ljjoXVm+kSKzITjb8AmDSwyXOeOUHnHV3Qg2x5sGuSCyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYuVvkdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYuVvkdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A426DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727369153;
	bh=kSY/rt6HZyXNee/ucs3cYxjvXeSwyBKiYHAafZ/MVqU=;
	h=To:Subject:From:Date:From;
	b=mYuVvkdkGY+vs98D/zfpaEtGeztl602M71vO4j2TJ7w3T4q94suNaHbl5wBarLRqU
	 LqLpfdFIXpm4gb+S8NBGSl9YIWUn9bwhyMYrc3IfFd8/h8ehBXG2uKrXPe8O782gqK
	 O8I/s9Dj1uOpxYBLUzeGVN7xEczyb4ca3ZyJs01hNZ88IlLX4qc4YrQ9Dch/9dvBA4
	 rh6mrSLv7dtcBSjx+xwas5VzQMKLstPKd++8dJhinx+YprAirflH6I5UwJGUY74bnp
	 W70JRGwiEtxteS5VKUiYfSZ1N/xZ0ooA3ZSRhIzkCoVMfc2KD+Cc7oIQBcmXgKf64w
	 4YhFGAWMT4+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96129CDE025
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736915360.21205.18391970306205811613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7823b2bfd3a2fdb25809558ed69b9af013e1530310fdb2cb0ad048aecb5a12b0
Date: Thu, 26 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727369153
