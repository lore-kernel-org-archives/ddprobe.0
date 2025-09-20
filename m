Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF919309E
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758406194; cv=none; b=At9+2/CJcz3YpHFAbi+zvbFJosb4t6CKzjRBTg1gq8vjso9y+sr16n7gmoiY9EjxXt7f3sQ1TinqDPJvmkv09u2TLTy8aDYogs8eUpQ53rPCubjcE4KO9WVr2gTAYIOlmHOcn3XRbkZLAf7P7B8s2CbPdJatzwWyIGl5tTVVWxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758406194; c=relaxed/simple;
	bh=vy0HrmDrhNyoB74CXWKjNvXRG33j0XTUe0/OunaYptI=;
	h=To:Subject:From:Message-Id:Date; b=flWa9BRQfpUQQTfBcEzyt6DP+i8Rh2kz4SeBeAyDIIcpjhZWNWkiW7KsCETKWr/MHEMuLp7aOYuSzMOoDdgSMjxsxQhf/4tGjawjwZ4WwnSR+XfhbLH1Bq6cEfUkD3iXnENuMmi9fHgAntE/byOghV0cqMCcu++8CA2RDTohLsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXvyGsJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXvyGsJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA133C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758406193;
	bh=vy0HrmDrhNyoB74CXWKjNvXRG33j0XTUe0/OunaYptI=;
	h=To:Subject:From:Date:From;
	b=cXvyGsJOZ5zL05gK/klL1JLy5D5b7G/9h/HunRKk4EmZNDd7DxnVzQS56aEG/zLIj
	 kdE/3hVL8qyhYBCLcktPp9TgDEc/LcV6KJ9lNBqtX9CicMhBAoBZQzPiKM2JoXUHhM
	 RgXjDIgTLqYlrlOSmkQpI0QefZMztsI/nlxw0ObeJjUxqGjTE+/Y0QpH17YEqriX9t
	 4aoJLp0WQsqSWW2+CcjOLUM5S2Z7uWRwgdqLLlQObeZzh5BD6yKtK0YbNG75ELNIna
	 opIIIWOSPl+XoLmp0qpbIaHCnvbO21Kpvc4f4CUM/kDGtpqg7uhQEQRtX/yif9hbeK
	 IiUFXTDo8+WfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96270CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840619358.25252.13946107514033369228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8c13e7f4131e726c0cdd0ac0adf33962dfdef3679594642a075dbb951630b0
Date: Sat, 20 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758406193
