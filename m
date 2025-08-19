Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB3A33CEA0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755608994; cv=none; b=gHlsoHQJCGIexFgespyQdc+TappdCgNEhrvvJ5yYyV9KmyS+9VEp7I1L+7slqg+PL45+WKELt2KW9EtRwDzS1XSGW9YMo1Li8LnB69Vls5sW/Rk7IQJul2sJUQ4Wg7ARgLmgOfnfBPeXHhTnCCY/Siqs0kp7/XgwgsNlDy+/wPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755608994; c=relaxed/simple;
	bh=4NskMIRh8TRr47+w2BjO96ou9BCLX6kP7xxAma7783Y=;
	h=To:Subject:From:Message-Id:Date; b=kQwfZ9GGtMArYY0JwoqTkf7xVT8UrOCLZZyUwy8jUF2uGon6l9/rfK20Ob+qbOnjtz9WVRnxG2Gi6HnjwOc7o451TzuA9PbXmn4/NwqGRUywrbzh+2w6xBB6eIy9qDCH3qM8NMtcJsCuIwRjkR9Ikpyfb+yjo5MFw1NmcpEkSQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/c/A/Si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/c/A/Si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C593C113CF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755608993;
	bh=4NskMIRh8TRr47+w2BjO96ou9BCLX6kP7xxAma7783Y=;
	h=To:Subject:From:Date:From;
	b=g/c/A/SiG1yDYxJkFbR1dq+JUD8FMMzyxEWXaI/jd+HIJESFp84gEvA5aBRHCBoJh
	 yvtm2T5U03zMQ/9/8f9J1+7lg71J5YjjS5lwZkXUvA9r3dObTBqXl6tmKs51YM9TVE
	 pc2xhzQUKCoo6ZNbjaWygx7EHanj7QT+VCw2ZJsw1fJZ6KGj2wiePZ7x7ii9dgeQ3r
	 B44ijk3SKrKfPDkRwArN2qaohpK7BpllwmAdNV5VdcriMhxYjktWYde11HMTq5Gom9
	 tFvuvAkSyahhngmPuolx3zneSw6YLiW+O7mZrDvIyFcTbqYUe0WEQ+us5p1AmX1SPH
	 6n1cNRDRuwOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D8CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560899357.16968.13901405747499782093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df2376c73df57ab9387bf555900d30925b0f6544b2653cb4b476ae8d4641e65
Date: Tue, 19 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755608993
