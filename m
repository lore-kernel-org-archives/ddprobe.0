Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733FE25569
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743925794; cv=none; b=JqXT/OZrc8ge+SkcOYJC/ZwZbXsXEod61aWl86l6k4eI/C5lZGZMuCIK7aeGfQDnKFcAP3FX3yOcwh2f7tb8L4AmNAnoCvMjYrw1BvOdxlXyBPrnjyrFqzX5GQev8TV5Qwzw5ejeSIKb4bUVggqcSTBVjTyawwyGI8Cx3plkffs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743925794; c=relaxed/simple;
	bh=v5TaifprwlEG1C+jTMQSvVuLfqf7xQQ0Y65C7ZnZFvI=;
	h=To:Subject:From:Message-Id:Date; b=VwlIy56bv4k144uC8CEuoksKlvz466ZziikjqKNzwB+620IKT9kb+YBuyfSmXVmwSEpw1NfWfBGDQznBlQOYRDwwO2uVwjPaLk8cyGx0w/v7uTiWpmsSCtKB9Mds/1U/IbJ3hzlmPaxv0WoL3U0vlSQ+uAizWKOHMSnu9M9jU14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOL3heWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOL3heWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BD0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743925793;
	bh=v5TaifprwlEG1C+jTMQSvVuLfqf7xQQ0Y65C7ZnZFvI=;
	h=To:Subject:From:Date:From;
	b=ZOL3heWE0oA0PulAKJfqgX9JsXD+5xhkWi0uMbmxeKOBZlk1TQADGOSO0BV8rXBGR
	 T9at7weV4bPZWv16XEwJyja3LK0lXRLXBsSNMrNpvmPwOJzM8sKDkqb4KIs3d6g1gx
	 mKnPEv8daSUv/0T7006trU5j053xKnR0CC5EF5JKOgQvwnmkN7Hr1DvKdUpRxxgo0w
	 1xwBOFh5CchVaWRl+AkUsa1AhUFKO9z0QAwrFCAVdZz4WrOLUACSerPf25koZXDAOi
	 qlv46TGFlpKorg8d2I3LP8PAv3VajIcECHoen98HC4vbUX7IpTh3x/nU4lDMIEF4Ct
	 MKqLUyf0YlzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C08DC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392579361.17852.13654984580698657727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5858e7476f94e62a4181b556b1652c730288c62c4c35bd8760ffad4ab37c38
Date: Sun, 06 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743925793
