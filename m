Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2008413777E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727375754; cv=none; b=QjzANQn4WT7s9Tzuci5diQ/G1Bu45JT4MHHZv+EjSuBxhq8takfnT2XV2phCzp2XpsxlbMn8cRIHHOjvPddUTceuUkmf/D72ivG7UXRjbE4P8XDtORftta3YLzDccpbY8MowXit5kA+AsvPnjcL9UiRjcQsWfsA+4URRzx1b++Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727375754; c=relaxed/simple;
	bh=SdKZ3AVjSYiTewLbk2ifTRWSTcBq50qgkjAZq6zKx9Y=;
	h=To:Subject:From:Message-Id:Date; b=LRwggouQWXJhQ1EbdnhJ1YrO0U+DzwpDLckSDCY21I4jolrIH4JduCfb47GzPtdwrR7quKHl6lnQGwIXlduRcHD+nNS/TWhWh7UniIVb49eMhWltV3pjRyMrLA48LdAZeWinnWt4jxd9VKDWkK3jgn2xmZKRYYbSXXq8Nw1ESi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7YGDkGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7YGDkGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC1BC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727375753;
	bh=SdKZ3AVjSYiTewLbk2ifTRWSTcBq50qgkjAZq6zKx9Y=;
	h=To:Subject:From:Date:From;
	b=L7YGDkGWmJ/dO99MMNE0mgN+Cywtmc8VJIuwDQFosAjsMBJr0g4fbeEokZH3XPh3c
	 tJqz9POMCyX2oobUYxXOisGIEBNzJqz61EIeT/kwFf6hMOeuNU8hnrcK67Rz2kjkjm
	 LoRc8ZxW67N/6B99ZIsbLDMjxuDt9d/jx/xPQBeXIs3BzJh9qo5sjVhbVtQggBsUIf
	 pT+OoR/+5sjCv+mJJUo7BLjRG+tG42aosZkigGZgDytV9oBF+aO3JzBg7HTjNQsx5R
	 wJ607e2li/JIU7wf/wg7vUihub6vye9X5sbS4acUA/8nB6YltRqgQVmwy7cZdSV8Lt
	 GmFqDhkte9ICg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95376CDE02E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737575360.639.2595534055664361616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b082f195507166c4a1ee717e2a57d420e791b4f9c12a8c4b4f7fdc03e478b24
Date: Thu, 26 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727375753
