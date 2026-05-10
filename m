Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2499D345757
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778425834; cv=none; b=hIAT725jSmQzseG88Jl6F3drq6l7TeMchjEdoxywiXgIrKdB2diJDk1wVkPwXS6jEVpymdfq5fzFVR9rCZAbkkIdwm0jEeIBeoLZ/3mNufGcnfmHcSyKCXbHuXNGli3vao1Z9Jhsoh/hhKh7dNNjiHaNSUolloLsNVrwc+w/VEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778425834; c=relaxed/simple;
	bh=21AJCsRs77v11XCtVs4WLacsrN9enCLI3MyNM1h9vIw=;
	h=To:Subject:From:Message-Id:Date; b=ChogZLB68BrD6EgUK1+BdyKmZRFipx2LZj5kYzARophY9+M6DROZPYPCLYpGC+WOPQNHKhH26v93jEhzfrToN79L8zyCHup/bjyqIlxBtnhf5YhUluwBeCz8dVeeA7D0Q5lllbixvTykAtMqXTu83GiWNCGTWvXayE3YCL9L9oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuDQi8ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuDQi8ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C055DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778425833;
	bh=21AJCsRs77v11XCtVs4WLacsrN9enCLI3MyNM1h9vIw=;
	h=To:Subject:From:Date:From;
	b=NuDQi8akv8hJkIsfZW8RKGZEX9//5xvHetDQNysyCv2V9ZfVKgc+pN6v9c0K5DeZR
	 yjJ4V2m3+Cgn97M1k4hzbYzgrWLAVddADjEsuFM7BU7MZfHzdBIQpmQ4dP5ctTu//q
	 YX5zeU8HdEZ6Tqqw224e8mfqkwJhMWoxIL7MMl8ved3fki6UKUqWVJQfEGwePnont9
	 udPE2x5hJ6lvepXFgjvsuvpkEdFMXjA1/Xjhfp/eRlnVOOrl6jiwx9Cq7qhjRzJygS
	 LF3fm/xzadbtqvOBOG5vm8xu9JH7Jh5LR6oHKJcO/zEjXu8IR9Q92O9n/ywtlKcmw4
	 MSy+JgFhS2jEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD822CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842583368.8449.4104950831972182481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd574044db89664323f4906e4f1885f8bea4cd2e23a75b051f57d43ae221395
Date: Sun, 10 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778425833
