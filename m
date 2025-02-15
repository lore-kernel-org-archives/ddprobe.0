Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468D310F2
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739582335; cv=none; b=VjANpxVkUUR7oAkDECaHZmNUZnoeOwoUOttRDYZwQrr3a9RN5EbkOFkV5DVeHY2JwB7trS1Y26p/7lUyQX7fA/eHBtCqvwzkpHmEHhDsjIBIJpZB2nGKReWj3alRMOGfn+WuylJgmf2AyL2OmsdFRqqdop+paaafPOD/xEKQ4EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739582335; c=relaxed/simple;
	bh=DgwRWcKLYUW2+L2tKNoa0XhceELDUOwSF94BGbC307M=;
	h=To:Subject:From:Message-Id:Date; b=dtLmPpBVIo196wbIfrfclNlQiznDDIoibC+k6Xl5TVt7pa7NOtqDLF1CwgmjXbDhHV32si44pxNP8yvBlyca5H2H7m7qj3Ggnumn4Ti96wfTbgI9ctdFyhvB7mEIWNfFtfB1hLaOgk14+CuWw0yQbD2AuZWp1Q8ktL/iyRvbmpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ1+dltT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ1+dltT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEE7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739582333;
	bh=DgwRWcKLYUW2+L2tKNoa0XhceELDUOwSF94BGbC307M=;
	h=To:Subject:From:Date:From;
	b=rJ1+dltTVDGzCh8oSbxk6D2kI9gns9sHJa+rMrLZnTumjKl2DYVmStNuOVLg/G1pB
	 j7Uyez3ei2w1R0j5hhO1Uty3tvq1X9vsy7IO/WsdWiQlvLC9zKsvwY8lIzXFHvIDWH
	 tue6SycWEObdkpKny8kgPajAXtEl61eJcnfsRBIon4dfWnqqYdkDhxXAX/BUnqngTS
	 7jOAHaNwuOK55gDqPovabOfP2pOnFhjLXw8fy5LfI7iHYwmsN7ZweZyLDZtqP9rBF2
	 NX3fZziiHGeap4zlgdWQtf3a4pVDEugpQ+0VkZocMI4zoExHwuep/nnI1czb8oc/IZ
	 k03JP9OeSX8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99486C02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 01:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173958233358.7529.10602299043506341728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f370e5a702298c222d25fbc8ceafdb6bd210a40e1176244f0f499f19ebd62342
Date: Sat, 15 Feb 2025 01:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739582333
