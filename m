Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37006223323
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744840194; cv=none; b=D6SfBgwnnM3zfbKVsGHv8uJbjujpqDA1XZ6Chb/6+qpPtThQ8nuNBo2mWw9lTCkaTaDZ1RVc9NVxMc/+pYIaJIef/rKj1xcgkNCMuoLC5xzrnrsuFDPCabS3vesIpcFqm5mfiYMdevEs3CftYY4VjNgxyB/Ni6GiPRQJ7k8Q34E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744840194; c=relaxed/simple;
	bh=0aCtB059NGGi83wMTnvdh2PSso96nyZiMkQifnFrGWs=;
	h=To:Subject:From:Message-Id:Date; b=NCBGX4O56kqC8MIiBn8xXHgXp9DFvDDUdlFbUaF5JihUgvWbOVNtt7wHKdyfaPFjX9nJ1l0pgNfpzK4nJttdtdDB0Sa0to3Y0Y1/2Jqw1QRLqGMfnCVO9IdK4WaBx1o/cKFFF2s0vktG9g5+V+LDbo752zYNT5KbYvppY/1TNTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkNE3ZpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkNE3ZpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B0DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744840193;
	bh=0aCtB059NGGi83wMTnvdh2PSso96nyZiMkQifnFrGWs=;
	h=To:Subject:From:Date:From;
	b=HkNE3ZpL3Ws0HX0qD9DVIFb7+ug/OPW4rC4CfCX7uahd3R/nXeKM1m8uL+Nzq2hLk
	 bNoQexaq5h2Y0fAdrQjXAOKD36n8iVTUgjY+/4b49fctPdKJm4Uh2l7T4gUfYJUw4d
	 P5fqXnutyolXmFIB55pc8SpoA1H1cPBgfnNp5Dt08DS/dZWOn0vU1Goy7khxR0wy9c
	 uk4yExrf01axTXZ6LT+KSExSpY+X+gGsgOpdJyY/n3qD6xYEDWoP/RvMMzVK+uoLtM
	 T1kEF/qRX/z/Q7mciTs3OAXNiqJhdeOEY0llK9Y+wd8c3zpkBV2QcHxzIVwCzD6mJT
	 xUYotxCpkj5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995ACC369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484019361.19516.8251554508099145057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740dbaed8a40613d84f70ceb9b60dc704ada55f2e3e738a297164515fcfeafa1
Date: Wed, 16 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744840193
