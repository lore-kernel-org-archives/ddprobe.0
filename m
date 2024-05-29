Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9368817DE38
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716977663; cv=none; b=Yk4PdU3lkKVKDVKBBRuupJQfmuddvzDr5b7K+D0gLatDMkX644wW5wLVBzXZogb4UjRlXYIxQiGwzJgBDLF++eYeuSxMo0/zf3WvlhFYBuAq0/fxLu11DTsQYrZe0IXjwNoKFAPjVuR9RsopJ3qEO36ZnFzOI3tBu1VI6rSBRN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716977663; c=relaxed/simple;
	bh=79wJSYlzY14MgGBxKxbXHJvADour2c+6SerRk2QOdgc=;
	h=To:Subject:From:Message-Id:Date; b=uvICYV1vKhstcvMn46MJVS4niuhIBANA1fUrAFHRoPs/Jf8hj0SghsZ1tEILy4lU55pOLJ17cNMABbvU/h/NVql6ScFMheAHXCzvfzEzm4QlYCdUKTEqPqoWcOT7NRiFqYogiBYJ4x37xmGZQZ080lsDTq5zTQsAL+MVTmSrJp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5LxwIRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5LxwIRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB04C32781
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716977663;
	bh=79wJSYlzY14MgGBxKxbXHJvADour2c+6SerRk2QOdgc=;
	h=To:Subject:From:Date:From;
	b=r5LxwIRAp1r1yPC1dFpp5CgsW3FlMe4fcQZkVROICsxIApJOtJUoTIXxi1nLP4i35
	 W+0nG1g0dPHCnG8xUR968mwiQ0KEyvZRonAZcGZhgJ6zU50ZUyusOOwhItwvgK75m0
	 DXgW43HUUc6KZnPoh2jb07BrCggmEZ4ly27i/wJEF2F0weshAB1O2yqlVjMr9+UGB1
	 oo9d49wrQPnReQ+JRmgIQJlnF79c/l3HkBX2kWv8Z1fZqdUyM0Yhq26rFHRsg6wMGq
	 4mKTgP+Vi/Kd6lD0PS88SGWvRVq1z+tMz0ocDY+PMswAaIpOXMJluJQpSgmgBw0Lqq
	 qVFBD2dV6jcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3847C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697766285.27678.12011326100926670239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ed6ad0a435c984e994d7b6961a07f853cc84d42b5c60fdd76fee91d9695c87
Date: Wed, 29 May 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716977662
