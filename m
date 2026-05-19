Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E000578F2F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779152433; cv=none; b=PUeZAzi2FlpDRrjJZrjEY5h2ApFAsHukAGnS8KHg25sb9k8Myn9mjfaQ5kUSVr6FclFLOhdDuhSOT3OpZXQK70x+hlss7vZSg0TUyvPXS2oqCZPuusiXtyl3zjEayjBUK3tfQHb1XnB+gsT2vaHr5SJf/oz40fOOCUk/2PX/PB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779152433; c=relaxed/simple;
	bh=EER564laWhAEk9yLPb4+sAm2lAzOQLdLRwTfArGA/ig=;
	h=To:Subject:From:Message-Id:Date; b=BYVOzo1Sz4/5Tba9D+rFokGqR7vB+hWbZ0dTGqK3I1Q0a6XAcoa9dbTwhsmgTjKm+fm15wAPR65sOi9nDWaIWiYS6qeuiOvZrXV3qWxKZYVn8lBlR32MJVbA9A00d6sUaYnAgF1yHRxtd7IESd5f1vrWpqJIvVhqvROfCYzOieo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaVDvA4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaVDvA4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD306C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779152433;
	bh=EER564laWhAEk9yLPb4+sAm2lAzOQLdLRwTfArGA/ig=;
	h=To:Subject:From:Date:From;
	b=WaVDvA4mcko8iBRO/bGxUQqLQiP1jVUH+Ps2rI5FYTNsWW5qdqGugOiUlxDqngBG1
	 quH8xQbHAGVmSH1MNc6WFk/oP5fmQaaCFS2nh5+WF+6GPa7WxLmeQoGqVO2LuphTM0
	 qPBrnHhhOmhgW9YiKnsdXOhUOpti1Cc/K+JYzg4A3T4B+Ml4eKbsQYNEiZGzuCdYjQ
	 5DCuXhduym3+8Vx/3mxq9NTFbgsVeJg/j7f1VHxQWB8W/48St+PdXh+VFKWwSNOu02
	 YJbMqBrI+e9zQrcbXCbzFD2K5eAS8zrXgO6x+eemWIfwq42CySK8B0L+c/1CoJSVw9
	 gpJvd4FTRguKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA842CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915243368.9038.17420479220627066759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2d27d85bf9d8bc1de2b81f838d389b2881adc538958cd3f2af261c834459d4
Date: Tue, 19 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779152433
