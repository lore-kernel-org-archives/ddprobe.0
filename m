Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316554776A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723317954; cv=none; b=PhNpZ8ULIkcatJ51Wsgly2dHyFsXrmRTIRb0GmQpbIOfUvU3qBVq8FM6OiS3bIZE/xs7vr9uLWbF6arQ8Rq7tNTzeTSODGygqNzT6fkkAmncLDxwJu682EopYHvbLfcVDu/FMNQ9asrv40w9G0RBj+hvA9fUn89muNFB/Z0UVgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723317954; c=relaxed/simple;
	bh=cEUX0D+JKEAw6O4FUVoehTiwckn7W34VjyLDaZ2ktdo=;
	h=To:Subject:From:Message-Id:Date; b=uNmcckbleOpzV3I4odJQ5w8YYjY9I+pzAoh/adEy/rGtnEoO3WWRaiTeggXVlSVnUSIKTpHHoPaTrvuEzTEjrfL1st+ZqlIit2SE5pfVdNHaKWNwLADPxdTvVt2kHEwTMSW3bhEknTBkse+6aW3RMLAA1J7UWbuLW5Xfz661ncA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbivEyTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbivEyTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6575C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723317953;
	bh=cEUX0D+JKEAw6O4FUVoehTiwckn7W34VjyLDaZ2ktdo=;
	h=To:Subject:From:Date:From;
	b=dbivEyTL1vkvzMdZy0ifsDtUAsn3PsqNCIeofs24+ylxHN0y4Pjx3wVKoas+mYcNN
	 RhTsUtTMxyV/l4nvRvKZcaYOJiDEfA/XxPwnvrW1SeWatHmE+BHtliTWG+7qeiQZxr
	 qMzgsudPFrOBRj4jW/R93aZ/7vq935cLwmOVx7Vn+eVNVogKUSsOhhSQNcCestJFG1
	 Lx9+uUhYjUhp8cthj5UmNBPJ8SSgvAgsX4/gsaMWRXn6JKeiSSAKhrB5No8Dm1gwHQ
	 f7kIheQjkPCjdUdB6ec3n0Ohb3Y0d0RVcnB2YwxtK8deuIt+wApEesixuv+tskel8R
	 V2ebsujwxWxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91770C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331795358.18223.6206891527148221732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ebd3fee2b815489b4596e87996202e21b4cbeb18b7db404c7d35c20db96190
Date: Sat, 10 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723317953
