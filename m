Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA8127AC31
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778335054; cv=none; b=oB13OqbwZxdcmX2c+B3WCWv6GHABWnPenCxWrwPjJFWUviAqE1rK/ZgIltrhSxDJBpuMHROMutmoKa4Aedwpp5DgGX6EoP7QCm+xyhsI6a1gb4YLzVCCu2sUQmMzxUKSA+bXIzI6BKnSJWqMsbPK+LUDtXh5mGzpyNz7SlQTJdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778335054; c=relaxed/simple;
	bh=1HyAsf+cTGIZ4/QrlSJY2wzx/RjzxVgcjPNp/vAMJyE=;
	h=To:Subject:From:Message-Id:Date; b=ISdGqERRCIn8JhRx+qv1neN1fjfgxz/Bf3WAzoPJWhoS8M2RAapGDuG5OqHpFBIZ2x/7BFTfTsVAMQCBycZoaAuGhoR8tqbf3WikLWJfRqDUE74Qnid8lUvVh4MAXdbm8+ehD9XFDjOiDud0pZ1zbVIGH//CdSnQ3YTfOO5h02s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDNxGYom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDNxGYom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6650C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778335053;
	bh=1HyAsf+cTGIZ4/QrlSJY2wzx/RjzxVgcjPNp/vAMJyE=;
	h=To:Subject:From:Date:From;
	b=lDNxGYomLqNaO4WM3JjVINQXGPD3o5A1BlnOQIN/4+M8AWjmIf6RCygQo++I18M6+
	 +B8zRIO2HHX+6RNeJp+4UFkwhLZ7FvbwQ9wcTAPCmaMb0PCwhG5jXfXK1YgkqqgR6S
	 tvuSXAQPM+2JeZHqwqxfiuV8iuTjQKOzWwdDrWBYXe+En6sYbEyNzxFSNWEST62yTG
	 JcD6A8NA1/vDV8Ki/t4ZBMpJvWjES3Fi8wkSdue6HVIIdnUN+lVoGADlYMi7oIJbiZ
	 vmAHH3SmOdheiu+zmAS2u/J82RcylGVnSUIvrsJFoJX9h2UIjT/lfffDwEw3/Tyecs
	 N3SURWyriHp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5932CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833505379.3351.9902372177909861794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138aac3db8446b5b2869626ec5508b3d45b6d3c2ba360bfd4ae5487d28f1c519
Date: Sat, 09 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778335053
