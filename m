Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D011E1C36
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747483194; cv=none; b=OEx+1RFvyLH2Fp/tjAkp+FzcTMVDGcLhEKn1cO4I6sjmiIQW8ySCmtJVoJ9RFtAJMNrf20YBJQZ5ZeNx+eWs1dENt4LNG8RlXY1/Ay9vQnO5Lgn+NTAkXcQUh3z123FOmq8QNrneFlzbpQP+ZFdFbOOwAFXUwaJEQSAHxzkcziw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747483194; c=relaxed/simple;
	bh=70I9RrWYju4uQpW8q+w4vATeCcjoxs3cb3xy9xm8yq0=;
	h=To:Subject:From:Message-Id:Date; b=hnrSUntTrsip3PESsnQ58gxS4KuRX18B29PjHjBEk80Ta5O+pd3wJpT3HVR6IsCf/lbQh97hgOGpMKFGYKHmbFZ2Y8uGuAk4tiudySHM9WCCdD1ieTk1bZlmuowEheccnI9HGrf/Ja55I+5562g3LQrck1p8YOipp478nq6UKlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MP/wxnc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MP/wxnc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13BFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747483193;
	bh=70I9RrWYju4uQpW8q+w4vATeCcjoxs3cb3xy9xm8yq0=;
	h=To:Subject:From:Date:From;
	b=MP/wxnc0p8Zek4+QPlzaRxev+HiExTNHuS2jxJrxw8RR9R9+cEuWaNArokG4xeZnc
	 Y3bNK5shyzXpFGVFde2wli1NCjQFCa7un39HFwX9EYMO8KS9pSplbVn3r+YTfio15a
	 o+FrIqLwvuE2yboaMG29G4zPYFHSWIb4UWO6zh+wPyLXL3I7LmNtAzo/wQWQ1mwC4E
	 Qub2NBR699KkHYRtiJdnLypGY4AvMfNaPrG4ViKl1jVxyyY92u1OzDY5qlw2J67GyS
	 GkcqjtgAtqlRVSeBiO81KeYKIbo+oI37rXGLGNNbcC5O1BD9YXwy3uA3N6WmDy7WQf
	 llxifxloFWfnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C052C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748319358.5303.17669950293730726926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c3206ef6bb3e800b2957cbbbad7c7ff83821cf2098da173a93116661bfa964
Date: Sat, 17 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747483193
