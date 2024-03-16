Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16421F4EB
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710577097; cv=none; b=QZHP03yIfdaNGjDKEbWlJvziJXsiH5twvmMST+uGNTeyfE2AX7oybYrdwiXj9SpHB13S96yem0lxo2ITDrUKET3iZTA/r88k3t8E94GlxXJl5qVOA9mcwpoNqDYwIZHGZo1FJwOd9G7AKhew8SMXXQXlPtjAFmPbK4XzvZJO6zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710577097; c=relaxed/simple;
	bh=R3KLGYvmAC1JpcK2NX4DtPtpKp6BV/8M47K6ZdkxeDs=;
	h=To:Subject:From:Message-Id:Date; b=BKz6+duysavnRjkmBjYVPw/zKUyu7IuF7xshmeRTlGq12caMtlQgpFcZ9gDEDVRC0jLG82xfjFn05HoZQAzsbyEhC7hQ95NmNgoq7u1xGlPh+cKmjSx9l0m9XOdqlnVv0BbUksgzuM//EGmaGfNF07iF4AF10gZDDSxVjeula7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH+oXEBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH+oXEBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86586C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710577096;
	bh=R3KLGYvmAC1JpcK2NX4DtPtpKp6BV/8M47K6ZdkxeDs=;
	h=To:Subject:From:Date:From;
	b=uH+oXEBrZM7jBbVS/nxe7fAELsLLN8XVlAvGlOReVLy8we0Aua9chiM1Z2XQiS+x4
	 SUiS2GJPbpIhxRENBufS0iioDJp1+/RFrkehRzDW0jLo9HmTyZoDF06nOAtMcFI1or
	 OmGp4Qzwl4zKPvx7QmFn5QU2DxY6/qMyVizQKoHCYvjnWCzSbuDQ80xqtuHZcM7CJ9
	 ENC2SaSkXuH8wHN/VLlpi6+zANdkF/JRIJczQCDLHSEzuJnk6KFbUhkWubY6pCOFVK
	 tVkKiWaemLQQLDiZJLO72QzQiisSG7nCRs8HWrBWeCbgYrpwhR3nlbLrLNPtUF5+gm
	 hhQI2l7nce1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7ABC54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171057709642.11753.4193131918608253562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2999eb1a5a1cfcea4f55659583ba940418004d7a21932360809e78092f24e8c9
Date: Sat, 16 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710577096
