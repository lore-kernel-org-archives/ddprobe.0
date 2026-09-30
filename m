Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4432F8E91
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790779835; cv=none; b=jWHH2IK8jyQ8wT/lpYI8hwktPeJuIF4ZhB1DEMXWmbuMsZnp5JQ7HhmZsaMunyKq32VZOJp0ndyEd/WndpyNJRaKKrAjLG+YOo1h6vcZX0lKkR7BO4BmO7TFeEctY1VH+kp1Hb8hRlLJwiEVsgfwmesVWs628N8tj1kTN8sYzDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790779835; c=relaxed/simple;
	bh=HAsvXqUlWWbM8RRVV/U0C8EJMXJYM3f+Z2dKP8EGhQo=;
	h=To:Subject:From:Message-Id:Date; b=VNfnLl6TIFIAm3gyndfFfZ1fBjlpasse0GOLNqEBS3eW4UzuUwt/wpKBg+TBcb39vcU5j/B59+9q8yY2AQdjdj5O3qkagfFrD+YAvxM9N/oFLdvojclDL43IYAn9SmhMa+z/rRwf7dL2I8sMJL1+v5dak8E+HLxipuAY+3cd2Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q46/Pp2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q46/Pp2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE591C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790779833;
	bh=HAsvXqUlWWbM8RRVV/U0C8EJMXJYM3f+Z2dKP8EGhQo=;
	h=To:Subject:From:Date:From;
	b=q46/Pp2tHNi5JE8pF+9dEcQeCQ0L1q+iZ5Og3UxTJMsBWbGvH1tQZw5XnhSJT9ExU
	 /rlRqgDPM+FB7/A3V0e3zDbDruS6L1Oyroge8jwdwfVaP3MqthRYJzQZ/HpZhfywo/
	 p8qSqOzFvkPq7mrll+khfYmM/tgYSA0falMEUX6vCJVKy62oUd3jE0hyWy4kHIM6Ev
	 fPH0hn1WP3PlY0Dxc8tjIxIz4fFIhsYK9K24wkqjXgJDBtilG4W+lIE+6gA0JXJI5u
	 +TJ2G9mAXGFdI/v+I4oGLhOTkdOHkrEhLQ9/6A6ZVendslbRHo4ziGMZlIODtTPCRm
	 1y2yxrMZsB+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA890CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077983368.31642.12943600489999119703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf350036c171737c5960752e2afa9b1888f34065188d4f9797933055c1da7da5
Date: Wed, 30 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790779833
