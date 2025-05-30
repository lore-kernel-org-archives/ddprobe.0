Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F0275112
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627394; cv=none; b=buUeI085JQA1O5gBTM4sCswR6fAogSMUthgDLDdp9aPB61ybNyp9pIwFHZo5DXYnbHwws/yVLMYGxtWbK+rkHCR+UHJG7BjCP5FzHUbOSV4NK67Jyl6te/i8iqCBQviow0SvXzf+T/j2+yDFkgTWC6iEyDPG/tYb7Z3Ro2d0SPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627394; c=relaxed/simple;
	bh=l+hCLMP5Mz2q5mEAzbqIMqkFxFDNeAN8GxsYaWW1HoM=;
	h=To:Subject:From:Message-Id:Date; b=DMZQZT8pQMmK6YOmwIalJcwJj1RRnFhExUN3y3C/K+BBsMN2KgquCAJ30ekn9jopBreA9rKTW87YEWPHGLYt2QfXW7CkhRBa4ecvWEagunsBvqmaoDjxwO5W8dNB6/DzqKMx21ExaBfLugLMfn6sASnusK5dgIRqQ/gmhMPijjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpDPNULb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpDPNULb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4DC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748627393;
	bh=l+hCLMP5Mz2q5mEAzbqIMqkFxFDNeAN8GxsYaWW1HoM=;
	h=To:Subject:From:Date:From;
	b=LpDPNULbmAc6eGmiJfSgZ3hxK7l7bXHTSOZEyBdXmKsRF6onsjBgAH6lrUocRiml2
	 VfVZkGrP50VfmtM00c1T5AZGCKOFyajbYNxpSmpXo79SuSnfUIf6+/6dTj2M3wqZ8x
	 QEvuSdWiHVLZn02Mx8OjsYG8fQKTE+IAH9caJ1WwY3a+xlr7heHg0UrmREgKlhRJU0
	 tcS/d7ldVjsX/KSPpe3ptMg3lyrif0VXQWsYdR5mpU5STImQ0ppYmrYEMOyMVowDHx
	 3Qryb5tTifuqUiwzlkCs/UxcR78KWbWefSPX7oqVHtubrXQ7UMzsIENY/pKVwEztAU
	 zklq1vdbpPd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CCC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862739358.28387.6968503190994459118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f115aa748532743463fd0c2d81037a12472ab58197116252d00064823cca53
Date: Fri, 30 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748627393
