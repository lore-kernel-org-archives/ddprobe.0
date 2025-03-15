Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADF8187325
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742008135; cv=none; b=NlVhfSBkdH9oG0pTotnEBDeGkRoYqKU8IFwMQjJ9xUTE9YPbWl042Z5d2uAPcyLMAoAmodBNWRZ6Ec9kNceptbHtTGR0kiQ2UPJlfA5tJ1Yx73lWQCfff4zRVRy0QLEFfvvssE5V0uBBosbjROHaenRrJrnYlJ4GY9uPzG9xmwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742008135; c=relaxed/simple;
	bh=SI42KYi5gpaRwVt62pS2IrA+vjbZ7jTcFih3ibbKpNQ=;
	h=To:Subject:From:Message-Id:Date; b=pOtEEIbKGEpk4n7b3+Jwy5LUfuwL1xm1vgnyjYYKWk3reME50Ch7TevQ7MLPATzAULyj5e+Tc5JZXQPB9DLgKkNw1Hc11VkOnbW1yCP/EcFzUoq5gnwKIyYCE4G60LWvl11he8DoIix5E3r/rDz+zJ8GX8DzBR5d9WKU2zVPKc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsosTT2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsosTT2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE921C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742008133;
	bh=SI42KYi5gpaRwVt62pS2IrA+vjbZ7jTcFih3ibbKpNQ=;
	h=To:Subject:From:Date:From;
	b=qsosTT2YT0K0eol5w1om+lLqB0QsQdIyNyWEUauqsgG/Gn6OQ7A4GQVWqv5Rxx7y2
	 Lw9QYOfiTSl0wWPiCFXbjuyS/lYlF8bnm3NtSzeXsPsqaVIoNoePbAfo7leCwCMsNX
	 YxHoAiZhsNRPAd5qylDcNE3odnewCRFTWErwp4MQJ4PwrUlGGDddUyRmbLfFHWRnrW
	 0h3WzzYfWOfF0ID7V/v0FxFXbWTVAV8gHrNiBPHZUNxjCsDDJ1VEHvIiRlXy3DiCmP
	 /O8058B0lJ1htKueneWXrTx5stWzMtKTc6UixHXDLoBqS7e55PG9WVBaZPpQv94HB1
	 knqlmBgVlyKDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95859C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200813360.8226.3764385292062609266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b411c08fe1d11f4d8559a3c8d47f530c990e4803ed30d37e6c859e1d8786a6
Date: Sat, 15 Mar 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742008133
