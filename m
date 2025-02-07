Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562291AB6D8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738961754; cv=none; b=IjJTajgaT+Q+3BFtGIiRG2uNg9aqk+9Mxc7Z8y+7hkjdK30kaAf4Vipbn6zJrWCQfh6tMavvf9o0yBInpFyGzL8UisbWXYXCdB1d7DYb0TTUYO57prUSJvI43wy+I5gVVimFeENtUjLMOQDPHNC7MthFfxy5DWl8sBpM+UxZcXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738961754; c=relaxed/simple;
	bh=GOfFjfEGgybuYlA/q2NcbCbFtideintqgfRSb2XohVM=;
	h=To:Subject:From:Message-Id:Date; b=JBCKZl7qAhxxEp3R4Zu+pBa/MdfF3c30wJ76KuCVFuL1HdrDeQ+Hbtgkz7Zr2krUZM2B2z/trTT4c+wC9+FcbErR3ZLU4l2Byq3QBPSb/79LM2AVW0vqELCluY9TmuvEdxxAFW5HXJEARQx3YYUC1PsIOUnDsQG/8FPDWrfiXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO7jDfdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO7jDfdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3F2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738961753;
	bh=GOfFjfEGgybuYlA/q2NcbCbFtideintqgfRSb2XohVM=;
	h=To:Subject:From:Date:From;
	b=JO7jDfdfTqeGWcLqyyNGfFUEQMoprssl7nUQDfqkmWul/2d/nd0tBZHhNonCJl0ul
	 rgihDhhEoXW3tBz0AOMrUuSFq/52kTKmwV9bsWM7MVTAOmcmfJr7ZGjnwtQWVBfdFj
	 5g+C4VoKMj+/pj4Y4YDRxP6YvlI1EJg1uwVBUWeSRojIJ8t5o9xzH38BflOrGazJAl
	 WvDS3FTJmZJ9pWOH+omvR6pNEHeqreM+HJbHLvkdr5maaDJrTrgOrLYR6lufjLen0I
	 IMUuv1zHFQsWuj3bH3WiXyfuC5HFf5eWaulKzhDFxuWtMhk99QeG3dfUZG9Wky5pfL
	 3m04IMu7EoAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ACBC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896175362.27788.3223519130274269163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69e928d8605202375076312b0c14ece4dfde0db6ff13d720ca53ac77bb23347
Date: Fri, 07 Feb 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738961753
