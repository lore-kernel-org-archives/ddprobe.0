Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911355B21A
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763566914; cv=none; b=h8CzQ4J+byrOzTmCzgPg1OQqiMtg1YoEsj0NmTBpX7XFBDkjfEyHaGGZsFz9hNlVHX5GaPYUp7d3eopnRTzn2yOlw8/mFfHtoxt8o4Fwx5d+lN8jWAYCjpHstXlK0bmOdBCsuYY5JWIEpL6wg2/DNbTzSoWFSnv1zkbn2LoxvBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763566914; c=relaxed/simple;
	bh=jXt+Yzc7B1MPcsZEKVGvmidZUfUHAehQOdQGsVcDzsM=;
	h=To:Subject:From:Message-Id:Date; b=YNakM38SCTpUswztK3AOq3D/XB4/pINHgw7hCnmyLPpzOdWO9SevzFt0IPN8jI5On+v8Tz5+6dUZxCMhRahSvyGJ8YIjCfuXTaZQnHxlB/92BU5gUUzxpkPVTf73JKm6M0esihfo0g+tQMGwnF+Ue1YQ199fIXy/9qMhl2w9CcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lywGnBLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lywGnBLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF49C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763566914;
	bh=jXt+Yzc7B1MPcsZEKVGvmidZUfUHAehQOdQGsVcDzsM=;
	h=To:Subject:From:Date:From;
	b=lywGnBLhjC2WnEt9IqzgWvdLjQa6mZ7Xo4eriODAx7X6Sdi2C/zOUHI7U7HInPRrD
	 8/6Dimgl91qWHiT9qN+tmPqJzxlIvPxobASwDsioTdWJeWl53TKeUzJPDp252IUV+B
	 mpxg3UI6oKBmhvBBaY0Pwo2EtqJKRNlFi1QXgLwBksn2fpbiEbJX4KDh3L48CMcf8Z
	 o7UXvjBX/MrbCdIYQbHwhLi8SfXQTW3CXzVKY0LlC3h8dvmSxegxZU3wANA4IIGneM
	 W+4XUBpVnBzX8lvDGwpRdfMiBLJQ0wGlqNSYnyWcNUQW2dCGsr4miM0NAFc3B5EI+x
	 qF5+gexllxVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97184CF34DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356691360.23510.12635115897233635866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00581789b5fe7231b8eed3a3f18162c3c53bfa654f1c51a99912fe5c68fccc91
Date: Wed, 19 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763566913
