Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED46E1CD1C
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709086697; cv=none; b=stZrV2GgpW1oDGC+byM/3l1JwZnAHWegxvCoHLZJ7kNL7MJz48RCxAPoOov1ysLs6hNFSHoDQp2aOky2sTG3UhjLbDZWPhJuVjlkxaERl8FtcW7NWOOqeqKj7OzGFS+GIz01G7MqZZA9Jv629jSWIomAqkR2Cni8TFNseXsVh1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709086697; c=relaxed/simple;
	bh=qgKccsFJQhB+fxzj1eXwhHnDT+thjhwZK48dJy3p+WU=;
	h=To:Subject:From:Message-Id:Date; b=smkng/rSNVUgoUckl+km+ZiJzRGSEvfphW65EDamDGSK26wO4D8y3gBPMx3yCxOIyqXTu7JVc1yRIihCyUFW9Rh0QA1tboYqqli/54P6Hl3qJ37oMjbYXjcyWuVDi4tD+ioqvSErMGRqrNmHUYjVL29SC8gAvYwRi5zXLEUKRYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxITkSO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxITkSO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B25C43390
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709086696;
	bh=qgKccsFJQhB+fxzj1eXwhHnDT+thjhwZK48dJy3p+WU=;
	h=To:Subject:From:Date:From;
	b=uxITkSO0vfR61cgXirrA+vNshKbl7urIzy0bsp7/gSIXjXoze1HpEXzpi8zKFYnXJ
	 ATuL2k5o+UaPFSWqC6zkZYDlP2CrS1VE17UZyKtG9dB//ZKLnwFV03pW5PlIzTnJLa
	 SCGrACvEN9YFGkDTzunjdsvhX5XBp7qZfmaNf0x9FhPjOhpg70kSZi+DwEIN+ie0ZN
	 QfcaMvCjPuKy6FNum1ttMNEPoE6UwHx4C+OLg+0lvuRmo26btv8X8oHNAcndOeoLTM
	 GZcckuGuPU3sFWlVqNSoqdb+XoRiC7zvHt+oW2VQQazQxPyH5tsKdk1F0WC0tEjRDJ
	 rNGESFZ2DI62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68315C54798
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170908669641.10205.17263487862004512909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09193a910754074a5c21a4453e28be8a902965ae0a581f27a9b63a8b3db70a9d
Date: Wed, 28 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709086696
