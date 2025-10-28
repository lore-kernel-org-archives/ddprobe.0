Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BC24338F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761626994; cv=none; b=MQBm87TXpeHbhpieYommBcy7Pm93ZDsiRqxEEp1KVPAwo+y9i8SBaRaQjgejmf2kyKzxMlZZI2EjErKKjlnpjiJn4erXTmMle06hkf4ow4oXVsy0oz288rEUduODOLUxzV/rzp0m2SdZpyLTQqfQRWfWkXX6g/QU6L/P4ARjpxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761626994; c=relaxed/simple;
	bh=OVqIzC98tVm+eMIqouycKlnW5YIeg790G1nuWdM4oJk=;
	h=To:Subject:From:Message-Id:Date; b=Y+nEdYZK7netOOVoOD3cgTGvvxDzmTBkGaoTLi1BFMgallau8j9FD0sAKvpFgM/rXZQS5eDn8xguxJkTXI4By7peh+1kCbkDCvQyo/odYActG5ZQUkUl5h2L/NCasoprljvbSutVp9LpJL60nIbVdHgRLn+tUxbhg2jGc9UZ1sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA0YYOc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA0YYOc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E0C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761626993;
	bh=OVqIzC98tVm+eMIqouycKlnW5YIeg790G1nuWdM4oJk=;
	h=To:Subject:From:Date:From;
	b=SA0YYOc1aVwJl5XETJpQfssFf0HitJbzJqqlfuQhea8FalXNi7FyJpKir4TVeH8Q4
	 4o5znwlVoZa7817cm6A4Qr6ZesXjmo5otTHrZ4ySWME2GIJikj84MPA0YG4gHiri7r
	 tbxkSUYTW53dLH4Bz/+bqTVRGcdMDESLNs0Z8PE56ArI+1PwLGXnXt5pBfAJ1Y8Drj
	 tkLZ+LQxxz4YCtPBWa/DvwWwLw+cF15F5LpJLt0sNwkZTsk9tBtkpqzkNUteRjD1lA
	 juJApQ3II6NataF4pqYxuq5W9bv8icQaCSdSr0Cp5a4rjBdkq+KhZOWyzWHIvTFpRm
	 IJsVEpuFav5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E1CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162699359.26352.2087814449443940303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0020eb83bf0b32442d50fd887266ccb27bdf4a487d5367744a2864588438e53d
Date: Tue, 28 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761626993
