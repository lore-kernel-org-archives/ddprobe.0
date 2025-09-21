Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C6C249E5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758452393; cv=none; b=itEKgp7K6CqRuxE92Y60CU5+hyYV5Ymu5dTGm3nDnag1vn8oSJlsEKhh6CAVSCKRAT0fcfbXsTppnGDxMG3hCq2hPxD/GAUx1Seg5l3CALqgSxatYl5BYNx3Cm17xTF3Yn31RXOfpFFJuPQItnjBpxKCtZ/Gbirw1w/YvLdzF7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758452393; c=relaxed/simple;
	bh=QI/KrwT2xFL0geDsYmk8CiuSLuL2525/vuvWFBa7cR4=;
	h=To:Subject:From:Message-Id:Date; b=KCYgWCB0qx74DvRiTnZ2jJnaZCSpf4AThlic3tyxDQdeUOrTXzr8oxRoxW14/2ltHYeQpZ8KeHTsAFWFltHvAh8T4iAVVjR7Xh7XYGLWbXnAeBqZh4tt4LXS+jKUMF/dx2+wLV0kfQPMZfkrKM3uw+UWb2pywKpmHXPibPRbuCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAxfv0t6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAxfv0t6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758452393;
	bh=QI/KrwT2xFL0geDsYmk8CiuSLuL2525/vuvWFBa7cR4=;
	h=To:Subject:From:Date:From;
	b=dAxfv0t63+XXeJUGxxAw5W8WgZyzfAv0Qnu+cKCSLNtel/90/Eh9XwDma9zaFOReg
	 hiZ04BYnBU4jjssKCZlTfkzAQ64clxJCwLasLcXsAU+u+sPk9dSvuac0Au4efMVTk8
	 9pyW/NwE6y9lPlXwcntXxf/TX11qIZo9P9RIwYzdohZkjDdBKgiu1WVhVt/OYlufmv
	 wazJsJRj6B3T4akkH00K3Z0F+CwaAYZJY6pJv6MohzNwRXuO31DdAEdifPu1c3njB+
	 0gbq7GIW2fyLUCy+8mk+uvDCROT9k0dptzYvhxa9yd5gIYFv+S2f4uIplk8guqRZy7
	 KsegqmLF1nGoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180FCAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845239357.3567.14916136665109178321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fd1efc05b174601df14d265862f0b6c6159162fd4396388b4aecb554fbc343
Date: Sun, 21 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758452393
