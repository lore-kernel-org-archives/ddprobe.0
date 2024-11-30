Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300D146A68
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732988754; cv=none; b=CWcIjOBpIlK/M2/1BpTWjPihG5tcIKUiIIU7OAZeAarJeMFUZJo5n0UxVfUPrGONrnc+9u23/SCDGcTn9/LZ1xG/Xuig91GzXr+DPB4D+HfIkHNCWNhJnbTQIDTvf4EojDGzoKaOsxFP3k/2+ZIWTYPGLhTkViW2apUgDyTjI+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732988754; c=relaxed/simple;
	bh=ZBRy3wcok/1hStrhLoXG/h44Z4288eQIq92YVlW6150=;
	h=To:Subject:From:Message-Id:Date; b=VsfuVAvOGxjvC1ie1nvewtnYnPbR/HbJVzEZLCt18sw/LP4yUHxQiz+QBKEcEGrFty/S/QinlFkuUJbtuaCfqtzPKMJ3GotCJstjgOpvHEpyhAcS6T/x9ECTcG2HSPUw00DMh+wOqgAlfbvl2zAjtPNAO2kx/E01WUSV90fqaRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIbK6Yq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIbK6Yq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4776C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732988753;
	bh=ZBRy3wcok/1hStrhLoXG/h44Z4288eQIq92YVlW6150=;
	h=To:Subject:From:Date:From;
	b=XIbK6Yq8LykSbYmYE14sVICHoodQEah0oR4XTUy6cTEOMSUbP5eFnd2hAfwSYge2r
	 ngXVLtZDqm9JKG85pfQDrASANJPGmLtPHTawEcdRP3x43akgd4POhWjRaEU2zV1M2W
	 u39AU8YTExUtOdYEdx05OLeCSBnhyPQdSf9yT4bARWzJt9BhTWnS3HCcykrUmqJaOc
	 4iNUsOj8Dfj9hIMQWfJf0JjQV3FR2ckLfLUjEZ5ekl/K2xIcXVks+uRnzX1wYX1GA2
	 eIPtrGjNvvFqpfteJhg+2Xy/N62vEnAl3OWWs8eZ76Zat9/GonCeMG57yeb+DRmRH1
	 8H3ioe1wR6btA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C2D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298875362.3569.920304201769379325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3510a8d2fc2d0eae7c8fe9190a19530191689b938918846d152163e20602748f
Date: Sat, 30 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732988753
