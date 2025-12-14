Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C312701CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765707174; cv=none; b=ncYR/r+RAG0INz/AcAByJzisWD9HbGpKDEFpHCjY3zJraUsYAYMkHlPZlyHATBTZxtRgF4IXag2nQScIxWAV+vcfr711zgL0ildwDWgYRptmFrh5KMdyEF2CmOj5gm6BNu1/EOcQpeWR0sKmaYYV0A2vd+f3jpbtqzTUckhukfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765707174; c=relaxed/simple;
	bh=R+JQrglj8zxij3NE2RLxbqMYJVZKHFW3HfV0N6mCoPw=;
	h=To:Subject:From:Message-Id:Date; b=WMZ7OUmfrNidzGks1kZ4KYKkrOaX24XmqAe/PRUFBBMZ9bO7L2ZieGa9i0jwldlnHZcFHcKgtKddHvE5qXCw3Z7W1xuM/op2ceutHnQ0jX5c101HWjjXHphAHWIJHpsaimbiiPhW1yUSyJhlQIuTg/Ixh6HJh++Mf1rLjJslVo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFEIkCVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFEIkCVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB96C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765707173;
	bh=R+JQrglj8zxij3NE2RLxbqMYJVZKHFW3HfV0N6mCoPw=;
	h=To:Subject:From:Date:From;
	b=KFEIkCVF/st8bH51IP6e4ebdVX+NnKyC6Ek+zCmSpq6pya1qpWoCCNKvzLnRJkO4t
	 9O3hfIJYDKqh35lWIWlB2fc3cVfOuh0D574aX6gMVXntn6sOyK98/sPjWgbsRrzVu2
	 suaHYxs6Mgtf3wCuiu2AINt5e3fpcoeSE9/zvR5benzB7mQ1ErlW+SSXPiruKgPsyy
	 IAeOKUkgt/WG+HOTdfQTZgJA08HiJxyFoFXJMT0odkRKOIQ8OdDMNqkQb4wD5PkpOM
	 m9kwgx4CONsCPbo8AoA7tIqUpVcfNPATvFqHKoFYg/nOx4yHXt3KUflkfupKYoiNDF
	 JTWeksSX2wX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E09CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570717358.3933.8599952177838901357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3784b390f146e9eb2ce3d5e8aa45e392d165c6daf90424d771ed0088ec5acd0
Date: Sun, 14 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765707173
