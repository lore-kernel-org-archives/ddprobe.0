Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96A47206D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789043434; cv=none; b=dRkvjGjke4P8ZgXrVdRlPExafFxx1Ulm69r6mWlub4suiO8ft+9uKM9iWlVPdiztSnJPmBp0DyuKIqRHBQLb2rJy9yX7BvH8v3DSomUHadV4nKbFXJPIidugLWsXet9qgs3oh4pms94W9W/ihOsu+BT0UkFOG8whXcIzElNe4xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789043434; c=relaxed/simple;
	bh=G1/0HhTjNKdiusVoudIDT+UJkDBUVVafsIbX1l2zkPE=;
	h=To:Subject:From:Message-Id:Date; b=hyEHqZtv5VwByE2SWdGzw3npK2iqA0BGifTZOZ8BNF+6rrMzZTqPRNhKmh8O7WlH1OWG1rVXZOp1MF2lO3A5oXBuJFCZJxMqYKai1T9eY+dUBP4bEyn9V6zRB6iq8Y6Z7XZzsEKXW7Bc/OcO5UW6XvFYecgUC7Q58wCbyIlTdiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbpUYjDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbpUYjDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1370C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789043433;
	bh=G1/0HhTjNKdiusVoudIDT+UJkDBUVVafsIbX1l2zkPE=;
	h=To:Subject:From:Date:From;
	b=PbpUYjDNIX6WBpNAoE4zIIf6g02Uy1vB5I9+V/SC/EJCndEYOeIdTbdbqtvVFZP/m
	 Ao4Kd/BF7rMZaGlR7fnoNA+QT/GcfObwDVUdWWf8amTM4FcsL+ITonbwPMs0MsHRUg
	 Wa7hdyC0ZJOMB/gwlgHke2i3O9BiFxOeh8VBsQxWgb3XxEX6HHdKzXiKawsDfmJKSF
	 4t80Dl52QYGFKkQbZu8+hYcMszAta0sW4+JvfYSKXQXWL0Yk2xZry2FWmK+TzlQR9J
	 MBE4bI63ubNPV4eiTm/puWYH/En7gaJ703mD1tO2//vJmEKbJlqLwnFCGWEKl768E+
	 k4rHkKM0FpMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB35C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904343368.24864.14901307783163152016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642ef043c4f0cb497a3949bcd3f433e22a3ecc9f698c82b6606081a545aaeeb2
Date: Thu, 10 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789043433
