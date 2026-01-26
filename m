Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09773238178
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769469834; cv=none; b=rG18WaJ6myv0RlEhprrnyIGxniSrX4Z3wqxieT5YOz/nkDE555xxvlrumYN+nglnIK73xun7gx5JK1C9AGX66pAoAXVs71H15yHGbgOcMuJrL3PB1VLw00CRFHGOLl6msskWlLkfzR/wAp4ng2bKfr9+haRxDgVKm5Rz7SRODZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769469834; c=relaxed/simple;
	bh=FgqIK+n5e4wxeogzBX7n7D99/b5i7+jHuIYzL2naYMw=;
	h=To:Subject:From:Message-Id:Date; b=UlXM2BX1UC4BXGWTPtpWBV+BejyKEzqot2ijiQIvqZIi1wKi0vCgnoOnY1EAubXT/Z2cd1j2cyobxOL92j1ggSKqXae0VIq+XcmiiuhuHS/1vgcMxFwFcIHwzpF56BdV7VoDURuQ9rjV7ZMjGLSXqpsuvj1AmnoLfDZzD6aDU90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9sCBE5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9sCBE5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8946C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769469833;
	bh=FgqIK+n5e4wxeogzBX7n7D99/b5i7+jHuIYzL2naYMw=;
	h=To:Subject:From:Date:From;
	b=U9sCBE5ElpSmB4bRIoVL6AzTqa3/wJxmNzbCtwkw860SYPwwlzPPoXXQmujX9meZY
	 QNN+5eLX/9x7BQm/UnI/lmqu5hBHJpwdsj+6ogMaagOZYbnX4JyANUWxMt1ba0aMPX
	 dVimymz6HVHnY+OqzAXGxzYlPJ0XZiXlseMXNZrODkyL7xxZqmRQIQQWAMJxSb1G09
	 W3oCxNE56UCy6sGGsq6BcQeYiRP1cfFmlvTjVowioQa+RWvL7/y33YPb5OtJtVcbbp
	 DoCq1zB/lhZRmxuwPBBeMjb/meMzQUklYUSfBUyBK/9DQ3aYx5bfYYNZ9LKV+s8KQP
	 NjkUUUUutoc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96368D1951B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946983358.9094.17084230042196630566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03939a40475d551292047a7dc229c7aaa07991ee0239b620f588e7b5304d29f8
Date: Mon, 26 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769469833
