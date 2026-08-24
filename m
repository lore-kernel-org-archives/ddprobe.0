Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C55357D03
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787592634; cv=none; b=Z4j1ArgiLvhSS2gJRU1VJ0pxhxvpZ1bv+fHXwItN2ZfO5MfvZ1rGKTrIG544nW3qfEEVwRxCDuMGv4d30WdcZSsk8fapuYO038c+cyaHQHKAn/0oIkscMfmW8RfK2iKqDcEStLmVbD/nIEGjOOvepIEPW2UtFQc/a/xh1S6T3Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787592634; c=relaxed/simple;
	bh=aLa7DYaoMlMbtAXsKI27mAooz9KyDHqVb9DA9gLx7aU=;
	h=To:Subject:From:Message-Id:Date; b=a/Dch+S8gkaC/P0YP5CJJmvwnS3rqEHx9H1UZl25RCaPSDEH8qgk+YmkCUmmLMf7A7Tb1xPKfWC3iGGaf36iIvHytKOFh+jgTQHBk6L9HP3hN6iF/xfddU2q67bWTijtxq8dxI78gAjcGyZbgcc7VmMu69OBxKg1fzUj6HCrs+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fsp3Kxs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsp3Kxs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB27C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787592633;
	bh=aLa7DYaoMlMbtAXsKI27mAooz9KyDHqVb9DA9gLx7aU=;
	h=To:Subject:From:Date:From;
	b=Fsp3Kxs7gkjp4MStke4QTqyw5A4HNVzeIu0jE+/WNfK5Y7aNiPuxrj/4Mn3bMV1w7
	 +uEStK+tojgpUXUY31c7Ao+XIjI2ZdFVQXroTDGPRTsojvhHTnFPmzTQAvimNQlE3k
	 SXNdqvl1q0iqMiAJIg0f4FBhen0QmmzGgoLdHJblvFs90/2m0UNiNkdjn4q3AEKXEV
	 nb5X28sk8J1+lW/evxh8e+ePCz1F4RxFLi/YD4jqVNvkyXXw7cI9hzTzFyyHnvA8cD
	 yTY38ISm1Qbt6NNPMJxVF5ZbBwDnZVOAmzE8ByfLSFXULGv8Wervxnqa41B6Dok/hH
	 lxI316FeuCaeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB889C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759263369.11386.13101699874823321205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69cf9e82a5c4f9c029ef0751689ec169c22c6f0647bc83daa35edcfe7a63aa3d
Date: Mon, 24 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787592633
