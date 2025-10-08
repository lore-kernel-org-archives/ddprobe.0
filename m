Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B85828BAA6
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759885794; cv=none; b=pS8FbS/38Ey9CLZ207zfyylmL9VmSh0dLXOxuYRhYr5Qo2SoR15QlITQz2Y/jQ2uZxIWO5WYXo0vRNL3QZduYsCxpgOibBZI6RKw/1qoIirxQA2cfH0VGcO3qwmrNIxUPsyh3G7p1TcstfXyUkos8l5IYzOth2MP1rXWZMw2H1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759885794; c=relaxed/simple;
	bh=UFoZ7yz1EgiGeQgSZbGya7yEfgrjr/vqQOAWtrEuYvs=;
	h=To:Subject:From:Message-Id:Date; b=NgVchmNIbqzCIImOUh7P2IwnzpfwQdb9rs6RGXvnFHp/ej45wusANeYL48Awj3929G7bWjYDy6iIsdUqwUG0k8hiQVY7mQRV+ED5Rev/v4Kir0hvu+j8kvkiXuaQDD9Hnv6vURX1ljRsJPH7dQ2vxPE7sXXpkFjsxplj8MBakRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEgjsL2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEgjsL2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759885793;
	bh=UFoZ7yz1EgiGeQgSZbGya7yEfgrjr/vqQOAWtrEuYvs=;
	h=To:Subject:From:Date:From;
	b=SEgjsL2hH/OW6rMiHQ9GrNW3/WFAElbrRQQ2y2/xBBj+KOFz/obyCt8c7c49U4XSO
	 QXrcRRNy49zVxAINyd76f1qYtxJL7TFYJfKZNKcjjyLly20BPu/98tSUOYr778ewuA
	 +XvxJAar4uApp1i3i2mY9e9LmdQDi8/7AEU/DA3VUSrfOGWlAWfLCGWzVw+/S7sCTf
	 o1e9c1XIIqMS/no3otPrK7wZ2boGYxWZEFT7IAhz6HalFVpyrrTW15UGUPIHmvVMwO
	 MHTrlF1qaHcR+Rr/JW7zX3cAvSAN3Yn8SB6bIMZOL/bPLJLz22bzcSOp+NUA5cVtGb
	 15hfs0VGa2ttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F652CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988579358.6408.15766121067608962241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2fa3c9144568474db9b1dc37880fbe39639d76dd6b282f1c771f606a79d925
Date: Wed, 08 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759885793
