Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4B215667C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718734163; cv=none; b=Tz0kfSKFPjH3H8jzNCZjDPLrB+B/BMkaY447pKsSWfhI+jpJ9ARS1ExnptU7fFHmBERr3MKWeJ/tgwh1Gnb3HTWBdmmEAQt6MAilznuw1JQRvBOgX9p2iUQl6BhOx6nLjS+HJr7qBXuZLd3iZnRMlpJJgaC57vQKYOm4zejiXOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718734163; c=relaxed/simple;
	bh=5QUejFFXUWnCpJppfiNn1afRG/QIkfRR0wdEsRmc84Y=;
	h=To:Subject:From:Message-Id:Date; b=NVVPtGWZiwC3eJGhEbNhwKuZpJNIiTP1bVv79sajQnG8wsbnqX0eylMZa7kW6rYBe6pYCd/VS3CYrHjDBLC0dAI+oToMKy/aO2kfTzOgWVgZEZ9P5jMZ78qg2CbhQhYjuDAXDhelKHS9xH7CzLC9cpemWqkVK038/Zx7U/StxdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rggbSzOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rggbSzOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E30ABC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718734162;
	bh=5QUejFFXUWnCpJppfiNn1afRG/QIkfRR0wdEsRmc84Y=;
	h=To:Subject:From:Date:From;
	b=rggbSzOCLCUN1Jzp3pIpgmr2WiErMQVy4LZnCNpQn2rxiF2TWUWh6j4AzyWswNzIn
	 tHkcRe4rrVzzh8ncmmjmMMrYuzJyvEVRv+jU68W//qjyzT2vWScd3T9CzKig31Otyf
	 8EStEFSJhsgcVmitQY78xb1uX4R5/DtOkYT7l5hrQNtZ/wcHaTGGousuU6NwKIKSjS
	 yyjYWfA7xSM3+D7LpQYvgSfqhPZqqlyYc+ENejxzcGpl5ods62r3IyqQ1wE8SAcRjx
	 G9X0Pf5Fdc0htEe2t6KYpRqXMIow8SfU4fxZcgi7tzuu/27oY16T58E8srZL2LAQwG
	 xjLlaOM+pbmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B15C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873416279.9609.6586517224497679471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae733dc9c8a16ea1d4a73e65fef0878fc8359e80380ce4a09d7b3efb0530ac1
Date: Tue, 18 Jun 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718734162
