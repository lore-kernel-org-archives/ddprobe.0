Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6391319C54E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738068355; cv=none; b=U9BslktohVn7FweSQ5kpfZt+OMZljxQhh3RsGwfuCxwpyHFDBe1fkx40PNtq8wvnTQuW1DSvBSBbha+tUHeIny8zMUK84nO1QdXfC6IXkpKKzFlg2K3MWZENncHhA6vl+IPs4htI86BpFcLLVPV2b0XY2y9l+0UbkbOUuTmjioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738068355; c=relaxed/simple;
	bh=Rm7RUgJEHmzQVb061cdmo01p09e1Ve6yIEuPVKNo7E4=;
	h=To:Subject:From:Message-Id:Date; b=e9e8bk/Nwt49b/YFuTDnHEzOsdbgL43bZcFmFhWHoMqr0y5019E3rC7zOd3idWvSq6TpbITjm91zfFG37gxgM7lfVNRGUgbhkVI2vej7AM/YHskSM+kmakZ7ayEY5AuqtQEdQ1MdnuFFUFyaV98B62l75MSIkG4WzP5X1YgkUF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzV8OFEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzV8OFEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD390C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738068353;
	bh=Rm7RUgJEHmzQVb061cdmo01p09e1Ve6yIEuPVKNo7E4=;
	h=To:Subject:From:Date:From;
	b=KzV8OFEOngqYvrViQupoclhRFeLg3YOtpdJBnOePktdIRWxJDCaJw2x8QHIicij4n
	 RH5QICoTd3kBt9LlEtx0innL4C6N5CXlrVYHzPBdn5hbusp9+Nyjt0aYn/KQbAcwhY
	 mkZugxCOEk5HFmRNLOY6Bmm92IVOitN+du9ucsx3Mq+R4wUFAarSD9BUwIgSUWF/Cu
	 xMSOSwRIDxgxEUrEt2zf0YMmrTQy6bLDhMVxtNjD2cfPgQOceI7h+mu1yMIf4l11E/
	 pvpr2myPNdTB4PJ3BqBn2BR16ooo7OJzVXPV3bXQcP1RzxnTWnvjRqTTBfrO7bf3Bo
	 nHKZd1OhWK+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ABEC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806835368.21191.16458694961612854427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223b54bba3d1ebaadb73dbd64f502e96da5817e3265918984385b3b4339cfca9
Date: Tue, 28 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738068353
