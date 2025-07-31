Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6E1D5ADC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753973994; cv=none; b=b8hcy22lLxZjWYel/KF1JhtxHeXw6kSTO4GyvX+4hprObg1wqtDXtmpUY8tvIwopd5XG867f7kuHjWEobBIQYGJ4cxSS9lwE/cvHEYhPq5Kcs9PGYk9BFEPnNhhL8qagP+4nK487SGZtqtmhBOj/hfdAk4ui56o4aaJ1vSIlkvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753973994; c=relaxed/simple;
	bh=DMHc6wwT1XdLeyl3WmMs4M9rt+a6ZVrCIr+NjaneTDc=;
	h=To:Subject:From:Message-Id:Date; b=t1IO0q/ii2AMgMRup1Kydjm9gcA6a6H0QQ/b66xvv7IJBkfYP8HivZN34+9/o51FJQvhXq/vlwFHOu/HTndrHpFrZubqPkr9hJv59sYaCjOBQ1kiX4aUjUF32iIQ+i/AeBHTZWrUATr5fAg2Zd2xZO/bGouGJk09vU468m8tOLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCJ0OIBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCJ0OIBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EDC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753973993;
	bh=DMHc6wwT1XdLeyl3WmMs4M9rt+a6ZVrCIr+NjaneTDc=;
	h=To:Subject:From:Date:From;
	b=JCJ0OIBFmdA8IHUwlJMpbIXZMqwF1gavysZ5OGjRvTqCoCkZi8sBToOWtDGV8HLko
	 RYQ/4BJm0BUJuy8ayvnvby3KHCz2HL8/x5j8cbfmY55noH5zbxjASi70HB7s9Dt473
	 dINgzwbAXNL7leX7q+fCD4Xs0O8pigwe2BMMh5243rJleOWHKNyiLtuahD4z1d40JI
	 OCHwL1gwJ5vrweZ2LLijc7j0VZASeYHf+7bBhid6x7qdehD628IoPodbaAu0FDlBqM
	 wkOXnVnIcMK0eDiTNlwMPNIaxYfLZoCkMVMvb3IdnlYX0nfKLFnFi2U1vbTPfivCYA
	 HOfjXEFufLuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176DC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397399357.4918.3401380788471204639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda45e46917323ee557c8378809d730ffc758cd4a530ddeff9b29e321e235de5
Date: Thu, 31 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753973993
