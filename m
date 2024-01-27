Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FBC23741
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706398697; cv=none; b=d4qnOqIVw4wTXr02xou9XQo7FW3O5JsInqYXiOdMy4yfT3M8grmzxV9hq9bcojquEmXrxYJnc+Ji0uAzmdcEhvjPg3pPw9ANtUyP5+QQVzPRVoz8BYflVlkp3Jo9RMOq83OPWFBsxSbS13Y30tEJDArB7PlroIJwbj4FS44S0iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706398697; c=relaxed/simple;
	bh=CbsPilwRFO6192H9jIV/i/OLA14Uv1qaLZbla3zAAP8=;
	h=To:Subject:From:Message-Id:Date; b=cLduFvg6k6lum5RLJn/tECR9eAHpyNsakDITMpwcO5K0gIg++dkYLhvaGx9gyNdoS4Vuu9aengBP4hxhW8EJks0MNGsuOnNq6/Y9r8q6MkZ3AxP719sgVYMFwIWbGZW3A9m8aUUUTQH+438obFsg6KytiLYBIm4CdfbVrgXHJJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulMNoZtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulMNoZtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707DBC43399
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706398696;
	bh=CbsPilwRFO6192H9jIV/i/OLA14Uv1qaLZbla3zAAP8=;
	h=To:Subject:From:Date:From;
	b=ulMNoZtBfzw2pXquh/XRf7zJ7R8ycLp+thUzvLlLeQrmpdr1bOYkL7I0voNFzErdF
	 6Vb1ul9ydAAKX9vOB8DWJKF+NlSu32lTEDTEPDh9cbMsowi6b3iGGQhjQMVOB6Cwxp
	 I91Uipb6rxmUa8cpURY+ebnXd64nYOlDqGZ1zBYWY30/hyBftai9hsDkJtOQ/bU7q4
	 XfOVkzLgzyKoF9qP8LwxYDJ0+xaJB3MfHMcMo9UGfGrQFWBFnwDnqas0WYm2RbyD54
	 0ic1YyvxL0zHLrb3+Ebj4Gllx2OjwBE80zvqhjouxMYegaXw9/Duzmt18/h80qiopE
	 nxs4Z8H7rlUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A734C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639869636.20166.5354050248642665262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a40e30ee0ca513950068f7a81ce4165469fc3e61d24d593be6412b8b3778fd
Date: Sat, 27 Jan 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706398696
