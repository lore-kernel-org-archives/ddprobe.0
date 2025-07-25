Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332484A3C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753462794; cv=none; b=mn5qwjiwbGjSBoaOj/Y4IBmrOWwoTVhQ/FMEx8DrimxyeFiM1CReT3buPekcPsokwlm2xFYyK4kSskCBGE8sruRK5x7HrbNKyxCkcW1gnAfOXfcpI1XSUIAsP5LfTWPDPooz4VtpoGzQFTeojv9Qr/HpMmKBpSs05x11mH2GVGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753462794; c=relaxed/simple;
	bh=Hyo5cQP/UlFsScOgo9duJnGjiByt8LuFWfQriZwEGZI=;
	h=To:Subject:From:Message-Id:Date; b=ofjSfIB7e1Ih0ho8NMfTVuOW7LqBtzxETlLatEEQXyEkFoAUMfQYHbCqZd0CgRn7w6yqTyyH85dw2HLUml+bLLssNFgfKU7EJWIbL0qxtuM78OnSalLYTjb0J2+XHUyigE4IKpsktj6kjzjf7+L3FYaSF9l5unrHi9mv8L/sKNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1+BIp0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1+BIp0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753462793;
	bh=Hyo5cQP/UlFsScOgo9duJnGjiByt8LuFWfQriZwEGZI=;
	h=To:Subject:From:Date:From;
	b=V1+BIp0W9KpwA70Iu2ExAnREOW5AdTCJkUzrpkC0HlU2MgtKh4ISqE1WyTFNCzKUw
	 N+lGeyyZVk8ghGdP6Lhukq/wC2sYQiaEc2T9nUzlrPGb9C0PzerryPzEbZRh6jdlcn
	 qHpldyQF7S1sGkCxEy1xEwr93B3x9xGP89YNCzHOeymB8MzZcH42UYZPxNjoenS8oe
	 e5/ZgViPC52MWh0m9Sv6M3P3QPYscnfiCaC+UQn6cf/kfYs8eJcnNVekIs8TPahLYv
	 Ozn358J37zalD/9gm4D6i2Mic6Pc2Q6+In7ef4oUZQRok4X3FVn3k7cOjARF5sQWQx
	 rMnydDI9gvtKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA3C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346279357.16383.16879613676939436707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7824fcc892553b37d196d22533fc1818d212a34fdf206ff65aca4f01ea614327
Date: Fri, 25 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753462793
