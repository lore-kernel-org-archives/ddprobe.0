Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5C01FC7ED
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732731353; cv=none; b=mON4qWzRo4/3t3Et8tzhpEic+gpxKgMIMvIlxa9MTqXnxiYbyf6L+WbRLDO9XnjG7Udg8QXuXOcwLysP8yxJGhwbmPbjYsB83Ful5jHFqvkuptIcchwWakVMqHvD+UjrOyXTxHUOk+d48xQGS9Ekp5TqdONLpXImwZStCW11dC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732731353; c=relaxed/simple;
	bh=yHM7YRHAWf6L+c59pTEv+yzZqvblRiNkWJLvs6W4OP8=;
	h=To:Subject:From:Message-Id:Date; b=ZiVOMDJCr02pNX046fDYi+KDjlyGmR0tWxMOcazcM5/TZuqpo2akdTfT0lg3NsRvTE8p9Xp/pAEUfQiUtrNmmpnPW3aB4gruRLI48kWD/TOfBXwfpros8qXO6GS/6yMkSfatroEotnFmhOowrejHmrCzKLXYbAjuJfWNi3DOOLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoJqtTRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoJqtTRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC1DC4CED8
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732731353;
	bh=yHM7YRHAWf6L+c59pTEv+yzZqvblRiNkWJLvs6W4OP8=;
	h=To:Subject:From:Date:From;
	b=OoJqtTRIvN1zpgTuC7KMIh2NMRWRSbH285QNrQScCSKqTN32jPJfgttiFGrfBD2lA
	 iPjTG6frGhZdNW5m7r2TlcjQ0/UzOvSjkII1fLtMSa8BvagwQiG4zXe+2qQspwvNDy
	 Yyp2YzvSc1K7V+toLc0B19DZm0VXosYseblES3/lMRZuuAYXv8cIMCn/mrBACcV+WI
	 /2rQAmDH/ZW/9p3/aYWGrNsHIEMKbeTMqfWDrg7+QFD9H0mPt+1uyiatLe19cwyF5j
	 gjkl06LjBnrDVa15oCGVsmgWTv5r6g6SlDKE+3//QV3jdNpnMGSJsZBPffAqQE7Wlm
	 s1VwUi9MJOpbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDED6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273135362.30964.3981885588650215212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab0413142aee21af76979b2ad44032b8c0c90ffa003ad7044daf16d7dc7ec99
Date: Wed, 27 Nov 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732731353
