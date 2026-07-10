Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785D3B19D9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783667914; cv=none; b=n5qWqsk66AxBC3jxpEs+WetMdtXqaKAkqsWW0ZIzeesd4FfkKIyjJg8TCkzH/agxzK3IVnQkD4YNei9QRp7Bof6+krv/EafXGfGHJRxI6YBR+AK3FVVzNBU9OyInq0qovGiS4XdEjkeDj5VZcaxdqaipwVXoVRgeSJcWlL0Gck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783667914; c=relaxed/simple;
	bh=dSAW6iFglkR6IioI418IGJH5fYvSNVsy7k5bOBbiBUE=;
	h=To:Subject:From:Message-Id:Date; b=JPo+VmeFBiPFEZ3cDuu/R5VUOfU4s3KcRKjB3PWQYFo6iPP/ZxuyBpI2D8gSVGreHFOvsWF1JhNjt+RL8MknPkzvCk7A1KN0enlen3gjshZueV9+Z764eYJQlWi9ZOZ/bAYMw8R8LW0kVpCplWTbnnffQ6Ja+NcRiWngYwUBEiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPZay+Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPZay+Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C54C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783667913;
	bh=dSAW6iFglkR6IioI418IGJH5fYvSNVsy7k5bOBbiBUE=;
	h=To:Subject:From:Date:From;
	b=UPZay+GvxN5hPOupud77SUOYOiS30p3QjuIFACEp1k1gyv2uOsVNdTiB9RG4/b8kj
	 9zTPP5Be7Tf0n6wI362zevV7+yhBa7F1TNhGzXeDn0KGIYExcR7lYZVaeFgY02zgeb
	 wS+s4ftTOCpjbZNc8gXdcJ7jcvy/dTyZNJNMpD7Fe9AJNTkrwnhR114Y8lH7ZlHJ6d
	 mxtKxm6n5Ni8G8cvlqBZVZclau2t+nSkknmTLOmktvfIJN2FyuFHuOSn8KQKXn/JJ+
	 +Q6TmHe+eOSaY068tiRJX1OiNZw/9Qz5EKjo7f9NSNw0rD8V/LDrfYrBZoIQiaXyv4
	 dfbCdf2IXWn9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE42AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366791368.29841.10373319462157795776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c106a8893b9d3c303404823fb1ecbead49d4a2127cb877d12a6a4323582c56b
Date: Fri, 10 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783667913
