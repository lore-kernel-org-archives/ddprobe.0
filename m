Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABD0450F2
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790911834; cv=none; b=kF/8kRY5OfQpgLnK0qnDJLceVd/+BumHJngwoBvFGRMmHoEBGfynqAFQGUHicZpfExS+hMJFk68yW8O71Vxqd3ayufpZhxcAi5Vg+4OwBT03D2ijJ9jHNeswqCchnmtMr/+mH84hSRvHrz4A8Gnz3qeNMFTlTNJj6T7uTjOlV7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790911834; c=relaxed/simple;
	bh=weYsdjvt9W00skknd2xGMEE7vE6leT75xDiuFyTgc0Y=;
	h=To:Subject:From:Message-Id:Date; b=Gv6GKpfgoDO2kVojQSxJjZYdaMwyGZ1IymcwWy/kjCwIoljsFUPa01UDHJBJkVLYgQEQq7S+5FaHJeEOR3xadAyrQ6jgyAoSnQYlu3XErRMqb1j0cTHBOeO0eklzPTQLaOEXlvuxZrrA2kWUYIDTI2+cA/2hkANKR6v4rMTFKqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFEI8SSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFEI8SSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B42C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790911833;
	bh=weYsdjvt9W00skknd2xGMEE7vE6leT75xDiuFyTgc0Y=;
	h=To:Subject:From:Date:From;
	b=ZFEI8SSaHrC/NiPpyzW8KarN6ocpceRp9R2yV8w0+grYRtkEd5Q6u4Hr4LCyDogXW
	 zTZQ9yUamQfgToh/tdomeQ6tDzY4Nf/6pwv8o3g9w1s3dLFCDPHS6jj8q1FY6wwN5e
	 gCCKXXHsCe219DBZ2yZ02gm47ARAE3/w9xXNPfnynizZiUjfYeS2ien+OPyWyfQG4x
	 Ch3qgxpvB6jfKfjMVFFzSIcUTH/vixGiCFfqq63h772C3kAZ58umCgAzTJlyCFAq4b
	 a6i5S5OjG53mu7GCo4rUvPwyJmYpzjUZbYmQAvjWHZpEvGRCmM6lpHaRlVkFBhlO5i
	 lrrcDb7Wb1b9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B683FCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091183373.18050.2046670318707732247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ace7fba93846cdffb5b1efcf8ea5ddec98f78edca74e2c4b21d49b95647bb9e
Date: Fri, 02 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790911833
