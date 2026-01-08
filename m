Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C732D8DB5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767902034; cv=none; b=bATVwIQLCBLAuSyLSCzCnaxtRmZJv/2JGQNu/xkSn5wG7sSMHyayaoEiXa2jE/fix6MDDLz9Y4LIo3B0lO2g6LVn5PguA5jREtYbK7OnovYh7KfgslpyfNySLF90JFYGGNSIItf3mN4jv1brOy1qK4UGsKqC9/Mndd+XlKTRN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767902034; c=relaxed/simple;
	bh=wvIyHorusW9cV6mePEEAbEkCP7qgXakQqYNWPY1K0LU=;
	h=To:Subject:From:Message-Id:Date; b=Pppe9AWAHs3u3YoO7F3gnGXA97W/9kQM44YcZ+mE3rOJffcjAtI/BittsZGP0F7SqY2kx8w2ZhpfA6PkkaLfrVwATcJvTFd8QpPyi9bSx512ZkAiOXN5U8Tq2Eeuduw5f/24q3p9q/sn/nINoNb4B1u/Excq5VXbJ0PmWIkAin0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqV7NDqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqV7NDqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC4FC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767902033;
	bh=wvIyHorusW9cV6mePEEAbEkCP7qgXakQqYNWPY1K0LU=;
	h=To:Subject:From:Date:From;
	b=qqV7NDqLD4H/DG+JUdBSAVQg3NvQ5iejYupZ23Wx06/uwl8rBbNoJfAERA9I7Rz+J
	 J2piuvMEl28086qxJQgM9MLwQ585GY43vo2VeVY826NSx87E6xNOdeSzhWFKj0jVRG
	 bYW2WRtL2AcTcGx1WjF4DkklWYjDwor86xdL+yfywSP5b5q4oq1oYuHGOVR/eIv8Xg
	 q28DiNWPlxrKeWnj9l9zABCvAp742EBIe3aJvrCYXWyUR/OvIUQ4Q5R9h7oouYeEl/
	 5iR4E5r+6pSlXXLBbPAzg+BizvOj4tNFEaiVWvr8kRe4P4YPa+09la9COoKlDtW/2Y
	 UgbhGrrEVoxYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CED1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790203357.22981.4814191114304911884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e29ad8547e488be128128bfacc529efdb21520e9db579fe689289bf8e92d1f
Date: Thu, 08 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767902033
