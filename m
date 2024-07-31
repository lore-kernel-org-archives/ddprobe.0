Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E931A7F8B
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722414354; cv=none; b=G1O6n4WeYX705aT5PJ+bkwbCGF2F4kvjN+6e0mL6IC55qhltL3E0XaT0t0PTVjXIHz1M3rQuaKrM5rMBhxY9UGLWH4cQ1vCgPP1ZBm9AKtsBiDFW7bZ7bit6pRjvYbQa2w0vYFGqHpIWZg90pZgWOmzw3Dxrj33lf4rQnApM2t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722414354; c=relaxed/simple;
	bh=WTYOuKedVuErVEWmMaPt0FARH5c9zzD6Hwr1FiSOIpA=;
	h=To:Subject:From:Message-Id:Date; b=RPUef+aBZChyDIm1sN0idNSWFyrCAS9KobP4WfFwyFBRWSGFRvdmhREvXrmXWgrvAV5NwMRjNnXS5tpnyTQSlWUcuel3pdDUOWlWsVQx63g84RVXGPAucnRwqNE0AEZBexK4bycw5AwVsfVKeDo8osJHxuR6uFon+Ct4JIYEw4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJOu2PRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJOu2PRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDFFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722414353;
	bh=WTYOuKedVuErVEWmMaPt0FARH5c9zzD6Hwr1FiSOIpA=;
	h=To:Subject:From:Date:From;
	b=AJOu2PROL9CmqzB4Gbjq70HnAUtCjWD2uLg1kXV5GgYAUxkbC+S/eohDu0i0dvTtT
	 uxlV88DeeDtXpetuwTsro9kIRmL5Z7N7kwL8oVPX8/Xe9SRvJ2MK2jju6itSCpDKAZ
	 +QnURlopHPqDT+GS01t/Zra+QAsqHBPfHDrIFMPUw9NfA44tD7VnStRmU8141wNt1f
	 sTbMbf9m6fhP6E/ZU0HvYTOy0XOLHgldjMHPr3JvkRWxslINfk3uZS7ExIn9OMvZ/0
	 Jtx1hepk4sAquRMLzETLsdzqjH1RJA67R7oVJYyu1IoT+rrl9x/WXCC8yv/EX6bfZ6
	 4De8F2c+j4c9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B92C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172241435359.8218.1012839517597173960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9126c62e6c03ed337b878c76cd2efcb78b392324f1051aee78879b783b4e691
Date: Wed, 31 Jul 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722414353
