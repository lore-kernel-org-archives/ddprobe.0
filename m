Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5833A242D6B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787881234; cv=none; b=TW2fA2rDpHSEptgJDRCrX6eppzaV8UxcNDHAP9p43mB59f+ErKyjbOvka6uphRei0M/c7Zi0wQaf5mceDDM37B4TxxTjT9gfzT+fmV/JThJx9ry6q9NPV7q9vIsKfRqdLS9YZKe4Anv7ekNqsKS+p8AMIHwc+M/Evbshos0G0Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787881234; c=relaxed/simple;
	bh=L/BN5xXUWVRN6qLKjW1EuJrniugzsEH1orVlD1GIr6Y=;
	h=To:Subject:From:Message-Id:Date; b=s6hzZh87ewXgxmSmvtRbU2S/J9ZiOTfkvvm8YDOiMjEjmAz1IWjTLi6k8DsjOA9/Bb7CskJuMSG1EzzplKFCwONMHIFSEQYiY9isFE3lrnAWqoM4ESvm8L6DylO8tIPTlqKqTzwmOhaxAt7Vbk+A2b8sRRRtRwM2JufqkLLvpMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzTWPssp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzTWPssp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB7BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787881233;
	bh=L/BN5xXUWVRN6qLKjW1EuJrniugzsEH1orVlD1GIr6Y=;
	h=To:Subject:From:Date:From;
	b=MzTWPsspfOOrZE0dZ+gwVFh2H0H4dnXn+/5hQiUjJs+fT3DZqhZLEvSf5XAjNzqWC
	 sumZbN7SjnM6wkzX3ovesdZw3dujpSo0+b686i+EIr+Owi/xyv8qvshxjqPLqwFceQ
	 j24lIxT9JmwKHfCrCFXDVyox3TvwoWJPtWGiOj5EP4HSYeeGR/UrV93femKDKrszDx
	 MCKbPW8v4BucLjnWNnGpmE/+4/eXw7spJj9LXIOuOIEB3o7fDkuPJKFdAw+No/Qzz4
	 E8R5tZ9HBi4X2WNqPo91nh6KPf4f9L45mY5vq4KxpDwW01AYBkOaGqUkex+2dr7IBh
	 PZG6tRFDzFdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31CC61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788123368.12158.5322939044147091720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b3a1dfeb57ffff6d4027bbdd15df477b7d91c7f6a9643b8a431c645efb64fe
Date: Fri, 28 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787881233
