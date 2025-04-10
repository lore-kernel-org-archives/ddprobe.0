Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BD41DF27D
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744322394; cv=none; b=bw1cXCjAcOZ6Ac+CYOORAT8PsCPRi3BwZ6B71C+XlkoCf6LKJ9p+1xUNJLzNf/zSVEwqnODksC3NeuO3GNzc1hcS91TtspiZ13XZlguxILzoWL/Tpl96+HbiJNzSzPRf5UAgRojU6GMN4iG9Cma5AMhUgAKndnLA5KXSThI603U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744322394; c=relaxed/simple;
	bh=fCdSCKFub8C3zM5fLqOCkf4fboSK3hhvZBZU9PkYtOQ=;
	h=To:Subject:From:Message-Id:Date; b=lC2SrZkiyPYWiTFYSAzkro2EX4HWywqtsiPB90tMaJGNpsmolQ6A4wlutpDDTAYn8Dum7sTvD38E7QZdzanaVXl34I6jWAaCQvOv4CDxWGnbDkCnJRCjAB4l00ic+1zmq5/iFuFMNl4aHjDvKYEerEHmBr5Rxqzsl07wI2wMpyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXh9ncyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXh9ncyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F31C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744322393;
	bh=fCdSCKFub8C3zM5fLqOCkf4fboSK3hhvZBZU9PkYtOQ=;
	h=To:Subject:From:Date:From;
	b=FXh9ncyDhKawzhwVS7skVhVm19TnYx9Jdw1aLyfJH0p2YecpZQ0KwFzHeVaaYmQNQ
	 Y52aVUgb+/0ZMkmwuhfTNcHIjq9ppT+5P88M2ooTfdTCRPPmBfoZJzZqRXAj8iP2sU
	 rlbUVedkAXPn+RvDHFpZTBrtiX8Rszemy7gNLjSeeC/8warOe7c/rIDCoZTxcSOZrL
	 slyL0EgmARsReZIebjmDptvH2iVCn2hiKjBEaOj4MtbehxLk7KP3uRMj/uROgtzYHx
	 U5qaQsCuVwXjp0rq+boTs14KdVWTmXtXyoXZyBzm7Dc59EWDd6UZ2PnVW3o0U4NX0w
	 VqSXLJIlrC8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160DC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432239358.16108.3730245158168562465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5224e64c4f0669de8de12cc4bb8c0c4d14c124874504423480e7c40529b33af
Date: Thu, 10 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744322393
