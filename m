Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355A1EB1AA
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759884594; cv=none; b=Vkhd6/3PhrLPVHcOQaCHLcIAXaLXQqGxeiuzLp0sNSQbaPES2FW6i/ki+UIUmoCUxJPes2QvU0Ca9/YqVc2VSacrQge2PLshlbYZxl5k0bOPuHIchO9jr2Lz9ilT00wcL6UpC4ofUYsj3yVqeN17YaBGRoA6r6KAVG8tenPdczw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759884594; c=relaxed/simple;
	bh=6pEeXOXVNqZ+rdKuP1hoTwNDsrsLhkI9X7dqOt665sg=;
	h=To:Subject:From:Message-Id:Date; b=h99jFqnx32U5CZqGvSE12NkHAEFDSJpAHNYU5YrQS+Yne87zX/1wGjajf9i/4nQVf9s9bjRtEpUCL/MvGF1cuTtwIj7CyeDeheOZWYs9KhUkNe9r9ehlVx20T28fnJXAcsqwemhvQI6LYB75O7T8aUQX2q0cjJ+TEMdnc7QXAXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsnF5H46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsnF5H46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759884593;
	bh=6pEeXOXVNqZ+rdKuP1hoTwNDsrsLhkI9X7dqOt665sg=;
	h=To:Subject:From:Date:From;
	b=MsnF5H46Ws8Y+PT1ZPN8jvMNrN1+v89JzykvK/1+ZHh41i5SSZoOrOxhtbR2Ydaqb
	 pKIyqIR90CZKyfo/uSiKs9naDr2N1vAFERs+rXPkrzmpRFZTbmWl2wr8DEgVdHARnK
	 11pqdFz2ruzRAPZwC4u2Hvd69TppQjPzLo456c63J0BNP8i8ESjrzs+K3Npxn/DkKt
	 Vm/DlJvIUjTR7uD165iop4VTrpb9AAmQD9bfNPiC/g4QxrtZvbWFZMbquvrNTzUGrW
	 1V/BxdOUrUJrPqqZ+WJpoA0+7tGxwaTABAqp/c431l8I8Vx69ZlwGS7mBsO9Do6sXx
	 LUrDm3TNtk56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172CCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988459358.12127.10266062506498818148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e3cbbf02764237508272475bc92901eef4d83b7568a6e68512d671644e25cb
Date: Wed, 08 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759884593
