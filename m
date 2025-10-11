Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C566C2236FA
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760176793; cv=none; b=OJK+obFdGV7o02Viwl4lDxLkiR0Ed95bvvkREA6fmnDqZ3v4/H6UVd79OoRT3ZkjTJfSQL008oCa7PRqczYLLPUDg42JQHQVOIBKQlK3cb2yy+dmwRNnrLyJP8EHDt+Nm7IzFaAcPsqDTp1o2E56L5M4sn8f6Zm6u/efoyQYZcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760176793; c=relaxed/simple;
	bh=/rR/3dmW4CrMV7LbCcFEECvigj/hETHxJwPowXof9c4=;
	h=To:Subject:From:Message-Id:Date; b=TpHJ21bcKuCM40SHkLW/saQ8l+IE0QwweowY2W7E8eiIStx6p57HktcGPvVFPmETCa6ukOp3hZxNO75LJoge3HfjiWmy2isLTzOgy5JAZu9N4YcQ+52AjU3MjFQ81LISUDc/yBMzA2f940Q7JRYAifpQa9Y276LiDbVHGbCBxZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WC/1AKej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WC/1AKej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0907C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760176793;
	bh=/rR/3dmW4CrMV7LbCcFEECvigj/hETHxJwPowXof9c4=;
	h=To:Subject:From:Date:From;
	b=WC/1AKejuD+rVMS81EkUlateTwpN+MwG+00r9m9kOrAZuV4wCJ8WFso7ASjay8/4l
	 M1CVPDVJtZjs9grzStX9kGmhThMGlOgYLx1twOl8y3gISb9/WzEw4ZVY0ZXExUkmAg
	 gJbpmHzUGlVwl6intReDcUZFHSON9KCZPkYi6mI2AwbuyM8VTB8POEz1phr3o62FIf
	 0ZZWxAE2b8Ouc+d+7OHxVkrn/vi7edbPeIHph0vhntkv9YjXDfaIY4sRNrsVFiPNmG
	 b+LvYDSOyax4UwqIos2ELERINkNe5+6804v9e1yGahyU0rQO/XQbRzUlFAG4JJLz4A
	 rfqKxM7r5Fh/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF74CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017679357.28699.13671293858113110551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c92e4964549b1f5e6a290713d16f0235988fafb79c6df808d522fb4bea638c
Date: Sat, 11 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760176793
