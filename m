Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAEB18CBE1
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777007254; cv=none; b=Xged9m2InBdERGN9DO6ySdzBzCXN9yl+nOVAifIWRbZ3cQKR0OcW6gHV0jMdPmnK8kre+ekNb1xiziEx4wOaSp+1r4XSligpNWyY8wU6iHj3sKu/Uz2ZbpujgnVBRgl+TDA1I7cQgfmWXXKiDsjJ93RpSSnw2S3BkGWV4jU+dKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777007254; c=relaxed/simple;
	bh=wXCJD1p6J6/XIJwr8SRUAWbMWU/qYsk9lo5GkjWDA5Q=;
	h=To:Subject:From:Message-Id:Date; b=bW9c9DruPVNXSZBb6tqJR43bQTWEGOIJHj0I5amlKowf6aUsnBT4XbWHlkGZRLojhVPsoQUzJdc0gGNCgN6pCk2bPQ2JKVVDRI6QilcwUQYpwLQLvb05iN2yRm4zT4WJf9TJ26+Ik3Peq2G7NF7eCzFXv9AD+VeN+2zM5feUVRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRH5IseF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRH5IseF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD05BC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777007253;
	bh=wXCJD1p6J6/XIJwr8SRUAWbMWU/qYsk9lo5GkjWDA5Q=;
	h=To:Subject:From:Date:From;
	b=JRH5IseF0824D86OV+jHK46Set/ACYZfI4W7rSABoLkFoucrgHpYzX/CgpQxVdH4l
	 IIZLK3kxSHQHo1g88U2IuArzX9jX692W+zXudpcdvm9AcvdCOUn4jLC/ZlGMHe3SQu
	 FiHavHv2xVJOw9Lv95eCzJE1X8e81D10qU7lOWzkbdY/vA0kua4tE7TKRTszT8omUw
	 z39fA9IQi5JNVhwh+9MSuy//MIDHfpYTuPNiFpkjIFlbNKqddmvl2lhPKbWAdQ62Nj
	 H5gofmipE/g+ip+N5oTf7Kop2qwRrhSR1eEcHpW9TpO2yd2GCxX1Hpcy4MvcpZCfFG
	 VqnvvXxT0DJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9624FB44A6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700725368.9562.5199395640297674390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a15b949600d25c6aa60a4e93611bf8d454cadeb31c688f0dd3b112074fc210
Date: Fri, 24 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777007253
