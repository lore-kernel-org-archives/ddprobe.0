Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307063BFE2E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778009254; cv=none; b=gWC8TiLg2iE16g8DOLnxw9SOfs5ZSd7XS+D9GNA9UxM6NC2WQGz+zMiilM2rWGKxTBdttfhiSHp4S9jmDAc5szP4YVy7aS1GhmzjLw4yjlNCQMPBdxCurHwo1coGQsRieGjPQi4HCuM6QZA7oe82Gy5NYFaimkkLlYbCUUVox90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778009254; c=relaxed/simple;
	bh=WFufnXogmU8C+y7RAY3A9RR4SdA6iRIeWlLECA+4C8o=;
	h=To:Subject:From:Message-Id:Date; b=IudPOfTB6OssmnHd6pb19zFM3hZVB1qFssXDspSelaYnWRlRlkZajm10ZTJdhCG/cUS5hnp5WVH3YtdUzkWIiTtNURxKVm7Y2GvYjmh3vzx5hmg2F1kbUM0U8pkQEIaO15RntvsHlyDf6avtmi50rf+OvW4ZAQVTpatmIyis510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbG1GsOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbG1GsOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD952C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778009253;
	bh=WFufnXogmU8C+y7RAY3A9RR4SdA6iRIeWlLECA+4C8o=;
	h=To:Subject:From:Date:From;
	b=EbG1GsOV0K6YcTv6TBkVbreLt0NZY9BcQ/tmSVR0ojPPO0pj+XzI1zlaLZNa2yHGx
	 /fCKche/hUFzL4RreNIsPGAKz0tfuFgdrcph46Fa+4h2ayzL8g4uE6b6Ry4QFi7Ic/
	 4FmLI40JrdBMZhWLUVK8mTUHG/F/lw4ihkbhdcQkmPk5XXXhEfuCX/LaxMiB8efzG5
	 po3KMaW3IQ5+aiu+Ok87YIGwU+9JPPA7ifR4GqFx1Z3nz7sst5PqAFsiEUz4KZu7vj
	 n5fIhryLVmjiWxwO+iGs2q/H5GnH7rn/Tn1ohCtktDT/zKo4yhgDhUX9oOU4pzG4j1
	 /FPnG31g7Tgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA842CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800925368.29612.8950900078207089383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5b0b6bb17135ae1698a5763134fb46a38410fa20c6932eea28ce6e9c6b15e3
Date: Tue, 05 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778009253
