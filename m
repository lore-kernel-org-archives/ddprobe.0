Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B60A1D5CE8
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745066394; cv=none; b=PqLWXMHG2oyQHNid95bxVjhXCzebRXVq7GhZkG5yRaJHtp9nZkub3kmCaDZCBQvJ8sF2+54y63/bXsjBvFGzCwXN3W/BbCBAA/u+fyy3hnG4gKrWZbR+AFEKfH38UNjEC+ih4ZCOZKaVFfse2F8ef2CEVfhUFlf/ElFlKdDnOEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745066394; c=relaxed/simple;
	bh=hXQXqTzQsKAFVPlQ4l0KyY7G5PsZ9mSOvXgRXflDmWw=;
	h=To:Subject:From:Message-Id:Date; b=OKUhuiIyHg7C5JtynShQ7JYicsBZweKJYOonf7GDOT/qNzbKwv5OKIbg2ywW/a4ttMbdQBS7/eegwI+HwZVGknTBYzimoz+M0x2DBH1wZBya5dR6g18IAtC92y4CmnDFsT3Eh8tX7vod6sLI4RVn+8SWWLPThTPXm3YTpAmxJiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdUJ3eKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdUJ3eKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05CFC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745066393;
	bh=hXQXqTzQsKAFVPlQ4l0KyY7G5PsZ9mSOvXgRXflDmWw=;
	h=To:Subject:From:Date:From;
	b=bdUJ3eKTdYxIB63psQHYlmOiUcB85DeyMmp8IINsC8868WtfHJ4214oZXzkMESx7a
	 w8jIrmOYHmOD8YuSGvE+AEzGgFG+XU0lj2h4jPem1VV16bMKYawVMN2vU2mtR2gZ5S
	 3hCF4IJhQNR3O3jcbT7990WcWQxXC8qhUv5Pv3zyh3ZRdeO7GbNjwltwL9iPtxnszK
	 WOCsUYj4vVEBXjHLM6yzOieMN8o6cKPkOLjUUIkPV3KkF9SXTR5yjJUcuTF2e5zpJ1
	 bcxgquXF/f45/mjoCWQm0kOXTEeeolX4nKHxJakgnuZMB7kB/XYmSxVj+HI9sRx8gn
	 a2cdx967w4LQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D88CC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506639360.20315.9854636821780795454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a86c6322e29d9897963573eac9c8e4cfdaccaf6ca213417a048b84e4a0f90d2
Date: Sat, 19 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745066393
