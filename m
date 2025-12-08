Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5892DF145
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765183974; cv=none; b=qTQW9zvNpd2HQ7XeJfEU2Q7GKqHiXM1yjM5GeTU3Echi/IJnhnyigUCN5Qm0upAXh1beOoPk+IgfuYvdQ/TXiU2c0XvKQaGYwL8AwRyZplWKYgjO0sR4iCNPWvZgrvbslH02r48bvuik8wPNYQH3kWuLEg67AmAWsUEFhUOELkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765183974; c=relaxed/simple;
	bh=ViJ7ZV1WHJ561Ydo4UbGxqLhZySpS2sIVVMwIHxjhFI=;
	h=To:Subject:From:Message-Id:Date; b=a9QOKXeU5s3Mc09eNXvLII7BZToprMkVpW7/yo4VNFwn5vHYHGpN+QWUJ74QNno/GJBu3kATrCfJWAEi8206ZEzZ7ftviQFjEPlkp7qRL1pP8i/wuOZHW5i5UYTll6PcIJShOP0a+fyJr1tg2QkNjXFMLJwnfroPUnCiZ0TmAAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrVXCMpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrVXCMpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765183973;
	bh=ViJ7ZV1WHJ561Ydo4UbGxqLhZySpS2sIVVMwIHxjhFI=;
	h=To:Subject:From:Date:From;
	b=MrVXCMpuIFCVC9ob2L8ScO//nuQrOjue5uovDXtqYrIL3ShPw1ZIbHQAdiVwdnfHJ
	 zaqNcsWyeGPOzCzZn+6haNbtdm8eZhzGQN2lIUEdvstvqVun3U3H+aWsGwuW3TiuX+
	 kP4pFwWVfV+ZqQajysiyYc51g15aHR6iwzWuj/iV1hxKQ0FBXF5ryiAQgCXtA7f8+n
	 48j81GQ9Ty1vxeUlWgkcxX0t/rl0ydAOM3dI2XxPGsl1dhxswvQ0d4GvGfVXRKJCay
	 VFTJTcSpVeSsNREueDhrZjJlzIbIBsR6ry0eN7b1LweDS/Lslwq0bQqC/z0RqmVtEv
	 dYGtNe3z0qJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97924D3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176518397361.24383.14309012529652546140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c71455b4ac0dd55ed2553023a12b458cbce87ae4dbdf2af62bc70fb032fdcd
Date: Mon, 08 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765183973
