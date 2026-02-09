Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28681303C88
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770626634; cv=none; b=fzMYSsL7gAU78T0DoiMWU1xY4SdO+gOhv8uFfuZxnwhX+xLNe4DCx4grU8dUCuX6zmFtrPCFhv1ROpY0SM1t66Jvdd8lLtnet7xq4Z+/EdHQXByvI7jNW8mgr1KStKbB0gdFeW1Ze2AqWbBoBgb0pYWd1dGwS1C90fhAWqObcmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770626634; c=relaxed/simple;
	bh=cWg+GoBch8VQD/RmiQ+W0gV3u/4jIUNJ03J+EJimPSo=;
	h=To:Subject:From:Message-Id:Date; b=sviPSEJikqTDWSy1t3aCCnu9ZpnHfqf7YZb3GW8fzbmDPLjh+rTMrrOXRj2luXYmJ4HejLjAHzykQ83XmsKMWKfwiFLsk7QhhElDpjwxroFy1ohYnf4o5cH+MLZEkwtBWq7OjKlshKxPBV+qhAxy/IcNrP2/S2tfY6rx6/pypOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZcirs2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZcirs2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA34C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770626633;
	bh=cWg+GoBch8VQD/RmiQ+W0gV3u/4jIUNJ03J+EJimPSo=;
	h=To:Subject:From:Date:From;
	b=dZcirs2Ly5OktV4VtB9wLCAjBLe6vV/koi8nflT3jboVINhhgZRaljzh7taSgrnbF
	 uWOroHeiCMmxKlrE4uZvg1VYOsChodBD7CfVaA2iME/fplsBsF6WxKY28vik5IxcDP
	 G70csgkDejrvKtDHE1DYSMyacDEfRZ4bhZ0qB/C6DEjiHDyMWPwQQFFZjnw5QQJ4bD
	 U3z42BpBUEDvErCWPVhERg/BUtGWNgB6D5NDs4z4pAOW+A/BsPctzSuXYY6WJwUUKl
	 xgU353kGu6Ab4dRIDk2c3zyMwjBukMhYOB2R1ASGAnJSlGHboirJ7wzw0yfyDoHOSv
	 I0q2i8aUKaZBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9773CE78D40
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062663360.21698.6476021627256688958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985dd2303e55b37013db136f75f41fbdc5ed230c49aa33a3b58bf6ab3546d586
Date: Mon, 09 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770626633
