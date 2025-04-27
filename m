Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474478F32
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745759994; cv=none; b=FMRnJKgRrYW7SKCCpsKAqZEsIaOm9CjtYYVp0ePdnvr0zxS8N30x7P1ghGmBZUW7aIngxzDyCBZ5eNfg5EMNAV+akYQCOjMABdBXYwocY9X1n9B5gJw1+WXPkWle2BCaOAVtVLt1yzvd+33IWZdy2rQXLGWy8lukknYhWERdS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745759994; c=relaxed/simple;
	bh=MB9xPOeaDawga0BKd6vIcapzJmkcvSKM43XNXbpAfC0=;
	h=To:Subject:From:Message-Id:Date; b=hg2CziwlW45EHByLdbbDlgWO+gVr8mGhQbQkIWvrySJXFfv9A3JZbAXB8mUaZI5/oLbkqOXM4q7Q5nSfz8uTUKuBz2biiYW+GIXKquLvk6cow3PKRDbcwx8Ku45S0P3xwctBJvddk76Mkmoco6tWuNzVPf1fBilIy4NO7VMED+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEtbqi62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEtbqi62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BE3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745759993;
	bh=MB9xPOeaDawga0BKd6vIcapzJmkcvSKM43XNXbpAfC0=;
	h=To:Subject:From:Date:From;
	b=cEtbqi62aJAITez+oZdUfNRDYinSNs8FoGr0SlgOivzARMUV4HykpyCE3gVfabFGB
	 ohAWGbyqTFZ3WHGlorPVtBRPPeBFo99WpRuIZMGG28+X8xQqGV1oX62ICMORpUvPql
	 rT/9o2FyASg+uF/GKEXQvSfQrXUz0RGipsjxrFchCaxPU3G594qIDI0Ytvgg2h4QgS
	 YJQ++FlqYUIXhurN1M/+faBw7U9S3xtb2H3jCBIUgGgVqTRqYb5lZzf8TKzmrUKosm
	 tqVlXrPsqQWf/eVLX7W/kxooDi2C4cXeL2TaLgs3K1aGypE6Ig2b4iYfOmzKVbKbr+
	 ++Sf1MOFjncZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9622CC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575999359.17607.3077528542416486437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0f44aeaff55d1450953a01c2795aebd021d637f016ad3519b741ae3a1b9eda
Date: Sun, 27 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745759993
