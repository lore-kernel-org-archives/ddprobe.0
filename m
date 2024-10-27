Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19417161
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730025954; cv=none; b=B/OoVHGyFJTYEE7eIb3b7qlLR6TD3IY8uku6lWwCbRC0/9GYdoBoU1OMu74cHZKSrRWetdLmmmLzEayL+wevbxly8yW2h8JGYcV8ZX85ZwbVAAddlLc0OYvIxiYtoj2ODnxk46ze5yFYbnUgAu2jE/EwoJheTLenR+k4L0R/nrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730025954; c=relaxed/simple;
	bh=3kD+9SpahlfbSnU2YNTAQKmaZ1VVGXnACt48hYqFTvQ=;
	h=To:Subject:From:Message-Id:Date; b=f+2U7ImAcrWOE+I5CusclqXoEo4ZWUjUuolP9hvHcWByw3+RULZnJDlMBGfT7VgL4Yi8N2szziElarLKFakra3slKD4jPPbbpSkg94Q0Lb6q/p4maXovm/NfIPKFa1t6Vxzi3C22VBMcWeZIUMjd5T7fb1zcPBaoR2wKIPiN87Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnDgF3k8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnDgF3k8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4216C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730025953;
	bh=3kD+9SpahlfbSnU2YNTAQKmaZ1VVGXnACt48hYqFTvQ=;
	h=To:Subject:From:Date:From;
	b=dnDgF3k8tvxDZGKaDj3L5zA+d33i2020Bq+AVNa16G0KotUNBmZl/B699QhwXmiuO
	 eTBPHZAtkQ5DC0pQpFygfyHl5tkWPn+mimkJa7HWHLxR4uHryY8PE54opDEG7IMk9N
	 z3vUyl5JSCwO6A8nZgblJRylTIlZO1u+0jmkFbUwitCFr1+6fatRAtwgLsPl7AHR9C
	 mgYDYIYb3XqYfjG4M0Qkgsx9eRN0hJ8+u4sU9LI3PWykBF1xfzJjbRgGUrr5PqKPdg
	 9Jdrc/1M/XaMnpuI/e3RjZ+1EvBxlDwhqn6nJiSxTn3F9lre34TCEBuYz1/s7GH0Ru
	 /mD2P+iaN2Kdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FBD10C1E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002595359.7762.16669907790662885784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59f638b3e1b36d47e50b17b989ea2fbe582d01c8d6b048542b95c8847d3a3a1
Date: Sun, 27 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730025953
