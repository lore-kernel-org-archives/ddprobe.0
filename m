Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE08E33DEF9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784823635; cv=none; b=a1dmoJC9ek6EWVcqsZ5/+Zcj2h0WUPh8XMMqaNjLjDLboX7+yATWD5JSb0b/JJqS6eH+fXfruWWmrebbXWP9Pz2WfnjuqtlMcHfyOpHoFUxCJ8lZv88lmNwBeHFUwzSzsCI3uLr8tYP++0lyvPCWyNzFX1SVG8f8a4WdfBRxj/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784823635; c=relaxed/simple;
	bh=pFvwmL7dHKvYLYUuTgnCAvKIg8oX9l2ZDPlkVnz77cE=;
	h=To:Subject:From:Message-Id:Date; b=kZwYNRQ7HzzNVz38Q8756xeLGWYzVOzsSQZL8Xr1uT+2S+6nNdQR84Dbf/rqHYvxEhmUvmxLGD06eW9AF+rq7n6rZvBpgP7eeY9pEhZDEYiQMPgBmWxtoi9yWZI6hoc6kzRp/mmx8u2R3UcnwRC5J729wWa8P/EzIcJDxtEeRWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz7Ib1r2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz7Ib1r2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE311C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784823633;
	bh=pFvwmL7dHKvYLYUuTgnCAvKIg8oX9l2ZDPlkVnz77cE=;
	h=To:Subject:From:Date:From;
	b=dz7Ib1r2K4KaTem+o7el2bIoXkAWm1C7FQkGGU/r+RLoAyKq83v42fXV0d9fT8EdG
	 htpgJa/Kp6bneCyEgvf/IfTtyu1ygBpDdfx5hLWx7ucTeDhGUYEDglcd+1s7xD1VPC
	 4QhNuCzla6ZIbl0g8c6Tu8Hz/xgRRkhFZBhm31HW3GMkupKCV9+JDBiIn0V24Rucxh
	 GEjvbe+VkNB+mdyAuHIGeAfieFPP22wCkOV6frzLgLDZBTnCNieRQd2WA3K98ZM+cM
	 4VAgesFB2bjyrhC6xGmmJNRhFw7rUhXRKNu3t8qrw6vAB8FPMNRb2+gSxxuJAih/s4
	 TbeCvGUo1Nk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5EC531F8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482363368.22414.9055928041416627384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527dba7425313010f9965642f728f5f1d94ec989467abb5f68632a7593398a4a
Date: Thu, 23 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784823633
