Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBCD1991CD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742369396; cv=none; b=uTuRYgUCVsTa7oyyDp3P/4wDZAasHeVuf/aondqgo38Lr9OG5Hdsg4Fw4CBSe3BLINsnKu75rw34EZXVpzJtekqldLvTsjwBKkowa+DpPoCXofvgqKLdajV/ig92VmQcNHyvYJC0/xtYuWN7FA3C19h4xtx9LJt0WA4j7kq2Dj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742369396; c=relaxed/simple;
	bh=t8wsE5AABs3l2Hky/bhqNIhvPZ7AJcg3O6NbVkB0EKk=;
	h=To:Subject:From:Message-Id:Date; b=XC2vLgdg/GPIZdCPW19D6qH0erim0VXaW/3JxFnDTEfb7OKsRD9E3NaEkRzToiOLau0sUrIiUMoPjoxhi52ZB+wo6L/SgXEE2XirRzjNnm+me7WXL14OQgPa7WFR9J31AZlCq+3YKzQVMUlRXycbl/2yHzMDZUSx/iGfHqjrQCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmSakO6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmSakO6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9F9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742369393;
	bh=t8wsE5AABs3l2Hky/bhqNIhvPZ7AJcg3O6NbVkB0EKk=;
	h=To:Subject:From:Date:From;
	b=TmSakO6sE+DTJNmP7uCMbU3cYsUKM8s/q7VO+6CdMwoh6XgOimtMI35Reks5z8ZCt
	 zfQveODSkxLY3xJhX4qVWwQQyYO1g8voi2V+aue/kxaTzqL7PJb7XmH5g5hxmBLGAo
	 HA3/l6qpMZq6CMpWStPAzPUOCsSJ1Iuda4YKviJIkEuJE7YmhSjy49XkXRzGHY5qV9
	 JeFJNhS7VgRQLchEiaDGO4YziF2xwp/jXYQ0TaTDjCgFm0F1yDs6Z+ViMyE+xSuTul
	 +k+ezikAN26ZymZmIKKlmpBD4ER4sYGeHo0zZ88oeeWbkTKzN3xXlAG58iXLYvLP8y
	 zt74N8fmi880w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1AC28B28
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236939359.23326.9869382110863939821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3afcb22465718e51ad3fecc178cba941b56163039f51e1b786d9d2a97839677
Date: Wed, 19 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742369393
