Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3632020C00A
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775475934; cv=none; b=h8YdgBSdgL0yvUk6nlJTSjajI6aizol/Aehb/U9Z4GaB9NV5m5M462WMSNX7FkI0NK6nIOFjcalhHvkZr+DQAw525VSyWy/dBFx2yywTGu35+/S0mUYzEl6sDcI58ZnxZmqw7iBJcaYcu5JhKQMA4G1I8YMbtPwuMACAk32Vawo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775475934; c=relaxed/simple;
	bh=0TVEgJfvd3D/qhM5ZTF4CPfMqzSOu+k6TGuGquAjvSM=;
	h=To:Subject:From:Message-Id:Date; b=mQDTz07slKy4TzEdaUWOPkm0b69R8x47XpcVj39h0OPuynbL1gwBq9uU6ulhWn2Vn3xUORwE4MshEX/ih5BDb1vIqB8t6lTM3WWPKZpX2OcVtqppt4zxWRe70i3MLHR7znYO1d/iEX3HCrjZ2UYgYB+V2me5tmr35NxhaP+na8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9OzV/YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9OzV/YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF8AC19425
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775475933;
	bh=0TVEgJfvd3D/qhM5ZTF4CPfMqzSOu+k6TGuGquAjvSM=;
	h=To:Subject:From:Date:From;
	b=W9OzV/YHFbkzsX4x14I7OndaYvaGzaZVKrvjsB51Bl+vnoe96AyZB5Dp6JnqW39o+
	 LRoERR3VvsqD4ubtiTebLBxVnIEoPWZAVoyV0DZtAYOwTZpg0kKQ6yQIxWrYCV6yfR
	 lOR5mtwD3p7RBPxkfy6iF0DSxs7rUrea09rQIKzKAgyf0edEX9vETeQm8iOpdyqlok
	 FLSNSmrzMXhXmNdTqyDnDvw1Z3cclPDdj+lzAMfRmkiBUYo3wC7AOAe6p41Cnnr+8w
	 w8tLEXTLTNdQdY83WPRiGq3Gcdy+WnPAPCEnRg/YcqpN2JzNDc+rylOoQNgAmeUOmv
	 57ydu1xQmuoHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEA5EF4ECA
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547593370.15258.15033661408026126212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d071eb8aff747eebbe508667daf702c4b8aa4d98e83bdaab9cf1148e80846794
Date: Mon, 06 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775475933
