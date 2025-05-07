Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8084A00
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746595794; cv=none; b=irIGKkYIBrAFvYHSjsC4YzCgjpyg7WEnBNnQp4ZoiqM6O6ECwzpi2H236MPQGb9BQuHw6Q4KQ+llf0cgcsdg2Do535q/Tdaw4tM209Cz13+FLr/oSONP6+8YEkS3rtTdfmLx7B4VCMQp1FGjfKUbMXvkGGO454wRZ4IiJd0bksA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746595794; c=relaxed/simple;
	bh=RnCD4hlpmdjGzKcZAgA6+zyvlGo7fjVxumxDtREUY3I=;
	h=To:Subject:From:Message-Id:Date; b=EtxG37Nh2EaEDt60JVctoCPRHAwz9zlWZyw5SG+qVWZZseej/fTBLiKMS8X360F+qdV19/jYWGSenLNyoeLi/aAd8kRCtYfkkIvbcOayugQbIAielKm4bPZ1WPFVxtXOgF7TiSMkj3DbSlTz2taWubzX0CGlVuTdp+JkiSDt5UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8DR/O54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8DR/O54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746595793;
	bh=RnCD4hlpmdjGzKcZAgA6+zyvlGo7fjVxumxDtREUY3I=;
	h=To:Subject:From:Date:From;
	b=m8DR/O54HJpuFzZ+gh7KLi/OJn8zZ2rpuGOr3BAbBuXI6cqfoTfiWE0/u4gBZVV/J
	 3EmKZGE6BjXC2jpQFA3QHeUONQZg0qQH593iIeogjWcDLv551eD+fRCdS72j9Uchmy
	 9pPGXMdPIJxy/Sk0jv0h/a+F2+ob8lvaRHYgYRzqEQr6ZANI+iqflfAaHPTO8kjosE
	 EzAdRnFjbIRzGDJVN1pjNRgvZ1nCPqL1nM7RpLLyLCVIdybRfk62syunkqyFWgtxm1
	 HKHZmIiQjCWHxnCyyPypMwcAYicusAbsTfnirFR9gi4/QnWpNDx84erdyvYDw+Ktv/
	 3+znsPD/wrhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFD2C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659579357.18769.8940991582514652863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da91671681a5c27476e75cc17852122bee80f41234a9b7dc9beff3d7b9683d1f
Date: Wed, 07 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746595793
