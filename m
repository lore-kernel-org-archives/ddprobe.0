Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCC980BFF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738923355; cv=none; b=FdchQa4BJXnYPCwsMF8LEK+FCSBs7Sw+2hRCCk5teW8HL81+/MxenSzs6DBvJmC6VARQwpPNiqUOFNlYE3Qq6ElIggGXh4UAyeAXvdcnFnLkZc9sZerDIsZ6wp//gVjT7JbOjEavDJbsVT7BN31nGtMaLcGqBal1UgC/XAQHDvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738923355; c=relaxed/simple;
	bh=q88GiOAW9wjr7P4MFsPdrtWJirrVHocDMIm8c9WuFyQ=;
	h=To:Subject:From:Message-Id:Date; b=iiKCjFndD7eTUZWJyTw3HT7lGU4mJvYZBZ6MQZvzs/FxqMR1lhrAeEhUap3pcRUIJIxNYRxZkXsIVMPfICdwu4iVxMLg6Yyhd55t58AT9eSspBRHsBC1J1JylHDuGz40rAGsCjBhzDVSvflZRhY5vstKHIm7kzeQzvCfK5Rc+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEJIPCBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEJIPCBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09CCC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738923353;
	bh=q88GiOAW9wjr7P4MFsPdrtWJirrVHocDMIm8c9WuFyQ=;
	h=To:Subject:From:Date:From;
	b=aEJIPCBf/Rv7+r3r55th48tZ37k6Ts3VcaTGthnM5WW2mLIy6V1iyOWAfoCvKTr1A
	 7XhJvwTkJdvA7DtE47sGUBjTDmsv/2aAAB+aly17IISsk6SyVW13w4PHV3q7nuEWNu
	 YX+onGox428RT9yKkQT/jP64Ep3imhwQicGCE80shnwkHNDmMHttN11i3o1bTqUH4s
	 WRL3kRLYMoVYr/8tEwDPQdbcC+457EV+27hhQLvpahUuF+M7F3W+RnmqP5u64RI0Z9
	 SJsh+K3BKpVGRUB1+opM9IUD3O+iovvqnBGuTDdW6sozXbbQfvKJDcxdCrfer5/UZN
	 JkNxYxQyOenxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D8C02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892335367.31256.8356495976119614946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eea0df430a601a496219b405a5a5f0c138484f572a833a1742a46f6f6cfdab7
Date: Fri, 07 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738923353
