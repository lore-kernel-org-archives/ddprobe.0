Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552074EB51
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720642043; cv=none; b=hQyq5OGJAe8Pw3myHg8vGtamb/3hoLr+6wsdM4wmktzraCWF0VhmLnPoeADPKV6RE2HGv1sqy3TvQQAGegFR70E91Ng5u7oJynEaPS78a4IMPtWt9qSX+DznblsZvvPWlC52D+9Mew97eZMSKj2sW6VPbeUiBCAuhz5Vktd8Ob0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720642043; c=relaxed/simple;
	bh=1YTg+YHIZQnI1bcsuXqxz9xQvlXrlJlmgMAWxNJq7yw=;
	h=To:Subject:From:Message-Id:Date; b=ostIvHPaxv0Ye+ECXT7wGQO5d7Q/H1RITQXNjTbNiIIVw8zT1BTV3WdNY/aSLhseETVTVM2J8Gc8qvLvEBQDChC8K3hJ6SsnenHNY4D0dhhxbePZ+zE36zdFoJHqGa6iRB5fQz5OKxhXqp4v7ylEWViC0RkwZhF3OA+X5JBwuVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGRQvHnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGRQvHnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB2C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720642042;
	bh=1YTg+YHIZQnI1bcsuXqxz9xQvlXrlJlmgMAWxNJq7yw=;
	h=To:Subject:From:Date:From;
	b=GGRQvHnpHVn3H69sAYbrQbSfFDW6uVtR6ZxdwmPW4J53csvg/VCQIqlSD1tPJQDQ1
	 82HrAdYl+O1B+f+ZoMStfsdJquJbUULPwHaGc5B39P0QdoROPRKQBUuSi1kdfElwhI
	 GAFv85LBc0WQg29Ty/HOUsywIkm2FpR0g8ASKteaMEL0bdAF6UWN32zMB5N+16rW7J
	 s/I6q9//fYPXnssR6LASaRN7mV9zvDDHxcmgTOeniskRKfBl5ayHvElUdt3lGoTIUd
	 PbVOJ0rCanJaVwls+Zc7OxmSj4MBFDMAh0j0ktIk0oE2D8XzQY1RYTWbs3W1j6zd+c
	 BBvKSgrNc60PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D48C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064204281.7835.15089904367055368306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05a8a7a6f06758024556add9d8d0a5d38a33a3abac25d10ef7e3a57f2af010f
Date: Wed, 10 Jul 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720642042
