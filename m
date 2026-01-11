Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164E0EEB3
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768123434; cv=none; b=TmhDRwCQZUuwbsdFB9ApgFf9l+f3uWAdnvyBuOnsrNeP4rb+KVFqkzo0rAlAdfpHqRN8I5D/A2gVVFz+5aLyzRpJk4H58mevRWO+2UyN2pkopuJ9emvSnYcUQdVzzlQLOiCr7DvTegR/BB/j52CCWmMrHSBsT9ffPpvQkWjABDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768123434; c=relaxed/simple;
	bh=LZr94npalUM198lHURB7CixNbJfPljvmRKE3gKQzk/o=;
	h=To:Subject:From:Message-Id:Date; b=FCNDqkTTlFni0Xh30dpaM0nnrvYmvbEBoylLKp/FkQxeeplTFmtUFAkzZnBG3Z7MxrwY5TqFCUK+7Rk7r7TccWYdPl2Su3Eo8FmdOOMSbNDIoKHOqJfd5VPnZ2iG6+zmbZxKyFRu0wARvaiWyhZG5BAfjA2no8fHOXP2DnIXbYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaHxzM/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaHxzM/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A556FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768123433;
	bh=LZr94npalUM198lHURB7CixNbJfPljvmRKE3gKQzk/o=;
	h=To:Subject:From:Date:From;
	b=iaHxzM/KAUJd/BD+u5Z1QDF9NIQewXi9QzJ/9PDYPCmJ+vbtnPBV7TnQlr/BBJGQo
	 vOJrPTeqlwZfPuER1cgJcn5iIIA8kQLkjksdKzzgw/us7wVhaknuXQG090Ei73Kpax
	 8CjwcRlnHNlPT1J9ZIZBTSjlG9G25herar6jali4wpAZVt09R678QThj3MpPllfj0S
	 uqQX+HHjXbl8WQ+BbrmxcFiIgIMeIgoag62InJ7eTSiMNt4KhRGmmXk5jmIC77zE5O
	 pY6w4WqLZ2IjMr8kSWjoaKSHQCI6BGUW6TstzehVgPJ55dE21QLZpqTIe+3PNETrAz
	 SWTw4PF+VvJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945E3D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812343357.6393.3025675183959644476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5d7717cb6df1be960304e1256223e261c517233c4f4e7dc87e10c86f5dd7e1
Date: Sun, 11 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768123433
