Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEFD664C6
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730076954; cv=none; b=cpOmQh1JeKoK9xAMDg/FquP8trSb6GtIWPSwqrWa5odYyM7YlY/iAI69B+QZnSWPRqDkC5LtCh3IAnNeaV7LgVapFdBqHDvh2jqdzJkn3qNQkXywxJkv0OJyZowf2G1NQlS9cB1c5zKbGfxRGilFs1n8oVrZesteOrww7CybAa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730076954; c=relaxed/simple;
	bh=gpzBEHE39pxXrQoBM3XxcRUVv26ss4g7jXRKTGZtaoI=;
	h=To:Subject:From:Message-Id:Date; b=oO5rf1x2TmtikqqqNYV4WMz/F5sT1bZ3OiyWc9CrHIIExM3y4ul/AvqvyPgl0bKgADdEhfGnHhLkxZpbMGbMHVhFCccHQLXc2bZV3BwgOIWPdrf4Gud9i5zR2iq5PAYypPS+s5O0JPB8LwN5Q47LVTUP7gO6D7+Dcl7KP30zAzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrL1QOob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrL1QOob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC5C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730076953;
	bh=gpzBEHE39pxXrQoBM3XxcRUVv26ss4g7jXRKTGZtaoI=;
	h=To:Subject:From:Date:From;
	b=ZrL1QOobFVmIO6vVr7d89qdqpOToMJekqwQKqtBkxNEY+wo5UsMVd/7xMxpb9K8i3
	 PiKxKhWvwgq03ROjOuwf2iAkN1ibbnPDpXdYNFhhUYo741hkRjPecvcueVc7AmlB+l
	 6lQufQe/HenSZz/JQM2+Zeu0wDwC1aBJHQbaP0ET5f3WE1FRKtMBwRRKeWcjm4MesR
	 zemTuS8AF8cjJWJIx8UOA7XnLtg8gy+8FsVASeLZc8P+BDXnDf+bCl63NBCvDrNWFS
	 CB3ZR4rxBiRWnXC3lwI5sMvHHU1Uop0i8WDHB18TophTtmKWkVoQlA/W5XD1cvUC+I
	 PRvr9MEtYgWkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479DD1358B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173007695359.22883.4927460807884025757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac407ce46b32d5af08f05f13151a870a1c6f6076741ec98dd770450b3746b298
Date: Mon, 28 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730076953
