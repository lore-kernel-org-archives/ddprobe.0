Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FA7143872
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713963023; cv=none; b=L9bh+O2pvigxvwBf/ZKB82Br4tzgrYfbbnLc9e8LBmnkcSgIZyD7rnnyktKDeGJjFX96SD7tzmU32OdAzgw5MKK0lfKLfU1PC7ql3F+aS6zffLq3GKyC751oovxEZsLeQ7CfpzIZ+EoSm+onmP9nS7WIWvg1KL/P/gWX4/IJLng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713963023; c=relaxed/simple;
	bh=VWS5PE/yRgaqf9cODG7aazP9Y4M0UEnxvJfWcNl5Z/M=;
	h=To:Subject:From:Message-Id:Date; b=YVudtKKoHFs3w3Pyen2ZMPFz6Zkm3jZTCoWDvAuk5axKZXGX0rDVTUUdozMUIUDbOlJJcpWnorWQ6kXTIg0zdZnOJdxVfN8RSOk+PtlGMIp+3EBahQLzNiUJXWas+TWiN9lROoTcYlq93YH/0fodFRguo0jmlh7CfEv1KJrYesk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHkGGY/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHkGGY/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53CEC113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713963022;
	bh=VWS5PE/yRgaqf9cODG7aazP9Y4M0UEnxvJfWcNl5Z/M=;
	h=To:Subject:From:Date:From;
	b=jHkGGY/vfYAXgab5T+KT0OMgHRjBJux4ESZPzhO3RBgdibTD/Vyjigj8PW4Tww/85
	 nnvPY3SbqEndAIvb5YUOvbiLDdUE5puPuYomsH0jQaCadJkwqQkR8WNaTOryyG06+l
	 58PNvS76vNuyK3rybAo85N0ZTlC5ZmVDhk/KzmXjGFhajW/hIYbTVOkeceEb9yCEkb
	 UKPHB2YhtoDzFHSSk7Fi1n3HNDJQHvYErk/Tk/mw9RSJwDvmUlLw/76PmV33wCfTde
	 YlAY7ohzljbGq/ge1f0z9OAhEc1Nz7E19jo5WNDnPz9pL4wetrI5OWJ5EPVvEWIkIZ
	 X3gvQN3+HYwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34EFC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396302279.26478.6032013849670220670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e337fd05db9236bf1a84dc4c42168287ec76c7346906222a3d0930cb285a72e
Date: Wed, 24 Apr 2024 12:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713963022
