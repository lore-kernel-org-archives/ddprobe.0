Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D1818EAD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719851123; cv=none; b=Lf6bZCzfyBVpQefIcl7JVp9NqImW4pk+BZB0i+QVGLkcL/53vRlcMi3LKl8S76n+SmqtZ8YJwwY4mneZ0415oAhjjdNJ/W7+eZnqA8q68qitYid4LorkQObiDx+YxOou4iAbIJYDjkkZli/o1BDkcGsa3yUaSCE3BJ4g7d7zEU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719851123; c=relaxed/simple;
	bh=qRMrJG/b0C445reg4l6ukA5kCkMjhf0lRsWifyjpYAM=;
	h=To:Subject:From:Message-Id:Date; b=MpcdoleVZrfy/bqG+E5fnRAMFcTqmo8stm8M3Wfa8nJ9j8Y1SeO+BRhY2EXIPM4vRef8swl37OqZGBiWSEQV3k3pR2pr3RM298LldQbC+KUJURW8WcWnfLPHxLOV5BVaBSuQLtv6SZgxFRDYyO6elvwCp6I2Nh7NmkyhH2ZltP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa5OrkAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa5OrkAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F9BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719851122;
	bh=qRMrJG/b0C445reg4l6ukA5kCkMjhf0lRsWifyjpYAM=;
	h=To:Subject:From:Date:From;
	b=Fa5OrkAWU4sO1B/tjPflbu0kRbMN2+W9/orsvTpur7g8pVa0PuRgpeTaujy9cjXGq
	 3P1wxoiE8erLvF0fDB0oW5f2V4yF3ANoUornW+p59Lx3UX4QvKzjXJ4RfeYIfbOqV6
	 fuw38c3S5eQcy34RvRS59ShSti/COyAimBt1MgRJpAVQgbuH4AQUBd24oUnnNCmZDX
	 6z+YQie5WceXqCFqnz53XBYcNEO1U/16GOpVA32W8zhMhmdluOpD0BOyZLEcMWW96C
	 bWSrW5lRMHCMshHC/HE2ntHBDpYQx//fdIJkGlNAkC01mm7+I7MNz4XoZLa2JaY9ZK
	 e5rYJuxTJ3kkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21E7C3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985112277.25919.9875620532677147416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe8712e9add9a2943890e2a2707b4b58d7d7b660a1e69bcb0273bf326a6dae0
Date: Mon, 01 Jul 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719851122
