Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CF38F7D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737512754; cv=none; b=rwjFMpagwXHS6v+02waeUSSPotb1dzAVEIVg40/FDyoRRZF17kO8qpfXIu3F+w0POvGuPH+UIWy+4yX37JDkdl27HNV58Q2w4HviosIIeupCw8NlWwlXHd2Spr+icqOIltMtxzL0TrqP+RkLoxyy5W6Z8/2dlLHMykuL+i2MEtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737512754; c=relaxed/simple;
	bh=527MpWH9b7ykGbLc+QK+pxEW3Wd4EvDL/SPtTtFiIYA=;
	h=To:Subject:From:Message-Id:Date; b=tcmcC6V6cvpemzQ5a5Hpn8UbqUWglEjKbnzFyEu5xn1vX3AUuw4/x0xovVoKXTu4LaAieauhUWuvTteIyTZQz38gat0V9aBVpIJz/0+LTf6ig2jqL8sJT7Y2xKJJ8Q2qsIYtRrN48cd41HaUYgHrLRuuVZ7fs+ahMN0u4AXw9o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgkPGwd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgkPGwd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93D9C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737512753;
	bh=527MpWH9b7ykGbLc+QK+pxEW3Wd4EvDL/SPtTtFiIYA=;
	h=To:Subject:From:Date:From;
	b=fgkPGwd3YnP4N86MNsP51MohrFER76OClkfBtkZ1xZgtbsToR/9gPQfmiIhjQUHe9
	 aiymDDzAtXttm3ZulW4BrULZcYnE8+AvicpsE+9YZU+S55NBy957tBKHAYuK5+c5KY
	 FjRDJ8m/vCSg++Hb5e0TXOFnUtKh+hnwqzQ+cG38Da95+tL+boK4FjqMqighaT8br5
	 OqJm3dA07lC9ZuuCnfuFByRX/rk7+MHvsZnWyGUmQabvlVtLhfczfQYfRx9mlTMySk
	 wpEY4jPODsY36Z+gY0mqP0xyPaTHyAoJr+C6WyiNRJTvZGUWwM/g1aDtmngfUgBN+N
	 bA9OKWfqTKxsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9204DC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173751275358.10379.16660706559656622483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed4220fcd5fc0cb543b412e4e71d56606fa21438342dc939dee04b49de1d7ac
Date: Wed, 22 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737512753
