Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2129B37BE89
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784226514; cv=none; b=QN52iFSdwuqX7uyhN/Kfl9gxtdzr10LiqY2XP3foV96TuDwFjJ3fAQmcNNpa0PcMmW8UxMuCrnZumkxq/+TppgnXnPCp4Jdqr5CZOq869RM0tGpW+WN3I8x3QK6QcE+YE6D7oiDj6ZBmM0gN5iFJ/gHmridK8sHRp2PsbSyVmfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784226514; c=relaxed/simple;
	bh=L5SZU+1Ur7OZ37YdJYXewUlvlaqpDbp6KwBBU9CZdMA=;
	h=To:Subject:From:Message-Id:Date; b=a8+oEuHhRIpx0I1zmFE3IR+q2zHKXnhqJTTKa0Wiv5da+GvPW4i23PrtKStfMmPpxKGkeJ8+GRunK7dgRo2HbxFy7nZrsXkTp0nmIMgBzWXWAB1C+IdpCkGcOAbXtAmLcgFqMznBe7RhMPO702kpIfWcNjc8uZotV15PWlOxhps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J28BCjJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J28BCjJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE76C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784226513;
	bh=L5SZU+1Ur7OZ37YdJYXewUlvlaqpDbp6KwBBU9CZdMA=;
	h=To:Subject:From:Date:From;
	b=J28BCjJBsoTzjcp9WnV7rjwvtYUiXKb74Vm6GQrcsemazwkfDh18kWhYDhZ4DKFT9
	 5aUHv32CE10eRsiIwTzlciXFG4UuWI9uO7mHRA9uIvc+jzLgsKHS0sPhmrmFi/Cche
	 BtbZirAx/zwlERJUQ+TSFG++1wbISawOk1tFNxncQhWGOnXuO3E4u4wTsacvu74NzV
	 l4gWTUabmkwl/mPbkYnohvjH/7X+SPjhlv5PF5lVbkOvMo4UmHNkBzQXKFDDZlj1Ze
	 pGvJ/G17QRPFDpMU6SXT6Kn/jj2Il4imO9I5+sK5ldCYcOgbGT34ZSTmnnyUG/W2tl
	 0SbfqOecinctA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB607C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422651369.18324.505180629420263701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acce7a9c608c29df740508e47fdfdc624b449548d5b15bd4ef9bceac9178ac0d
Date: Thu, 16 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784226513
