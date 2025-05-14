Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD517A31F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747243794; cv=none; b=eWe3Yel1VpbIMdKBl+arankikomQOyE7568rg7b6AEH+J2CfKV8vz4abgOQpVophj53EcdydWInEZVRs+xrPh5sQmlvLEnJU3ufgGDcBm57enFDRfyiwyJQLFquQI3zkN+FBmuRBUyqRIY7/RmY/OT4J+s1cSZf6GFjJz/JQtfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747243794; c=relaxed/simple;
	bh=hgiL4nHzSESTnqI1PaQqrmpPP82SSkGeWH3YVpo3o4Y=;
	h=To:Subject:From:Message-Id:Date; b=Kuua0T0NVGKzepR67RyfWzOIfqHoQyPvk93RLvO6iKMbC2iTNCPBQWWvRz0bt4+buVdGG5sG/SytpE4msfRZdNps9qF93i27elX5en2WfLHZaUQg6DlNd5hssLEGs3nlwqMC8IzHoDDrNOAd0tsUPkg08ZY9mlzKlCFAIbCb/kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BouHOJcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BouHOJcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747243793;
	bh=hgiL4nHzSESTnqI1PaQqrmpPP82SSkGeWH3YVpo3o4Y=;
	h=To:Subject:From:Date:From;
	b=BouHOJcbNpWoLqn2fsrmGIPR+wqsZbn3PE6QXXg23I46+7ZOYvxjnXvxJJopvQnmt
	 APpWi+9Y4mwleGiUHlkp9r38oMsbD8QE0GugBZhaeOS5a+cWy3jF0KTB2TBye/c+h/
	 fy7RPJlMSCIh2GryuKspzcrSdzsFLWaGVlWZ+nq69Jve4CgIbQYEmj01AvRgZH7Yqz
	 coYtaNibR8vB9Q+uDKt4I+pO3WxNAoGSOdd1KWOI66CRU97siO14nQdruxHl0uecfy
	 iDnRi1HHpPkDLCF7gkAMKDAVgQDh8r2I94lTHH00QhgeiG5mTnD7pgMQN1Fyzq10gk
	 gTNJd5H9IVmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932FBC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724379359.2305.3966331645059143474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca877c1b83cbb59abe4bde793ac80566a0ab9250fd9065065259b63ff808352d
Date: Wed, 14 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747243793
