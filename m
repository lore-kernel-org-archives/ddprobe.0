Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9421B1A5B8C
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786688434; cv=none; b=GrN++F4Rl+e4cv/sLsxA6PHGDA+vt0qcmsnfq/9qI+fPYo/jVvHjxVBJuSNjPeZQoyHK2dM5bDewjF37FFSz5S66w+itCuzwauys9OY6oJxY4a5YyvQhaPTi7DuZ5Uw+Ci5x2MFWwpBEbrfjE7K8mEWIQ0xjJksx2vZckLaVJ2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786688434; c=relaxed/simple;
	bh=QM9BpTFFxhYP/wXatopGHmu86o6C4X7FMXBQ3yPVe0s=;
	h=To:Subject:From:Message-Id:Date; b=ezIgL4Z7bztfYO29aSe5jwhk7JPO7ZfWcF+lP4jgTFeraJjyYbe3jd6BONUVXMjlgM9aTuS53xSVIEXIFk9yX+ZSIoAlL4Ea6Atu1gGY43lzcz3Ey90zRWGNnQeSR4FEvhx/oUsmriSXYC8bbfQ5FL7guAlrDXLTLrnsxJSUR9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+pMrEiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+pMrEiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE39BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786688433;
	bh=QM9BpTFFxhYP/wXatopGHmu86o6C4X7FMXBQ3yPVe0s=;
	h=To:Subject:From:Date:From;
	b=m+pMrEiBDujm5d9PEP6Qfd1j/J0GyiWgywvb9vnMMSBCwE9cCr36PkhqfGZzaJmuX
	 xJ4g4+m/GQlNBcI/bZtM26ujhxQhOV6E/RLEe0nZMMkWaNAxQVYAZmCpY5w4J++pU2
	 IrJg8nQ3kCcBN+GATVk1iPfYvicPUosMgxgEs73L50CPWYkkqYFT2dBPKu3/e88B3g
	 8BXWtHD8nNHNZWJ0DNNOWyY6mI1vAuo4w550gbvuJvBupkM3hXGuzr2F5JsyraYcww
	 KAhx71cmIk3hkCqKms9YsRkceAyzUb6JzHf9nxZV2rnH8VipAT0J5Z5gdHa+bdVOAD
	 0l18cMPz4+5IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8D2C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668843367.19865.2545193754679462855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9a3e0d6c277658ee1e589677e1189229c3b14887cf752c375a3b88f4897759
Date: Fri, 14 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786688433
