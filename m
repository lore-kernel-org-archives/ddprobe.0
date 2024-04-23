Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63977381DA
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713915023; cv=none; b=TCmuaowuU5pzHz+QIFRAvNdazweXApkucq4hEBohIWVZ8yfZ1v8nx4X68LZJrbzUvfiNdRcn+7emS5/a4UvZbx2Ha4qb9qAQuBOeDuv9OVEusgfAXt8n6lioBBP7o4X71nVHZjEblwrC3woag6Hu6NDB0YGujtGP+LjvLbxdxwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713915023; c=relaxed/simple;
	bh=XGefKoNjqpGA6TTrFji/bwjn5tWl709KADdiMqnW+qQ=;
	h=To:Subject:From:Message-Id:Date; b=B8theNUev/hygLQRP3FhsTTwi7amzBQC+GYPs0QGlLE2utT/Pb+xtm+bJQATBy0zHi4nQIA4umsVIZ41DgJkCNjbAR0GLFCRH8AvE3E16U4xN5oZWWYme7XpsYTCd+rxDW+yCnK75unkW2ZUO127UfQ/qhD108bZI8/6ktTbXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU0Xyswt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU0Xyswt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4600C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713915022;
	bh=XGefKoNjqpGA6TTrFji/bwjn5tWl709KADdiMqnW+qQ=;
	h=To:Subject:From:Date:From;
	b=kU0XyswthEyTU5pjKjz3K5nsqxuscV34EfZjd8+2h0tYo8uaOnR1iAc1ghxWD5w6I
	 Kxm40uiP9vxg1AWYLkLgyUrsl7HU8ecbg8H5hOBGqRMaBVFfFCdEQ91BW+fQe1RvQF
	 ZAIbVddpdH5v/2erXr7RUytZBMDDwIuQAXV703BI6xsmicxVPF2qYs/VTEM9p41obq
	 NV1o5Zz9BTsX759gG8/YoIcZuuu++1FCQLfVXuThyQiIm0/P0BA2LkYnwfJQtbickB
	 w6Eqn3ClxRzQ+WiM1WkCa4jlAsZg26mVhs11KGpuOcC5vyXhaqpA7SBZbBSpz0XfMj
	 lC89fnUz5qquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15E8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 23:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391502278.22973.12229125182238948812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698c47f1d669e325e485560a44be5cca14ef51359b482900ef21be6f7072d774
Date: Tue, 23 Apr 2024 23:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713915022
