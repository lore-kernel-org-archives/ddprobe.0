Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A34836AFD
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707563297; cv=none; b=YdkyGFyJ47FFramoUPX4oZJ/GLUUjFYK7LpHUhfqDCYii9W8K1LvV1/ElPptFO6z8U+/GDmWkkv5KgrtyIz/8gIuhN8pATNDR1YQyY2jPYQGK8aa8ERpDtwjOIykW968RkVOBQev3Sp+H1yeaZZLcom/3ZIFMQGe3ODC7DpZ3G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707563297; c=relaxed/simple;
	bh=A64ZXvnaWcdLXkBAdnbC6eEZ213lpZuT0ANWCW9Z94U=;
	h=To:Subject:From:Message-Id:Date; b=lP7wO3w0MQAWai+1Nf8calrURP701BQJjuD/fEEefyuqX7R2HEMYAHdVD+UuIKpmCe/uGngXBsXvvU4MBB7iZv/e5bVzpyGH8Xm/shDv9TuYHYQZrrgobrAvjfs9OWTcq2RvHngL7meQJxAZL6WMvAtyiqV93Cnfb5u1gt9Uc9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntb5VnNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntb5VnNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C134C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707563296;
	bh=A64ZXvnaWcdLXkBAdnbC6eEZ213lpZuT0ANWCW9Z94U=;
	h=To:Subject:From:Date:From;
	b=ntb5VnNeOvxwkbcQzegsGFvGSxwAQGrBB+yXsRSmxy4N0OM5i0NGMrVwTS+tPChDO
	 79TDkZTzlGIGByFneEbeaw1EzcgRWOuFTk5Wb43TPrKhLrbHp4oOBrIk8IR7p/81Tm
	 nkXTjgvgAAijYix/aK+Tl4SU2IecHol71v3Cj+Dpg+nRJnVc5aThwIlQvsd9grtEX5
	 CfisYhx96vyVdw4eFsfT54NXqd32JabT/0J3WYaIeIb2i2FBq02qmBLr+znaWGfn0i
	 pdkRjB8wXCkeFb+6URgIMVq33kLixHWDFEmgMd8wzdrgRg8H1d+UcB47FRI2Huiif4
	 wYhrZYX4jG0Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E742C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756329637.26695.10315476683647798425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93da6eeaf04ce58aa136ee5deeab7353ee1fef7e90af0ebca624cd675308f08
Date: Sat, 10 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707563296
