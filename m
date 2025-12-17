Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E22525DAEA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765938234; cv=none; b=HyIlnZ9OsWUbbsdiClPct01PjWO33Tg1QSZZdKRJcmLdupJOYPYbslReU8dzdWvdefufFaRTRPIP5DJV3MSbZJMppLU+SrTCrBzxFrmvb2EK0nG6kR2TA+CZJ1Zol+zzZCZJ72MblaHZynHKWvVOkECx/bkY8MC7ElttcsqymCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765938234; c=relaxed/simple;
	bh=gjrYCiG1+LO6eas6Nf26LQ4RVe4A8Nw0zrct+uU+QPI=;
	h=To:Subject:From:Message-Id:Date; b=f0rdyyRj0/fDELHGPTXrSGHQW0stJmChtW+OSdQu5obvHFoDEuwGlu1/B51qMo9FsvpKbce78GVGQxDpRr2HTVWR6gZmUFukI19ZrRckrlD9IMR3JwSHpf4GAjFQCOZ1HZDh7wzvzu9C4nBgq2R3yWWzg4ujjr4u+rUwkymWlZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrSf6fi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrSf6fi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C0DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765938233;
	bh=gjrYCiG1+LO6eas6Nf26LQ4RVe4A8Nw0zrct+uU+QPI=;
	h=To:Subject:From:Date:From;
	b=nrSf6fi1ptyaMsbMO+deGr6IYGziPh/uQmwQY9OVoAo/Csk3N16tVfqc5WW9hTu75
	 ZQbbfFc8SY29madAAtwO/3D609svrhJCy8E526HiCdEBXbHvxSoXb/Vu8Mg+s3tQLa
	 Y028h6zrqBsChLyz/JcD4w7kvfwv6TdwQZx7iut2zSWPOkZifDcOSPHf/R7UG4qtug
	 PvKXtoeO7pZY+hiHHvS9kdDWSSMAFa8qUXY8zCwyZug33Zzoin1z0EB7tfRk2Fy24b
	 G8bZPX1Z3qIYWVX/5oyVl6+lA3UwI5vCM+7RGzAZrUOBCq1mfnqct3/xDFXsXzzamT
	 /5qmqwQ+ZfsQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E124D609D5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593823363.22198.1600316963768907728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf021bf8b30c9b66acd01d1d11c909ac21f785ce115a69f138e9f1f7c950ae33
Date: Wed, 17 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765938233
