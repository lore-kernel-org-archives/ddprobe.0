Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC6B18859B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775016894; cv=none; b=uIjMUvBk1ECE9hTSR52wlqvNcwwGWJXvGh8VjCwB2xmTPoPJuk+CDAKayViUpgXb7UFfb8Y05KCKR6fqBFU67+LzHoUs2ipw6NwBFMlYiDPuVbOG70Ya60z5eZEhDLnHc7Di1RJdl75MhzDMRjKkqLEQf6CmpJmqoKkhfwXmkXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775016894; c=relaxed/simple;
	bh=v/cc615PX/9+6a0UetcDsiTaApGW9pZ9uk2P2l+0gZU=;
	h=To:Subject:From:Message-Id:Date; b=VF/fAj/FbNbl3nxTA+2KMNXfObCh2BeYjObByZeG2au7yXKvRvL4k0md0XPNHJiJ30aYFVVoTXPyIqGiLPFYh/CLbOL1px/F2YUTgdzZ8saTfTc6K4ut9yQ8wOQ3ZueuI5nABkC2EhBoQjZnNzsJNbs3KrOjwvn+6dH4YnNy8hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN1zpQiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN1zpQiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE090C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775016893;
	bh=v/cc615PX/9+6a0UetcDsiTaApGW9pZ9uk2P2l+0gZU=;
	h=To:Subject:From:Date:From;
	b=MN1zpQizMtU8LwlJjQpYF3QVoP6w5sDI3U4BR05OhG2859am5K8J1TbW8ebVHVl0I
	 MdIOCQ8S2mWf0VSeQ0/f2KyTH7ALfUxnIuCWPZdkWdM1KWA2QnyBXK0UYqhz6/KHN6
	 fgzjTlKU+3BFSyoeUbFN4ojFpquM6B1Fr24zoAdPoZHqFw/aIbH83I1kGpJVB06DUC
	 tbxGtrlU/TtaE9YfHLXpo3T1LBD3J1BrJmooawGDlQeW6ar9LH48RoytkxFbU6jd2O
	 IIPVHYmBd/lbVVl8X+nVMjXcRH8bnD88gvjMSRSbr3tlDZtfjDhJ70WqSOmXQs2FxA
	 iD+Qdf29vw+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBE109B487
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501689358.13941.16088371648126669925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7041b2abc99ab7c65efeeefa964b86a5bbb4cb164a8ee810ac6a42dfbd8345af
Date: Wed, 01 Apr 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775016893
