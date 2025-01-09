Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E299D1A4F1F
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736465154; cv=none; b=DOrIR3bZ+0qIV59IFsTeVYqBXhdNHFR5WOqVCpKKEdU6PF3Mu7j+VdlgDY1LTZ1Fr6g6493NgZ4RXhcCQU9WEuk8V12wFNIi3NhA3+W8j+wS0j4Ha8h9T2UGmW0mbtVm182cIimwUz3OAEcWWrWEMBm8H5mRQNu8T1x8eMiKrmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736465154; c=relaxed/simple;
	bh=Tf9V3GU76IIEOkeU3Kws27wjPv8mIaBEJb0ekHk0+bU=;
	h=To:Subject:From:Message-Id:Date; b=pifSgHTU9VnNCYatL8IY4GjvcgCqPv8kiPEq94C89TERecwmJ4y9sVwXw2qvnqDKuKeJdxVn4zTscdkSUY5GmGefzCpA8moMOkgkqj9qKR2WwlYQqv4AuncgE9oodbZIi6KBYbcAG2o8gYyG7OH7ku7xUubG6vR6fYXf6W0BAgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewRS+qQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewRS+qQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA889C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736465153;
	bh=Tf9V3GU76IIEOkeU3Kws27wjPv8mIaBEJb0ekHk0+bU=;
	h=To:Subject:From:Date:From;
	b=ewRS+qQCH6nuI2YY0v6aiu5q28gQTOzD0/+gzR5pKO7Y1o9cItE+t/kfOxr+81tYx
	 2UTTIGrxXC2CPOdDtwG4FPgCI+depT3PF7rsJo1B541x8thE1a+c/mgKUXWgzJullr
	 VotGJ3XhDjKYDlaccoyA1ej3coqotXYbvAQsofVSuUQmJbRuuwQftCd2Anigj0LeTO
	 2DinhXNpbqwQv3VvglZ5lMCf44FAFmaBeHJyqT6ejfNw2SEfL7ea1eKR2hdt99J3u3
	 g2/yEVuVb0A/+jwirRY1caAqJJot3/+m6ChBm7lKT11DdE3VATbRxAbEWoSMffOA4s
	 ot4JJ+7ZL0S1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E8EE7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646515359.6943.11509850080988608669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3fb12b0b0f36312e5bd576878b29022bf6fc74446156a630b4934d6f744f44
Date: Thu, 09 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736465153
