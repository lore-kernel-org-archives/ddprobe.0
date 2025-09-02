Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCFC2EE273
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807794; cv=none; b=hNKgJXnKsZXSyJA+DTWz+7lLF71WUjnm8JmnfZUEMd2I/NCTga/oqowyAmRjo0cdRz6zGiv/vJWLBMEiBPz8YeblWFVX/lEzQrXDg/hLni8RpikxDUKHmMO1IyOfyLgJ/DidqgM3DPcLClz7ek8NjpK+m+lpMFWkingkiV3V6Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807794; c=relaxed/simple;
	bh=q0HFz4ihw8vz4qIL+cQ0XvqQ6toRLSIVg91c9tepqqU=;
	h=To:Subject:From:Message-Id:Date; b=neymXLYBmu4O9COv6pPW3pKrsTs1RzK3OE07G/fygYtJksRYTd6gFzuaSkSbbWcH74J8aYHWRR1Xu5JyjvclRtGMe8S6nn7RFMkVjrgJ75bk3US/+VznbY7zTG2J7vonewRd6w00/gxh0z8qNgWqqcLnKV8E4ZHXCJ+a3WrTtjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+KN12AQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+KN12AQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756807793;
	bh=q0HFz4ihw8vz4qIL+cQ0XvqQ6toRLSIVg91c9tepqqU=;
	h=To:Subject:From:Date:From;
	b=R+KN12AQGqpHsCU8dQIntTBeL9OmJhx3nktXdq9OujIPz16silYpKgdMHZOGnXwA2
	 3xsVVhFUG8MA5Bgv/m7BlROXZ/fG1CRQ+mjdV0j2McoEKdF6kCFjk6zswC3I8TYnZ+
	 cuBjOkq6r+XSrnqw671jK1m6EWFI2HfgWR7SOZho7Q751feVwjO8oMaSackjHrOifE
	 hJ51pEBdMbvCQH7y+n4T7+UjSp7wEEfFK/zI8GUahjpdvw4FwejTP7b+dW3TY9wEdM
	 N4PEULOgdBYT2LFBjSm5Nt+K8+/915lxBZDvp5dn6fEWNsrBfcQml41/xUbVW4mmyC
	 obZ/mrLUtbeTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93093CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680779359.30150.7468578539373937379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef170a786ed88c8ab9b70b79a39580e05f54b25c6b17fb077d55f17666caf69
Date: Tue, 02 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756807793
