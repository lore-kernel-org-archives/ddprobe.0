Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1925A2D73BE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160374; cv=none; b=mD58mMEIdwNZlwNK7UiHnG5SvC5YT64pHzbZ1AeXgL6pQH1/qLH3ojgSCsfjUmXXljhsi7aJsQM95rrellmyYqo6nj/sr/60hDO/qReIMPjHlsnITmTi1cs3uhT7NPEw8cE+SzHDmJIvxm+Yz0KoZcx945z8mFverfQuFPz2Rl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160374; c=relaxed/simple;
	bh=4zfqLeA9lchc8aLzD99NumQ5ryoit2JeLZMzoAW6Ez8=;
	h=To:Subject:From:Message-Id:Date; b=esI831FKbJyH6Wbd6dreR0jfpP6F9dU7Rfz04JvIRWbUZo4SrRP6uyUYEuEeoEH7X+StTSmDAQlp5Trk//t+O5f8FuGWdfIY6jHO4ggA4H0wHwIPUcOcZl/nH+7KzRzi5thaWp+YMiB0jeQ/eq9lb4UhGuBuau7hw+vWnppe/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvicE89d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvicE89d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2204C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764160373;
	bh=4zfqLeA9lchc8aLzD99NumQ5ryoit2JeLZMzoAW6Ez8=;
	h=To:Subject:From:Date:From;
	b=ZvicE89dUi65aV6FTmXQA9S520pP0CDYx4Olqr0/ppNRq2fYTnGoStKeZEPVhGDv5
	 70RtESPiCjdGJu4ZrF7VkufOlRc5VgcQiZ0xBSGfsgfx0dOm5rPN8jjORA8+mVxM9q
	 UtE12/MeuM/6Uyv0n0KX4YH087ibm7m9MgX+9o6uaO2/JKXbuMjduQaDZ6+BzX20KV
	 0MSCy19htTkP7a2D8pN7UEb7oyfqEaExEMFBhoUhOAuqJCggmIOt0ACDK1ta0RHGfv
	 Kzz67FM8nQMyQEgmFWekg4iJLnT9twv9TZxv2P0q7k1iBLFReVlVRGI8F/iI7pQt9Q
	 FiuKtPMsGB5VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BED1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416037359.1116.12564279925337243282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bcd66c023a008ad100a63415abbdbded3bd58742ed6d8232e78c3b84b36c97
Date: Wed, 26 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764160373
