Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7454A23
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748846394; cv=none; b=PNTlRwbv8tATf4iKogZfNkhDlGlaSl0MHlY3xEAANyz2V9XM0X06jBCq/2BAyAHHWau5hwp1o80YxQ5Aa/72yXSdc9pks9A3QUXoEaLxva7q4KrERFhPmNmgvRnllJPmSVfXRTMxnBKEwjhIqxWaeldsFy7Q6TWZc4DNYYiz+RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748846394; c=relaxed/simple;
	bh=P05H4m9i7dVxgu0IIIvlwZYOZfL9R8DpJALXsIzzfBw=;
	h=To:Subject:From:Message-Id:Date; b=nv/FIuyuzymiR3v/EoaTDoaY5ut2Eo6XiuGaFNsLqShfhGBmC87etqykZfqTcrisUAHUjkvj7BbHI0GqrCNhrsU3lwxWXLm3zB721cN+7/64a9BjAzItnVgmEXabFjrZRhZFscslASkdAOSud19eYjEZ2cm1KoyXz80KJxfV208=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2jx7IqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2jx7IqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BB1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748846393;
	bh=P05H4m9i7dVxgu0IIIvlwZYOZfL9R8DpJALXsIzzfBw=;
	h=To:Subject:From:Date:From;
	b=n2jx7IqNoPyVcn6Ql8EZaz26RId0cGZ4moaAFRjDOonw4wIXVuoil47UJMay6n1IK
	 ig57egzMH0c94kdBNd8bW3F+Y/VIs8Ozj5Lf7e/2kEqqDI+AOtfExcQ5DmN+SZpcz+
	 pe1Ng8kvBUjuWh/EC5Oq/5bo4SclsXPW3Gla9tavJD9RH5yLVk59g2Dg28mVZ2PA0A
	 AeRg3U/BzFWGzjjCbtxFIE0DLCHq/lGjXB0s4M86AoNrcedn6eIyyMpoN0QXujaNzq
	 VBEczMaYU9tfyV6jHd80Wnme/VTo7+AUO0v486GqD1ItgPcYTAUJTdZ2hmHkn4gBX3
	 w1ycgXRlulKfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91274C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884639358.24337.7786155458174428021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ebb7214d10b0a67abd1b48e21c4267c4ed576c5fc4388a289f61c7c39e5fea
Date: Mon, 02 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748846393
