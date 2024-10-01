Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C485B37703
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727757953; cv=none; b=BZgS4pspKJoaUOaXzVq/p7l/HspSeVHTXZzYpJxmrBPLIWZPQMLwp5JukVc7IPazk0L/J89tFJvxGpKOkStJh5mjPqGbGWOA5mZs9uKdngYMkhd42DGdUANV0Ivxx+YRjVbIMt+E7qkcdJLU0id67H0orRUfjKpqha5YrHBJ1Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727757953; c=relaxed/simple;
	bh=HnMdZq1bfDHpMDGf4LePZLH6a53+DEaYGDX2AF1/b7s=;
	h=To:Subject:From:Message-Id:Date; b=FJyTO/5QBilWZAhTUGJpil5B6wCFJnCmPq6QjDepyfp23ttKSSq/mFfOZ/tkJBK2xIGIDZxW5zj1BIUgPkcKaxGYuddOwQ3Rnusmk3lfGGfuAbnS9Xl0VXbGRIN44FRnjc7aX0ANyXuydQf4GRKJGrxkHfDMejvYRYeNzxhpZ6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIdbSDiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIdbSDiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CABC4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727757953;
	bh=HnMdZq1bfDHpMDGf4LePZLH6a53+DEaYGDX2AF1/b7s=;
	h=To:Subject:From:Date:From;
	b=bIdbSDiSvnsF2kqrb+nY0GE4Eg3LnY0v+JNOHjTOtkoDCm6XFoT206MmrefA8SGn4
	 2IOABKHJKQf7NAS9xblYitBJ5x+R/YeUrpteuVTfF070gUZyyaAuniz3c/27OSDHxI
	 jd1NqtNVBwtkRxQO6wVtKkMC21wWuSTdrQZMbpeQKh31yvsx4H8Vnv/Q4h+SGtYuC9
	 XC3NP/VbOEEXuvkaN89ojXy3U+ULmYeGYZ2PmaktZuIXlh93nVTp7Kv7nSpW5y+sQI
	 K6RHeTkb/3KuxszhNWJCpsdHTiVKhyOisVAi3EHj4P0K8xCCXNLzeu+4KjeM7a3Fbk
	 TvND35doCgl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A8CEB2E9
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775795359.10634.16861207433509912182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201706a24f5d0b20d35b14505e1ad203e510917574ec5fe93a4ae9e343cff6c3
Date: Tue, 01 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727757953
