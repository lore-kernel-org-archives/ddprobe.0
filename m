Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9720C48A
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764897774; cv=none; b=bJsozVBDodM2w3m8tTV8YuyzHEUqsr1W60msL47OBUPeoicX9FiF+B6uOqDczk64JpZZD6L6xZvYIlTgda8NRc0/5umZIsmaauHwx/X7FURGB6hWcILuJuoQsrgFtFlqfwTruMEw+v0TxE8fI/sssPWzNfgmIphe8WIsSNLeAk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764897774; c=relaxed/simple;
	bh=zslHMmRMzGdgY79ZrDLRnKuavA58KDwRfgZLvfI1eEo=;
	h=To:Subject:From:Message-Id:Date; b=dkJQhbLVHylzRe9/husPjV20tcVpMsVkVoCCF3aS7dsgx87lh5GPCSIau7ihU4/t/C4UF+AX+vAka/NBIwO1gZsglOZUA41SCSou4MfXvmKEEpaxedNMzSz9RbkNurUI3iq9bWmk2HfB70J5eZ5ASnCNrSSuiOZcfw3mWP8eJ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l365t6bM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l365t6bM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5494C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764897773;
	bh=zslHMmRMzGdgY79ZrDLRnKuavA58KDwRfgZLvfI1eEo=;
	h=To:Subject:From:Date:From;
	b=l365t6bMVGQS/J6Y9D7fY6feove0j6UpJFWov9Um2RgyTYkiZ4OOMib0jJW2zhtmX
	 9NrIspMcX3v34F6dDRT69kXlXOy5FU8+D4SdqN3WZ/bJ4oRsOMX9Wer9phE8W7G0hk
	 14vLMLWm1MfkjvrVnrBEdyxFlkzLT4g2m9sf8jK4r1t5XhXX+Cki6MAsjxjdbGzznx
	 SW+8splbid9LJmHM1pAtR1kz+bNGYlfNkaStyN+2dTh3re5jkpFHs1en3VCisAzOBJ
	 68bhRYbDSZO7EmRsbbaPCt1lrMJM/O3ZiNqWC3B6UV2Z0YDMTDZWnJeXgYtnBo1wTk
	 7VE9gf0q+9/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F41D2CE01
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489777358.22838.16681620927078661217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd244655a15b7927c0ff1dd8e91b1e131e18620bfb0df9ba285734c856a44eb
Date: Fri, 05 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764897773
