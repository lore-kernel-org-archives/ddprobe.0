Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAA526B77A
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755630594; cv=none; b=fxOLVSSy1YoaB1aGDG8xtSjr6eUA8GaTlTV8mMB/h39nzsVeYRE+g7s1iKOIkInm9auC0/sq6Zn5KjBQc6jGUGJBe3mJtR1vz+5zs/ELyySGwDLVe+YXbQrxHB0lCYYEYGxfpr/SptO7YqZDE5EmMHLVl0G9pfYfCR26vxej1Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755630594; c=relaxed/simple;
	bh=Bay3uUnezYJ0LUl0sJrCj30h9K9228Ifylr8YofIfLI=;
	h=To:Subject:From:Message-Id:Date; b=FNnVVn5FyOEV9fqqkfrRB+f4zm/+Sqe6LdfzC2jSXoAtz3MUIgaGYiIHuVYFu5+927yWJt46dH3KUDl0qk8n2HD4gSdkCOrAY8JRduASi2voTw1Si/cE9FvRUM6iUReMpnbD7wacYaQ+6XImezTqnSkVj+5rxg9kTcbS/Pp1zuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIPuJTa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIPuJTa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755630593;
	bh=Bay3uUnezYJ0LUl0sJrCj30h9K9228Ifylr8YofIfLI=;
	h=To:Subject:From:Date:From;
	b=UIPuJTa+0DlwyewXr4W3MVfqBeM9chinAKSINfmeLyuyaNucHXTX3HNcoElwbFadS
	 4eInoWNUMrBoB7mlobNOy1OlvkFGnsEXjRFAdM8djwlh1GDptnsmopyhI+WA6ujaBk
	 FhXeWf+UV0v+9LohRVtj315hepBfu7JJbDB6NRdy/i6YaPuVN+y16aRC4JFOuvKyi1
	 Jea+EuirFcvQwfnsWhYI0sj65b2dvwU8J8Mo4Gk4TxeTgos8AkiBvj5jcs7eXQR356
	 RwJCVe0oj3kq5csgWJNeAMhvdKPRoO/BKF9hy9nU62yZYae/eXhMq8bTYppn6E4fo2
	 IrF2dqgqlFp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9635CCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563059358.16825.9122686454228457995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6abaddb2b501bd66767c5d1344f46630545b77065742ade8df9d0ac63002e9f
Date: Tue, 19 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755630593
