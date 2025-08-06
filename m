Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2251CD0C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754500794; cv=none; b=P50TinWNLN3jwssv3DXCAuZ7NWIG/Al/VnbkUkCgQ78eLCC5r8JIQoX4xYl0Q81HgDmWFZXgklQr1pbSC+yV2sx4kMewspQc298N/ebi8tLKTBK3BjCKDoV2PHrTUQFkjrlrYVOEGg+nTZCFQFYecLHLlCfExNaJgWz4wFmnhrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754500794; c=relaxed/simple;
	bh=M03mDsDk3G0CTf74Uhvi5HD88/a9UP9H8eVhkX7hxEg=;
	h=To:Subject:From:Message-Id:Date; b=WAOLiosRpKDzmkZxWxOqZPUuE3/5zdlPUosb+XkoMExcGMyUV2tpOD4WIuBr+WgxBjrD/R3PgFtRLlqDq0FNQJR/GHsx40A82VdXpCbyjh72EqAIaVaglTs8utpsxuQWCv4zX90yKZonS7a4lLkM4NvUX66fKf+LYAa50Fv/jVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV+L+fVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV+L+fVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD9C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754500793;
	bh=M03mDsDk3G0CTf74Uhvi5HD88/a9UP9H8eVhkX7hxEg=;
	h=To:Subject:From:Date:From;
	b=oV+L+fVARbbtUk5bUT5DoSgXKK5hPyst9s6VOlMrIH37KWnHk+BtnDKixsnzia12n
	 RClMuBv7AGjyg2lAtIokymlkbE5Zt+ica9HQoF+UK3Qwi/7Vr2l+3Q/Eavh1zvsi2g
	 3+tbHtDIKAUsdsV2m9JWigfOKqGf0f77k4y4LmYlFxRnvxro5am2eWNa2GEpQBm3BX
	 NW/IlfnawJoeWPOaqBXRoYGXKQST4TT7UYNeGOrmEUD8N/W4wMfMkkgXGT7zWHiVOH
	 vYdTN6lxDByCX2BE1pawpy+e7Lz+8fgfNF05eIwH/m708dlXswVDqaS4cHUWSrNlun
	 AL6FlKNZGxg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E4C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450079357.786.3096331054149110839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294053e91c9993057bac04f8cd188032b3a455875756295f22577c17e011d69c
Date: Wed, 06 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754500793
