Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E53313CFA6
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741273134; cv=none; b=qN4EEg8SOwHzRBeN+1jlD+c045/DcbQa2l3T9uzbQEZPZUqdW/selHlPLZgVQ1VfPRPMyy7onTfkS2tjADTCoJ0sIa62F52WqHoxfx2d+Kb7hAQc/rymJDkhOZkEMUZVLFJMz1Zjz5WpGIWCH3khEfl9tW7TIZkWaBoFTK6n0jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741273134; c=relaxed/simple;
	bh=FwtuBj/4vJZazTUAFwbr5H7h7ZQtPH+HmMt6ANmFQT8=;
	h=To:Subject:From:Message-Id:Date; b=DWQ2D5SIMW6DwkDyVK/+hB7D/kiC7Uc9KZ6qU7r8s87ZPm+q484SqxYNo/39NgyLl3au1JuOMeyjz0n4MEzqT/vQp5hlSluo91Nxs3DwSJRnHNvbMkw2UUAtdyNIbEDrPVsIvK87ARjrFK8BqTlfrNsy8AtXBW761/hk2SIJ1Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umFDPbHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umFDPbHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1E1C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741273133;
	bh=FwtuBj/4vJZazTUAFwbr5H7h7ZQtPH+HmMt6ANmFQT8=;
	h=To:Subject:From:Date:From;
	b=umFDPbHJtjn+GKIternZq5efkZgC7EJjXwM0ekon3pIhXYUEyoRCejux6vEwo4OvG
	 vgf52a9OG5Qjnv584FNdFsVGrhSCfM4umwX8qI1BmQOJ62IFO3IKM65AX0QBdzIDZR
	 +5LSpUIF/z+W7vGM+FgDu1daOjweJbNRHNDRnCwfK90kU4tvMyCfc4vQReZek2FME0
	 0Cjmr1/QVijGBsHe4SlM5he8/CBrdJwGJ24KR0TGA77uWo88shU99fpj6Xu2DwiALq
	 29EV5XMswJ/SyjARhA9C5fMxico9fPO+W9QcetJvOdLR5vngNCdWM8MrYAFUDQr/6x
	 o+BCa9yhuMxww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DEDC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127313360.12329.520011158816664184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65891b1837130ea85664ad5c9f9368ee6c175bbbe3f1f4b2abaefe5a51c48410
Date: Thu, 06 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741273133
