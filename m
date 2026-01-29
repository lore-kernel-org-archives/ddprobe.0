Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EADA34A784
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769655834; cv=none; b=DPZrGNdOeEbafPh+mDDLxQW09Btww7Z1dSMdn5yc2N7DfDOMtlI8/mYQtF9D2/ZSFYR/vz7R5tcEvtRH/O8beTAU3UsMmK3+IorN+8kfzT1FLIF1GouVYf+yRs7jfi9b4UKM8hm+8oq1l6/c2TfmQcUXLQ0HgjOFq87nHmKSr74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769655834; c=relaxed/simple;
	bh=tEd7X0pm4k601xrJAr8WIm8QXgIK0MMIhxW4JO5SOzk=;
	h=To:Subject:From:Message-Id:Date; b=cLVUgPk0R6I7ys9SkQA06H8l0gkbBCLizVkYMjL0LdxeNscsdwgT5RaDi6j9sq0db4iocSUDdcspP+4RtmNQeqzi9gW6c2jeXa2Q8jLojFcBw/BPAmUdgXQA3JLHLVKpSJznBaID8qN6Bf0LjiE0oeJsM6y2ikbUS2NnmO9bWok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwvuA5x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwvuA5x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769655833;
	bh=tEd7X0pm4k601xrJAr8WIm8QXgIK0MMIhxW4JO5SOzk=;
	h=To:Subject:From:Date:From;
	b=uwvuA5x0ploDGQoPBicxUBj4XHyd7IAfKoig9u3x/DgnSGBQdH8Zplibnocck+3en
	 WPebI2XmjvVjK6AiZ6RDlKSFe4Kh8ANvhcWWWHIiTYAYQdYwmIggJ/SI0+hrqPKGqD
	 zORUFL9l870+EhcqQ79OQbYmLTzX9CcAaYGskVesqV9fcy2iW56kGdEthc67tTK6Pp
	 5/ke4ZqaBiYe8uqDMWk6Jp5LlwcEE8X1nNSPhaeWnYcfOS/1YmdaDZDC4mCiyejQxB
	 jc3zlaY2ZyElDHOUF/Fr0RpC8nLSCA/cI5OvXebPZPuSTsa97nxNNDIYRYR23mIiSd
	 EyJoF2W0+aZfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3DD46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965583359.13923.1358669684539559014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0b2be4554a70f914686b4048fbe0cbdc89eba911bb645a76a39ff20ce7a558
Date: Thu, 29 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769655833
