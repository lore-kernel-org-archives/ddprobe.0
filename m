Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBA119580A
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730366754; cv=none; b=PY/Rn4tnmk6rhH+sso8zB5tPkj3O0zotxSha/KD2pj8e2TZfd/QerM0Qhd1dx5KuuRBjbBSIph9d30ZjIlwob9NnkTyMdu5fTwWin1OvZhKJqIXOeJnOqYYkwPOKJx5Q4RJsvngQ1UKfv+i46LIdNPfxKBR6mx1+jF2ff4RKgVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730366754; c=relaxed/simple;
	bh=+lmHDN1VpLVk/H7dClJq0wz/S/YIvMvpSpe7n5bYZdQ=;
	h=To:Subject:From:Message-Id:Date; b=Zx9I4mDjJg6gxVfEytBTFyb3bAH64seczxRb6IYW8NI4dwD+MzYJ6M+lo9TMmM2to0cRVY9FkNVzlpwoal5HRl6lx2/hM4SMhjToNZCDIGdB+ngjwaBnGTWsQsvzfwxvyVn9Wy9VYuqANJQkzK5zay/mhmDPJ0I369ZlfmAIrB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTBz9eUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTBz9eUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7981C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730366753;
	bh=+lmHDN1VpLVk/H7dClJq0wz/S/YIvMvpSpe7n5bYZdQ=;
	h=To:Subject:From:Date:From;
	b=WTBz9eUcffRyfD0i6w2bbIv4yuHPAEy2cSqWqexaIj+oJmi0WiEJPZixNT1j4I0QN
	 3iKmr4X7PEPUQJ4WKQfv5nNvp4uQ+u1EQeKyJZc1rm3VFZ6XE8eMy7L2G2JbkZ4lDr
	 R77TzNWXouBL368Ea9FcROp8kF/If99Ju8VmY9Xd/+g6nhRv064sbc1rqxZQKz3Qvf
	 sHlYvEeYa3ABGBWc8y+oZJ6adaZ1HD1bDbspA6rHcBxNPsNU6EzH3n4I+nffSgNII6
	 u+CUXNeziPnEnKMEKR7ptvUh3D4EvOsz3vEEGYBgHmdBxHyDgCH7vcIUHGVRS92ua4
	 v76cVUTgRpU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96902E68960
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036675360.11161.9255463099407530365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9c723b03acde7eb1f445af7a56b5de275322247f8b05c3335043078b1f767a
Date: Thu, 31 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730366753
