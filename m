Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8CC2837A
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732814754; cv=none; b=akgKnsQ4Z2udoqRGjescWd3NN3jPzfbWzDc+BJpwdL8fAeF0Vwv9/UAXws/edVCD8f/H4KyV0WfQ0SMm6ZzYpx57bWwgfFcRVdQjK8wvLyMSqYSeIdVef10zz2FeLRleMq63liglvCOCEM3D9P22JjHvd504eg1DalCxkj4wHQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732814754; c=relaxed/simple;
	bh=qQySSvDOc6GBMNKyi0Ycp/apmyKsLv3uDiuECFD3i58=;
	h=To:Subject:From:Message-Id:Date; b=JslpAlWx3yvZIRIGXgoNsR1jL2MhmMzVpBKRsc8AUFgEx1pwwdAeOKfhtAFChxDbdwbACHiPv7FYEZnuBxiUlUCHCsxI7HEnazfEUZgEFV2rmhjyBrFcVDpfakMYZl2oZLUXbIpNlXBsLYkJ6kF/51QQuIadVF616628njFrm90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzdEeju6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzdEeju6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0323C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732814753;
	bh=qQySSvDOc6GBMNKyi0Ycp/apmyKsLv3uDiuECFD3i58=;
	h=To:Subject:From:Date:From;
	b=JzdEeju6ZMXK7et0U4FJOW2uDTLM2if5v7KOH8pNI7dxGY+JPKIJQC5Uyz5DWv5QO
	 c4Q8lq55PqVxIotamJboqMFSYubUZRu79FSD5CzFgd6xff2f458g/Z8xpvM4+UQqze
	 Bz8xXcnd4DkbigGcvyI6M54VgC/ktNbVcO7YVLdxBcfJ63ib2Jm3ecfspqH+LjFFu6
	 Jq8z7+ojphOzs16RUag5AfNQr6kGdI+TYnX/avDDqtKjXYkN9bDJx50dR5QzmCIDfA
	 5q0tM7UBQAkZGoqVIJRmh49yaJFj5wazUXGZGHAaN0KvSjgPgQdEw9PaHnBwJTQHPI
	 fWKqYgeeyXK0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9954CD70DE7
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281475360.15354.649570312492377328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672a9d9a55c2580e21ca6f91437b562a71b20edc002304c7a507cd08a81ec707
Date: Thu, 28 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732814753
