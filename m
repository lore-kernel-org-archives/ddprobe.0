Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365FE1171C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727330754; cv=none; b=P6YU3p0ojiSGQUOCE0H9dyIKIyJBge0SdTQteJuZJKGQ7CRGdfiavP+XcuDfriErf4NDUDtkBt5qfwaDbVgsPEVCYqN815Yw6QRH7II8n9XguMq/8vrLMqH12+WDYE5zIFGVVzUVAYQAJluXqK5aR86XCecqbzCKNXN8GIHdnxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727330754; c=relaxed/simple;
	bh=W64RzlVV+co8yGLP8ANIBVNf+F8vR9nxFXFjb0hWDoE=;
	h=To:Subject:From:Message-Id:Date; b=ohy0NyTjjni5sVoCy0IBlo32rjjJIvEHVRJJRu8iqbircblk1F1s1+9xEhnkbpi5BrC3o0J5ygtMGlf2KYm0RxouUEEFYMzzEPlpC9a6pkbTKsGJIUk01DWw6USJ0tFz/n6O2t1opwQlzVR/kFiecSxl9SvwdcNXmtg3bwpGFAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLQJUCt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLQJUCt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF1CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727330753;
	bh=W64RzlVV+co8yGLP8ANIBVNf+F8vR9nxFXFjb0hWDoE=;
	h=To:Subject:From:Date:From;
	b=lLQJUCt0dQyW3IxAN9EyZQGAHx8FGoZKHwGZT8vrOQs4EWKCxndLK+I0ZcC6KfKPR
	 T/v6yAu6PHqvgdCyDneW1Aj4RYmzd1C8+AhJ2hr2ICo5TLvwMREdgq+Sqa48H6rtJ5
	 uSVaH4bAmzM8ZRNkJlY/sNI5ngDrUL0GJPl8IMZjj6eckdwHHClV0jhgtnVgfo8Rue
	 A/uQERTLyIyQGnn+1C9tcZYc52R1zKRGPmevd7Wa4d0pVukhC2K8gqbGUOk6Xr74Y1
	 xEErUocqg5ODEciEBoGKZixmUQxODiw7p/J23lovqTdyKThGzrKHdUi72+YXm5NFZp
	 Ons6HW0I9ZRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A5CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733075359.27187.2100016510884954159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd4a18cc7d7d2aaf6e6738770acec8f9857f4074647c487b6f963b6bf386efc
Date: Thu, 26 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727330753
