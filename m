Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592BB37E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717265723; cv=none; b=stztybwvWLH/6PBbvtJF5/7UjLcGwwkKL+CVrwlOdaCPnJgoJ8tFc8nphlB1RTmh55UNSy1iaA+/t8cKcuR+svSrxN/IsnoKcM0v2GVMs6AMWPf22Ywzy1MissTWiL8qx7gown4TlnvQx5A4aXVj9U3LX7aP2i2lEEDqEDVbUBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717265723; c=relaxed/simple;
	bh=m3LuxHLHdb7AkDsVTxmomcf6ifL7C9r9PSEvTSCZquc=;
	h=To:Subject:From:Message-Id:Date; b=qvDF732ghlmvwtC+CfqeLtCLXOHs3McmbrU4UFUR7HxaLvk7zNoAuqEGZBp9JK2pS/LWSZ/5VRnHCSuIW6LoRktGFfPO9AKN4mrKmLAr8lnVXL1d40RudB5t8wEhTr+Xp4cYSLQ1rm7F5T+0Snt9VNUfOAQ3AH7VT1K/npFgxhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsaQXNQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsaQXNQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11E4C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717265722;
	bh=m3LuxHLHdb7AkDsVTxmomcf6ifL7C9r9PSEvTSCZquc=;
	h=To:Subject:From:Date:From;
	b=fsaQXNQ0W6MsXzTqBX+6q8nawXBaj+a42vK2dcMivtM5fP6wVqJmksdw4/+iVqghF
	 IiwE/zF4LS6gFLfjnokVRvUw1z4WiffFFHC4H+cWlDRDy0dGue/42PKn3i7iG9mCrs
	 CFc1cgAWCJuUyBlRw/hiYaC3pYmu61ygCmRrpoawi3kKfUfXucz9D8+zU6axm6nxXz
	 RH8IbHYfCKHOLHpG16Tf2Zhg2vYNJkZzhRwcsBRQLR39hSHpWxl+SjZMMGP1uJd9Az
	 BOCiFSrzKrU+k/zGTu47RZGqnCzVpQyxSUly/GJrKsz9xBOX560dkA27Hac4AdoGkJ
	 dYR1hXT+9OSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0994C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726572275.13488.16054849313762386547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f10c8934a4eb4a894a1c2ebff0a789f96119729729ccf0fbfd31a2476ce56ca
Date: Sat, 01 Jun 2024 18:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717265722
