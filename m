Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287783C0604
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792138834; cv=none; b=PEiAmgfEEkKJRvdHF5SUaD8dDRzKUfup+Xd6LpSbE9Rqv97as0U/U/uKdE9EHVON/Dr6lU6dFdr1xioM6KNBiCnBq9rWsFhCwAlX1APWsCalJSRBYWpEtV7hGtVBhoOm+i9FVLINWh8pJdUiVsk4k1UdlCqZFXF0MNo2U3W12qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792138834; c=relaxed/simple;
	bh=nkp0HdHmLy5jhiI2tivoU8Qmm1rZCQmlrfZMlRprb1U=;
	h=To:Subject:From:Message-Id:Date; b=YqzO4hAFJd4N9GhYPOwsCBHc5hkXiZ50Iek8nNttFT63gVN7GJy+WCRinJud1blFNMkTNBSNnNqY5N0wWNR1ZKOeHPUX5UgpxE5SmJbWy0MJUmRi3JGz3bS96F1jwBIlUAYU0yVy3yDhznmmrT1T19OZLW3QMCsbLVRndxFYzH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu6w68jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu6w68jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF97C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792138833;
	bh=nkp0HdHmLy5jhiI2tivoU8Qmm1rZCQmlrfZMlRprb1U=;
	h=To:Subject:From:Date:From;
	b=iu6w68jJ47O3GYC8SZwNiAFzXLDXNo7jqrQVn7Z4dUTx27S8d3IyDzwAmyN+XA6eG
	 izDIeZPJOuaRQcXzf9LEdfoOUj7bRn3YlsxGUT9iuyQA+CBBcAoVR7td5Y55FBoyHy
	 AHy5Af7/hPn3GpW6EIdKI9Ikxcrbtybsx9MBWbq8N7hw/wZT1psizr0OyZMiFPOtHk
	 d3hFMH7L7BjnscuGlTVuBQsNdMHuLPzGe+6RSu8t0Khr/SRpgQNcZ6OVrdwo/p5863
	 2Qn6XJE33I+wDbapBeIL20Obhb+QfwdzcoOmVzP4KCND+z7IUpmTAPZn6vgsUV5uds
	 TxEhkVeSZo6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6BCCCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213883369.4451.10502812376227541688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9e822ca66c53b1c02b8047cb38d3fc9f08ccd8ffe0831e84a1218f5e03534a
Date: Fri, 16 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792138833
