Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4233A3D5C38
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786815634; cv=none; b=EQqiAQs8utfMOfYBly54aDfPNeqxAR5QBIcUPvNmgMimNs1pM+LWTTAVGsWvt0ANyHn0oEAbQjFX174q1deddnEiWzg6uBRwC5FFXPHuGdyuE4r1IJDQNq95lZo0ESuzsSeVpVxxDljb6C+BW6GPfAo2l4Bainb5LGf6sU9AUkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786815634; c=relaxed/simple;
	bh=r+DooK+AIovZMoYi01qpM1yGIBsw+7Z8XsyI9KZZ6es=;
	h=To:Subject:From:Message-Id:Date; b=O8j0kJpBrsBKYhfrGjKs87XqS91Qbfw9m8t3jlwe4Qd4rSgNbUcJ75K20ZlkbrRKNmM2qhcNmzgajLwGQoH2fLNpfdC5sgoPvC0hl5ztnl3hwI7IJBbwc31/pMaWXtlASdMi682JiIQ8LE+0uAtjgwVwwES3Q0Xwy4h72yAdSQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErWI8BGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErWI8BGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E133CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786815633;
	bh=r+DooK+AIovZMoYi01qpM1yGIBsw+7Z8XsyI9KZZ6es=;
	h=To:Subject:From:Date:From;
	b=ErWI8BGOoZUlwsx3hn12JpDFX81taiGuB2AX/McjnT3NfOTfdGz059ZBJgSI3CuZ0
	 5vYaijAAq8AjFAD4N2Up0RLm1wz9zLe8H6MTjyBIjaaikD4ue3UAof96ENVcQyAhra
	 O/hE5BitpMdMe5faAhgn2jKFEB1bSmG7UdebE69hmBUz78mJCb+WuwZjcurqAxbhn7
	 eODqWsUvX6DiYcx05N3xvBdvSVzmLeGxvKQViPsr0GXPYZWV0X+b1R7KKyfkf2FJX9
	 FSLK7/qzwW2qvOyQ/evCYgA7ISUZvkNeCbfot6AvIqcpOhJSV6v6tcknY3SVi4fgX0
	 gUTRUCUxUeDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75C3C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681563372.18019.17512124575936101326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d24cecfe7918867c3de2bacf08dae5609d641a7672caf231f7ad39b9d82ae14
Date: Sat, 15 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786815633
