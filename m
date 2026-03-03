Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABAB283FCF
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772544294; cv=none; b=Ne0S4exO9QN/v3Nm0i7aF+tZjXk8q4D1r/qVP7RdEY436jttGPu+YKHKmSO0Zt7CUKoOuUkUiP17sPyDIBBIUiIC0DWbQg6ul5hFdV5C9KmzgL4+29IVL3JHxLk3WLZFv5SfmQ7WqsUu+8c8ZyfTQy+hNAtGhKp6ZORv7eNffCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772544294; c=relaxed/simple;
	bh=IRG8i6Uc7Q77s0zbtwE1dIfJgsUDrA/9X9HKVjqOT5Y=;
	h=To:Subject:From:Message-Id:Date; b=m8rZP3xQ/mCqJ+Mp/s1xTDlhspFZ6u6OCLIPeGBzFiTuETWmOdVYm+o7kyrJKZBvKcYUJ/STyQOMAC4Rz6d1Hua7yNoZOxuenGQMvyjRX/PLWRbF8NBEPwkNjxxlNjQryBGkf48DdZOyfcjI20R5e6FqV+xyH0hjluLJd9zo168=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s63ylWnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s63ylWnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDD9C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772544293;
	bh=IRG8i6Uc7Q77s0zbtwE1dIfJgsUDrA/9X9HKVjqOT5Y=;
	h=To:Subject:From:Date:From;
	b=s63ylWnP9BHmu+ymuA3u3/fcgjx8aYnGsXGepT0WWATo7cvXQQJ3cQHExDPIKSCr4
	 yT7RfiKxjLtu7zIsGEVDo7Nj0u1diuyrFEw/AsXSHkJkYmDx010YYreckWp+HY96xY
	 3sS6zQU1GCp4cm1/2+Wx3m/sjpjO3/qoyRqpdbdE7pkzvbgECSFvThr/IHGk0iB5Fx
	 VyjWPtUtpFnYV7yqQkWNlpnWNqnJtJWzdB2xCGxGWchSQoZET/qHGfz7Yg2VSAOoag
	 PmTPgdhCuAQowgjfgb23IZ+ohkiKRVRVTDXNqFws7tqBsLYnw50NTlR5p8FgB07dlA
	 A4Pt/NTcdUwMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96674EC1431
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254429360.8524.16020005075034467080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4073a214546036d8de37472ccdc97c4541f3bf4bad76f7f215d20b5ad4dee57d
Date: Tue, 03 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772544293
