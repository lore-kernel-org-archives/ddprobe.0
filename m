Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28744276051
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761624594; cv=none; b=CyUiPUVLVWZKej+Tt1zwlTpDJr+cfUVeOR8PKmh7ZInCleY1pRzYp5mBoI17gP4TUVlnxm/uMHC0WZDDlLUMCqpVnQU0mprWcDzwLahDnPA6brK4HUlM+WEx+3KvhSr5eTWmljCkMQVu3v/OoON9TedptP7n6PH7TDLO6YiUovQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761624594; c=relaxed/simple;
	bh=CLfM5dEGyNiPNCCjUI4ugQnPjqHc5zk1fw7UmUa7D/E=;
	h=To:Subject:From:Message-Id:Date; b=QdmN7UvZTc7EFQdx9LSq2hcpcuSxFUO1eHUTZ4XTAkOaVbJby3jKgNr0ez4Un6KSog6WWnEr5qtGpVy4I6b1g3hHQuw/XTCwBby9h8pBJUXKbM4fO05iCSf6ofW1ouJZo8gThxa/S5Ie91hgc0i9AHONqYjAKmaI8Vvfs8Uwg3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qECbIR97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qECbIR97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FFCC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761624593;
	bh=CLfM5dEGyNiPNCCjUI4ugQnPjqHc5zk1fw7UmUa7D/E=;
	h=To:Subject:From:Date:From;
	b=qECbIR97a4l4dhMmufUUj9j5Nc5KbbZe/w4zgPxnmPzId4UIxVBH7zWnYf3p23el+
	 Syc4akXcIgSKqRnGfwcHPdWYD6k9KQMP3tiei2MZeujYKkfHInhpQ8+csnQgknFtoJ
	 eVso81WxNpjUK1EuLYItDCcucX56hJlx0TZiURrfrMQIgQ6TChXIhbAgC3zIw6VHNQ
	 BAev8DvfutVoTJ+1UKOJSirHCBpUcwuMrk9p9eZ+e1xFI/f5xdlVc1M1h3/CVWO79J
	 mDL2FnXnoq165USk3lKtEbS9LHGx1RE8tmd070aNh89yaD4T0HDqbO3z08VtOfio15
	 Syu4B1XEch8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F670CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162459358.16863.8893353664475755908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fd7fc7660e1e5ae4d597f499f7747ded567f4ff8ac02dc04097acaa4f05077
Date: Tue, 28 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761624593
