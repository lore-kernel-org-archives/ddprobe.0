Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904B155391
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732910154; cv=none; b=AwmZmFZY+wGgn4wC10gUMZXAu7Wlf3JHnfEW3E8VWsuJ33100kVBK3ZuKxeORksFk7CBDM3CQVZnYt2KBJiUomhVKriM/QlvruIuRPvh1pHjQ7JVPR01CWywFHAfXRZrFkO7bGumDPRf0KVnVvj+5t3WfqG++bOcBlmbeK9XINU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732910154; c=relaxed/simple;
	bh=PRCBPg2PiejhwawUch7RM3oVXJC1GpC/CMLB9N2NkJE=;
	h=To:Subject:From:Message-Id:Date; b=lnYx3x1h7Ia1I5jFkjdNIWI63YVo8XFaxIHiYklrmBZQEvRuJuH1DCd+lypeejzQSk5zyeA3I8z9lDqJZNtxU9nX9G+xdp78qrRAC11Y1xPs7uvPwul62Hsyhkj+1SrsvU0M829o8O41f/MzSeXhyiVWBjXdxALX611ctkcvsgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY72eW19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY72eW19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49FEC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732910153;
	bh=PRCBPg2PiejhwawUch7RM3oVXJC1GpC/CMLB9N2NkJE=;
	h=To:Subject:From:Date:From;
	b=JY72eW19kbr33nfZ6NTd68uzH9ZF355CYqvdjArvTcki1h2COH0kaNIyzYYJDEOal
	 PRF7nu0zANPEoA//OmbpJcveX21GiIU3Vg8Ss35SPltRXoadsgJYbS2o5ASHfQ+/Gr
	 vBOCkMtHsCY5PQ7GrxJN+ttBqJKhfsMS1sPsjj791jTKJLFesQCe0DPNLQxKzTR6rB
	 twUzlI9HJCaeW7fsegIh7Q48voKXH8DSmn4KyvVu8cbVcQjKl41cqNvjimE7IvLhQr
	 OEiJbLa3pPzbUwtJ9uUHoYJrUzo0IydZ01kyiP6K/tBPV4y7OPqqZETPywmT9I1LTw
	 ZHE6GKEJ9EgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3411D729FE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291015362.32495.15785613769895139262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06d6a797ca3a7829a1495d0181b7b770bb45fde53c095d5686fa37f418cdc98
Date: Fri, 29 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732910153
