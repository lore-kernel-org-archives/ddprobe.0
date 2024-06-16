Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716E050284
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718569703; cv=none; b=mbN4ImEbM2xvkR6Jorxrgk8BSaYm+JydS8GWUr2Z7RjhBMfa22CGS1WJIneExjk235GDLC1c2oDnmxJznj1J8N/FiyHKg0P1ap9vNiOb9efD+y42QDHP1/J55u7hE7NBTJjvz3KV/q847iiBILztgQ1akoN2EvcQeO4uU6yQSsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718569703; c=relaxed/simple;
	bh=ZQfBXVq6QQQcMIndso7qRcyt79sG6LSc4C1nyr8LlmQ=;
	h=To:Subject:From:Message-Id:Date; b=ExdOvTaJ5aLufP64LwctPvWgQHqcbbBUVEgVbtIr63xoKspdMPWh0i5d4u7qDslKK/LsBX4YqlPtXe6JKUhHCYRu5m/z1VnfmTNvMEUvzhoTKkrbm994dEh+/H5CsjdYkIMzoxSGzdJ8RCD6omkSbFvQhOLO85RScBeODO5WlmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnrJmWxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnrJmWxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718569702;
	bh=ZQfBXVq6QQQcMIndso7qRcyt79sG6LSc4C1nyr8LlmQ=;
	h=To:Subject:From:Date:From;
	b=GnrJmWxY2DjtZ2ZsRJny0CIDCCldwEiadUGivfgGrj+CS2KosPqs/RvM600TwHJR2
	 +dL8tOHro7k8jiBj0amH8ABO+TkcHJ1Hdvv2wIlTIAafezfLaaarwTqzCR8FxtBXVC
	 CJ+PlTN4lGP7lRH6UcJkFrcblf0USKi7yaWI0b4wz3KimYccxTFaaYbzSrFFFSAnL/
	 lNGFG3wONSDhieowbpO+i3YHNgtIRMTbHsmvrzNJFjlulldGQnsbfnWk8hd+/FXqQc
	 3or7dnvFCvJC09i69d54CdVo7g9+9omXfo66OFx6dfvYpEdOT4nxH9o3uNMYpAehGL
	 Sttn9dAyN2l5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D06C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856970278.29703.13760368389756950461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084fca097cb5fd209ca4374add8c4b415320892adc669c11f013b785e196874f
Date: Sun, 16 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718569702
