Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0942EC54E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783594; cv=none; b=JA779ncYANNdvwIDb36oV+w1GoCggyJkXh0ziY35/amC+oDYEx9A+b64WiU95nObBefY3z7UCro6kdFGvS3+ehp0TC4eCoxRfFraj6BDFHo451eGmyFMqUUIcuLoRYndmR2fVpy88NHgWWXiNdBztQl2E5jmNxgI8ZQEinRe1Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783594; c=relaxed/simple;
	bh=nUzIGr48gs9LanwUv0R5NnjWFXSSpOFRb8mvhClEMF4=;
	h=To:Subject:From:Message-Id:Date; b=oc+6nz5DhzZTU1OQI2HaiwrXMRqo1z15BlyUwFOzO9ckQdaRVhgSvJyvm9fwDRDMsmWXc47Cn1gh0vx98YqZnLPhX8IBeBL96GZA31Tw32snHAM3l6ptgwCtJzj6Uj/xJsEG/DrVnU0yArRqk9/2uDulvZbIyu0GXQF3YuAolBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcOdxO/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcOdxO/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB42C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755783593;
	bh=nUzIGr48gs9LanwUv0R5NnjWFXSSpOFRb8mvhClEMF4=;
	h=To:Subject:From:Date:From;
	b=GcOdxO/oudz/p6Q/TNwHMZyTX3kactbaXX5kP8qoHItu52o2JWPU6iVBFYXHCuygJ
	 ENhJQA4exm8jW+mRuya0lLRfTkV0WYsI16EgQy+wFVDcj0j6xfclXIuQ6KF5ldrXHw
	 zdcNO0RMLn22L2lWb7QTaWtoAQplIiruzAHhWxdxUCSRXl13K8CjW52TF4n9blxYQ6
	 wZU/RH3dStkqBeAuYlJ7zFTV/h8xYJ5POSF3UaJpXzYiaJo77akt+l9Sa+tfMlKWPg
	 U24kZPHT8BGzIIZtwbF5KdL8eQ/2uT6dCu1DpopVGpfPBrIGY7KdFd2uqhfyEyz9QC
	 2kAJshc1QLI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C55CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578359357.6692.15481238226785047879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e6a07cda92df517c450e1e0168d1700bdcebcf9156e5e75bd6e73c2b778ed6
Date: Thu, 21 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755783593
