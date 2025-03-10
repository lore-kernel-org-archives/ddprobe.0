Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAAD29406
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741589334; cv=none; b=Rt+H4c17qAGWrEFjTUzyJUuOzVwwcoOzvPC0J8h2gaaqJsftV1ENYiXW8ja2GWJDN9WdFuX6soTaG0LBlFAeD6ExDEd7wF0qXME1q5RTr/19pxBkbbT3aXSMQt+NWVRVKz5KuuZajTGGgMxaH79yGEZmJnpR5YkkVdLsAPbIW7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741589334; c=relaxed/simple;
	bh=ggoCp+f8LVGQWJlbhAbLh94EhgBkULvRiNLzgjLOORc=;
	h=To:Subject:From:Message-Id:Date; b=fg+H3Hd1/M76nVYS8xH2uB11SG4jBLw1SQyx7ii08hUC2gYU6YdCf977duHo6rXEX7vrJfeptGdZiBsvp10WEV98PMevKnkT9htTvyCgjhapo4kNOSDX676OISLm10lJufKAjGuxZ+PKL7yBERRyyk8kP22TpLtBz0hqeJ747Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9oVN2af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9oVN2af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C8CC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741589333;
	bh=ggoCp+f8LVGQWJlbhAbLh94EhgBkULvRiNLzgjLOORc=;
	h=To:Subject:From:Date:From;
	b=a9oVN2afctnVF2TFfUBaLTE6hL+oQ7ajzxH7foDqALotLbJbP6tETFK8a0Inh4tFk
	 bgH/ffFmzlwKsyqfW6+VbVFmrMcKGljgiETUrfBH+hJ9GmJR3D3RbLCkZkMaBct9+a
	 uiZM8U49p4fytJ6cEiSzsZdNJ/Ht1W8QS081uyo2paXIyoXQuOq7nxrjxojYGnetU7
	 ylnRzEu6rpgTqbs/T+FVOQ7RXMj38zPR54ZQX7MWxA9mJNP7Qk1gpu1AODsvjG5IIT
	 zjEsU1eIUBWYGi1Cap5lQOtpZQfuHVefpGV6A7ASEe1Hoou/jVt4iCjNtRklhipYWb
	 LCdUcpQbzRJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96543C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174158933360.31775.2922608107328417109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b19c29c45029653f1c29b9c9e06f08503441816d972300689706e6aa4132d7
Date: Mon, 10 Mar 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741589333
