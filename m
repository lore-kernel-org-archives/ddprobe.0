Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4239822839A
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741683534; cv=none; b=EVcMBd3lCSWfheMtzh02U5Qi9BTyIFDhonE8oQoQk82NtF9DigRrl8avxZguQSgNABbW1SKiXjvMljxlS3rRJHYoKv+f0Wcdlusr6bsQcg7wkZHnq9BOFl+qamJfGsbw5l2r/fNS6q3u3FeUB6AFTO6Kpkg31bVtqMMdNy1b3OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741683534; c=relaxed/simple;
	bh=IEYUuqz+M2P+DOC5KGu7uOdxL4E0HMB2LU5fgTm045U=;
	h=To:Subject:From:Message-Id:Date; b=Y99xhlRmd55P0Yu78HYHHSH8vljWd+hQJraDJmzWzRr1K3FawgfDPM7PCZZ90q1JdYjMCPusUg7IERJNR0vkQmEMzu8FwQXPVIVs+h06JJ/RiZG1f9ZIAgyMjBQcmWSG1x3fxw/EuYAwBK6nvAO19xwCP2DD9KfbkOPxgRsGoRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq/zaf+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq/zaf+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F44C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741683533;
	bh=IEYUuqz+M2P+DOC5KGu7uOdxL4E0HMB2LU5fgTm045U=;
	h=To:Subject:From:Date:From;
	b=tq/zaf+UDqzGMfMnqxAIySnDkQZJeZtDoQaI0cuOgyqmHloqaDD2tiy9AFGJzBuVV
	 QyALv+7dpmyZ51cfdZ6oxUOXtXAl4PKrgjFduF2V9cBUo1oC+UfYHAL75iz38WqMnt
	 aq5XcnyJqu5qW1AYfOAclPUAYeWe+zcQAe/QdtwrEZ6rApWotfisCnuEbnqD0188vT
	 QrPnFPJMujIQlWYWPxnr+FlRDGC512KCzNod71SiFdsxcI884xwkkrZe/zvu/LM3hx
	 OZ3EaXYr81UHkk7xJo7BETRUPBTfsUmVvFIDS6+ns/GOdzVK72trj2OTNwITAdarBr
	 HMI1lqvUaYBrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93250C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168353359.20236.14297299354330963102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fad9f93d3e7f9d40ccec5fbb7a9dd338993e6f98ab867fcecdf5c076350948
Date: Tue, 11 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741683533
