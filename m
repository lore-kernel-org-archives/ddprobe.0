Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D286334
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176494; cv=none; b=b5Nkbup/UFqxmaAU2MS5wQWw5Fc/J9y5OpRFglKW3KMmHRRt7cZB8qivz9h5llphgAnrxqMlQTJMR/9vlGcR89bJlUrpuHzoF8wOCFoTkxB06nGNve/duOl2B7UaZK9VRZrdfkN3kCGBxrw5uYHRzjdOWK2K4wbFvDheHV8x/ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176494; c=relaxed/simple;
	bh=m8+bTiSM39Qfsmqf9iTg/L/TaksyfuShBTUG+faT9PM=;
	h=To:Subject:From:Message-Id:Date; b=OoX5H5M8h0mI9Y5BexLpURE8ieIud0JLeq5NW/YfcGBUALkXkRhbah3XqesYSfq3Unh1bVQ5hFiLhqXG/dfI/dikEj9YtS0Ji76hgVWk2IS4PxWCOyjvWa3W0w3DZSoUPcuHXT+N7KLeL0iqkGZuf7b3E1GtYCYZ9VcwkXD+RMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVaTpeD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVaTpeD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD17DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772176493;
	bh=m8+bTiSM39Qfsmqf9iTg/L/TaksyfuShBTUG+faT9PM=;
	h=To:Subject:From:Date:From;
	b=EVaTpeD6BvV08nhwJLiMM7Hr4nzzIu7xA5IBlYR9o85EX4+C7LZgi6cYXu2x4YCTG
	 tZBsaNeqrGNyBdz/yxCIqnpuZ3MTi44ux1AMFfPx765Fz63Xphma4arcb8Q01uGgft
	 skE26cWcTinfQSxZTXbVJkeVMf/ZgRAoH26R76qyydUaxFyGcbsdaFzv9KukaoN8eN
	 Y0X6aRmKEcVQ6tYzNvCb0hddkDeT0VvKqKRShZI8bctNxsxbjHVKcmy8zig3k1B+Bk
	 96+wk5I8k4u4Kj3tFqxp8ZdHBW2JxewNnEexiMxsAl9ZQ4BtoFZCoAW1snraNPaSfy
	 wIF/O7/4X1e1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A931FD5304
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217649359.12032.5669056305943247652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f684345e01df2be500a0bd20a021b8213a3eeb77632afb149941eab3d732a35
Date: Fri, 27 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772176493
