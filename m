Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB27330328
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789225834; cv=none; b=nrtxgBYmufn/S+hCmMoENj5Clo4tYxDRhRI/asXnqznyC7SbtWFuFH/Ajy/Ud6J3ulX+6Cn2sHIu3CkuVo7SGP0XdmbKmq9zO4vTKrk5u9ffHAk2mpizpRy0c4LUvKyFJPZP0iox6muYZMqFZczhhY066BuYY/eT6LBasHWuCZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789225834; c=relaxed/simple;
	bh=pRCNA1bGMlI2kWVTkDeL8xDpjAOGpLdL5S/RnrGBZvs=;
	h=To:Subject:From:Message-Id:Date; b=L4b5wY4lYZfoe/VNjVxwGr1CSbcjFaODZ06dDZdhtmvNBYpw6O7He5/kWGxdG4wfVlmfkVhuIVloa5WUQ8LayR33ZiV5bRtTYF2EFL/NGz/tbYrECW3jGTqbqnRnnQZran0855a+tJL+GqfPmRHJM8YLEhWutdfF6UO37tpt8Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlETMP7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlETMP7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE993C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789225833;
	bh=pRCNA1bGMlI2kWVTkDeL8xDpjAOGpLdL5S/RnrGBZvs=;
	h=To:Subject:From:Date:From;
	b=jlETMP7P3pXL45TR7Nsl9lJ/L43jZ1xNMQQcwm8noW0N1nmhZX8L4hzYHuganF3U1
	 UnA5xShKmNCxl18UM2DR61PEOEuyyAKxV6ECbjcbaJJpxg0AwG0sWXmEM+lUNOf096
	 CoV2cQgBcMG5TDd7dTBzN/7+XYOIE9B4+oaeyaHBYbC66hBcyk9+aWyVBu7RmP9q19
	 E0dNX16vszypE0Qs01BcgLPIjQQV4QeVAdnFe3qKB4CEQNeoU6gTB7SH8Dq+BewLkC
	 Caz2kUjBB1kavyxYTJx9KvdgEDCpZkCvt9fyscb+Dq9KJqTm3XEnwZFq09PGMMrtlI
	 pyCdoh/ZgTfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD06C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922583369.27327.15161979250547240190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01805bdfb579172c3ad2befaf68519c495c2f0c51562fab8e72a750027dedd9a
Date: Sat, 12 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789225833
