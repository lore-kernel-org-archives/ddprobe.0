Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF817D2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746966594; cv=none; b=ZoxrvU1LmnvFcsFA0kYFqwXyOjfW/GLsqm8Voq8Uo6zbyfFS6mrqw0rkUFvd591EFUG8FiSINdQCAjrOTQz9AMo5ilu6FDtozmJACrw3EP/BwtUenFqK7Ff+wRQjg5TaS6IEqujjLz2hruMdXyvnctRHnKz3c1te687FRdgLVhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746966594; c=relaxed/simple;
	bh=ZVwYVxY3ZVvGy+9K3v+Wl13USQ49gk7J0/I7MESxjF4=;
	h=To:Subject:From:Message-Id:Date; b=gAlmn2P02U5wgpdKjgeFX49bz2QXGolWRcFQLnJ7L9UL+uWwg8gvkhgPWfbX18+rqqEZwotNlVtHWQswikG7ohh6ICHk7lAHpqk1xQZeyaBlIKi4+afIMwiwht8aqZpYSh5QyOMAX37dLfBMFGUJza+DPBqR7G5Gtj7BwwLS1Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPYv8PUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPYv8PUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA9C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746966593;
	bh=ZVwYVxY3ZVvGy+9K3v+Wl13USQ49gk7J0/I7MESxjF4=;
	h=To:Subject:From:Date:From;
	b=tPYv8PUbZfkWfzezale6euwl25SEHfMH0nzYosYEbtoxKXC9fPI/ERzddUtm8IXw/
	 rJNoQpqfooS/qSpDd9CnJfpGczC5XoDBHa28yVacl8O1rgT+qpDiHgiCAOyMjhSftV
	 P+tNRZIXlFtKxfJawrJqPTayKrpVQasLAma1oXn6cAWhwgAD3SXPLfzk+mOk7UCjdE
	 KqyKvsH8qHlOwFqBWuoQJLpYRMGM+lYdZcF3bzf+nzxAon0SevJWS2/bDpAVRBzBFa
	 xmZ1w+i5QHwzRKX93PQgP6JSwQHrg/V/B2UlYiOEKIAV+4yB9YxuFluAFn/5ts4KTB
	 pMe8nrIhF2RBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A7C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696659357.5263.7878910504184946973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749053761dcd5aab32d8d7232e8bef37a11af2b69ef6ec607e862dde8372bf29
Date: Sun, 11 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746966593
