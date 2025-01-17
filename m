Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D1425A636
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737156954; cv=none; b=Kv3jvqux+bR46SkE1jNEmVvYnKMGUYARG9RgU+5QlDMMTkztr01INyFX3QstrquXuNmM6KIVaV9ECASkpPAMYb0X+0YFPb3uvcCHbOCffpJzxiCnYB6NSOelMazUQjaidVz7ofdC9+QqFPFHGxKbgjkGgK0GF+3yF8XPs1pAMv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737156954; c=relaxed/simple;
	bh=n6NxestX0iCOEwc3OLSrtAba8HVfXuR9jAaxEwMBswc=;
	h=To:Subject:From:Message-Id:Date; b=kcKhrX9veIUOvaFUcaEuGPQmfEP56/U7uiqMEx/Hj2qmuWmTWKAw4NUqpal3jo1Ch5L9pdRwdHeHo772NcpyLQCvkFyHl7VFCkLwVoM8RpzuN7iowN6B1kr6MZeuQ05TiaA4GfydFritBNReNxRzz5Raf9fC6MUsrlF/1L0xdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKWfhZZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKWfhZZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B129BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737156953;
	bh=n6NxestX0iCOEwc3OLSrtAba8HVfXuR9jAaxEwMBswc=;
	h=To:Subject:From:Date:From;
	b=fKWfhZZ1iaMoQVMpUMt5ZVdEAF3bZXMgDYKmMoPKwIl5m2XHq2sDxv6RQPoAuIWjI
	 zWtUlApl+KtqwcEC/kMG3o/79YGIufy27ZgQHtNDbGJ8tTP2UlHw+OALr3U+O38/dr
	 OqAarTOPLAt7GE9YGrpjw5Bhujkg5e54MtJNNzTt7iX4Eeky9YEOS+EOUk6P9HHSeh
	 V+RJ8+o2mntYJTsY9fFa8bOIUTdijIygrNnhjOwB33E/q/SU03Ii0yl5gf/bxZaI0g
	 McFdsEIwIp58GWRg8HXhOnZrHfa+oS3i54Ms7tE+dTj0ZSKp6HrWuKmbDH+DPgw4YV
	 LRJLkhD05dj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9866AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715695361.480.17991237583235592751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f24143e10876b84c34f66ec4b3a5dc15dc6a0d0e0e85da4bdaf6fa2279ceace
Date: Fri, 17 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737156953
