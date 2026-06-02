Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642A2373BEB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418674; cv=none; b=XWM4dGnDSfT1BD681ko04PHgDQGfI9ydrqfh8otfVBQY3isbmD+XtJV8EBsSGXbf3U5yG7qK35LXE8cTYU2QOnbVOWCQrbXbmj614aNluVMG3+uWaK0B2NgRY8e3jFRtsJMn6qfRc/lZTFszvj3WYY5092Ou1desunVFoBT+We0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418674; c=relaxed/simple;
	bh=2fd00V3TQfRDev9i9PZE9iClMd/Yn74khlaGJUoVSNg=;
	h=To:Subject:From:Message-Id:Date; b=jVWCRqQKk16PCgD572sdMMBwWhB89LRIYhzDH+KkS8/igN3Rvdq1khzmX/eYYNsHkcUk3z0ocST3Fp0a4jfBYJj4HZCpHvcy2mFyskT7Xtp3o8GSD/jY7LImRUFZhqBrfNZpsPNj1VA/4Wkti/1Z/tM2Vtu+cPbY6gdVfGm9UwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gERolhaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gERolhaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 046AEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780418674;
	bh=2fd00V3TQfRDev9i9PZE9iClMd/Yn74khlaGJUoVSNg=;
	h=To:Subject:From:Date:From;
	b=gERolhaDCzcuf6RWKFDUMauIKCn3fUyXUxzW5zJB6E0pwndid8X9fIdT6Q1EXJWU6
	 TLyeLR8MNbILhLxb0v2/SeLT2nJorIMvoAVr3t1zxz/T9gI3R527z8Cgwer0RT9JK3
	 PwDth89jRTNShe1Vx2PXAsJsI2p5sO4pXHZiUExXhx8Tz8f4sUu2H1dkst/NVtgpK3
	 MLzBX6BMaY+LYxBROCpcvgE+2w3XjVzTYrZqmfCB4FVTn0mOgCiqed2UU1oHFNaR1h
	 /K7IYaWur0UEiDDSo5Dfx8PRnHDQk09EjK/qUyRy9b/2qvJsayiV1Jm+93yIg5wu0L
	 MOwAEmSaPRncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04C3CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041867383.11204.6559626038423992357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735a4acfb7f3bcfb483e72c62552673f8771e14cc2b5332116cef397ea6f6b31
Date: Tue, 02 Jun 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780418673
