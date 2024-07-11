Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E654156225
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720697243; cv=none; b=LtLz/Be/jde9Ni09egmXCLzclbdaMlx3SV92n8IZiVP8TCGN+S9xsaZVnuy8hfFRzOLgVYs9Ko+DIV9A+siMTDPO6RvEx3DuV6yV1F7G9zqh6YQSk7k9SiKI5eiIKxYacX4OswuhYAMrXuZ7ZNkPTFY0tEO+jxueZIa62FEqc48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720697243; c=relaxed/simple;
	bh=/BPLr3T9JFqsyTndVtETnFgF+d17BdBBsvliaIiCyMM=;
	h=To:Subject:From:Message-Id:Date; b=PfdWE59Sv0HRgKR62SV/LXmYQWw7EEtRCRZEJdX2VJxlZ2zQh08Fk6YFTIsyYBqlO1tlNET40WFLSwV53ENkVw38Ro0/EiilqF2rn8vrQpadAJsX+UVgyZJUOGryzxUR4ceJUDcxsOicJC81VkgQLeyM61PkThxKuTmGDc7M00Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7c9CmDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7c9CmDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AB3C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720697242;
	bh=/BPLr3T9JFqsyTndVtETnFgF+d17BdBBsvliaIiCyMM=;
	h=To:Subject:From:Date:From;
	b=O7c9CmDZVpdu7+u0x32kE1YA8SqVgP1lGBSPT/kHmE7t0gxgnEv3HnZzngm9pdBuN
	 y9BzLt2WmCwDeESIjx/XBtoE1TNOxkDfYFWhWouJloV639F61a8Vw7zlKROqSIGeID
	 uzOIypRjJcGsuY/YvnU8jfFjk4P9dDk0Pv0bz+MMbqSRJwZ1cTujT0xYKOlfHV+xag
	 B6kDNwEwdPnAmk7j6NgVAbt204xHZzdsUiYnnEaQxsT0pYQZFSG3Pt6PF0eww7jqC0
	 gE0dD/UCKz8NVjZPPWDDhzUlYulbxcmQSu5xtn5IcLrgmF6v5WW80dCg9Ar1QX9XvF
	 wVJea9PO5puDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1FFC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069724283.32161.13857128059980512799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342075bd04743e275de0365e859c8b08216e49e72c7aeab98c3ae01424d6bfcc
Date: Thu, 11 Jul 2024 11:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720697242
