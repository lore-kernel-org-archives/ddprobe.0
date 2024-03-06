Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88E85C904
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709717897; cv=none; b=NOGLaDJ0tVt6q+YvtAPfCeIrW9Ew/UeDuRn5i5RfYHWEBiDt23I70VT9Bl03YxErH3syxEqfvLjNZI/F4LCnNsATHD8CKPc3DSjmerZezJpJD8JkFmvrs/L4A3bK98uT282uHRMufAMKvdcdzOEpuvbrhTM6OmZLyEhKqx8QCN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709717897; c=relaxed/simple;
	bh=2Jxc9cXVVHvso7X00wOc2NK1J57TPT+yx9XGh4utOzg=;
	h=To:Subject:From:Message-Id:Date; b=nv39nkdgjyvlE+rgCi83bKqV2GP/X6EFn7SGWaGvRfDMFpPgsxiaAxmlZFvVCDOeJKIZTypJkwDrSNYqqZ2yn8pbcxpWFsvOVLawHwOvxVRfx4RXmSaDe0JxcULnk44vW3ualDBXLr2XZBY+MN0rm8viu6A66C6bD4Yrkuuut0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXKPCiN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXKPCiN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A264C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709717896;
	bh=2Jxc9cXVVHvso7X00wOc2NK1J57TPT+yx9XGh4utOzg=;
	h=To:Subject:From:Date:From;
	b=hXKPCiN4Ed7IqjpJ6MByh3nIzpsnpgII5JWYp9SQVFF5ubu/85sRGTw8jKeGNdP7B
	 PNPtIS2ZCCidlyA7TF3pmXE2Pk5e/sYYUGimmm4Ad9Q0eLX4eGntT1BnAhSHTa5fBA
	 LFJsZ3Ju35Y4rOtXmhkKFZWrkUCIjlBTz2LyfhXeyn9+uoTH83N+WY1Md4pY4/UBYP
	 zwckmROrxWqGUKZKHfss3h0aaJMJ2F0U9AsdFJkdUrg9o+rlLq9d8wjgKCzZWQ5nzB
	 Ny+XT73QPJzBHOqKi+ymky8OOnxVOBbpsJpE5gv5ukGvNjO4I0f67d/L2kXG4nhFqv
	 lrFHRmhHPKdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695D7C54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170971789641.24086.3731006676719349100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0b04aa6ccc25c70da4b3956fada0b20759964c7454f3c85c3f856ae3365d15
Date: Wed, 06 Mar 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709717896
