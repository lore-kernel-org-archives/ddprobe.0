Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFCF3BD637
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775217334; cv=none; b=CFf/IdEw1TbFaRpIr/ddd9c3qhA/OwQm0AZM7ks0yDFXC21gV6ktmkihrpd6+BGSjEg7GQa88kY5OwPcei+DualsW+V9xH4+u7XMWgM2Hx3r/csjGZpVuSFDllkEk1cr0gPHvE7OgEZj2MnOM4RdU2d+g7YFRWVR5ogx6/lQee4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775217334; c=relaxed/simple;
	bh=f35hJxhi8Y2dex5lVVWVLonu+c7WpnJoMODvaNYi+8E=;
	h=To:Subject:From:Message-Id:Date; b=FjjQJe71IpxakGtG8vMA8F8PFHP2qsvEWw2iEoZU1RqMiKlmvCzgc/F7ZuJmGbNqEKDu/1Is0hj6hoCFT1n6nH6B277kQmqWQybhgHtjXZuwmE7HuWb4PytQ29kLh2FVMbaQaa/XYWmKrMuDMHmgw4uz+IHDxnsXc++eTT42ig0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiwwNFhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiwwNFhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6122C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775217333;
	bh=f35hJxhi8Y2dex5lVVWVLonu+c7WpnJoMODvaNYi+8E=;
	h=To:Subject:From:Date:From;
	b=RiwwNFhvcaLhHnK8JlIugtzxlnCIL9PiHrh2A3QyR1CjwtqXAM0dg7CuYoYkQZx8S
	 /11sqhThhA1XRp5H6XUomoi41+fiPY5ZGqO5kVpb1jPprA/6Qp5yr5qU1c5hvUjnAf
	 0G+yiInDZZhKTDeEgC0s8Xn9TFy/yfboYZRzAThO9myLymLkSSOjxdKTxXUqWvKaev
	 d63bAGhKdmhIkbIlg3xhDUjxP7kt+6HeyyZg/WaFT/h2L3CRQEGkqFvgpCmNmLJG5H
	 QW4FqZbtQBV2J6Afo1YsGrvvInBR/MU7UJPcyB7IxYi09aplMq1ucyPG83VoK24Qx7
	 P67nMo3QBBwHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD27EE7E37D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521733370.31694.10072678342983374731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c7d1cb8cccc2d26222d97ce60a4af7d88f3a33448b896b6dff6b34194d5016
Date: Fri, 03 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775217333
