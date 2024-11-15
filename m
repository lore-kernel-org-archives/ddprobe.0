Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359DA288DA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731657354; cv=none; b=K50y+JIELLxCrzQMq9rIe/cLcasHi400AqHDE9GtoKMjnC52JkGMMK/qPZQMmeVwtLP5GaTn+fh81771y1zGCywg2SVJi2u9SE1zIG5SHIAaFMGa+XN7BPBTo8kNjHfoYZK0fc3pXpgoXJscd+4SIq+0XEZiDoq/oO2v5quzIs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731657354; c=relaxed/simple;
	bh=XKXZFzKeps1YhDEFQuGyAUG9GiqfWkAcZN7j5OrxNWg=;
	h=To:Subject:From:Message-Id:Date; b=lq8F0B8Wf8Q0H5Y0C0TcuFxXr/SvossLXXyottcxHp7yzH3u9dKozQ/t4L46m9AFGKN0CC87XsaKnPcUOndJrlBiXumwNZGklW1NZnYyNa8cub+TJ4JqNVJ6sIB1g6e9Qr/8IY+zIQv8sNCwohcQfapsjeuFYsBz7Qr+e9FnjQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDfvEK3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDfvEK3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2189C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731657353;
	bh=XKXZFzKeps1YhDEFQuGyAUG9GiqfWkAcZN7j5OrxNWg=;
	h=To:Subject:From:Date:From;
	b=vDfvEK3VOOXtFtTu/0HEHvbhbH0QelUKeDwQ/QqS7HDOtL7D1iFBltX+c63gC3alU
	 LHI7q8oMNGqrCTlnmQHO+U9EwA1c6yUzNRfbU1B9hxCxSFBQClP06qHdZ72KGHYE8+
	 52MWOCFiU86abTh3HGqqV/f72kEoT1N7IJkjQ3XvVSPAO4jawCSUjvOpmTmNEPaOX+
	 Y0UGdPhpZODgEeq4DLmhXsnbfvpDH6ZeHr+bHpW5BK3dIoJeEikN1QubYYIV/S5hag
	 NjaGGow37dQoCRVPZQzEgP5fVB4DP9T6of7VXhGxqQglBR2tnO1sJeH8/luWd7im28
	 xKranuLxZVG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F51D6DDE6
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173165735361.3894.3014980202826634395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d594efb295cc7010f923c401aea0eca2244f1d48f221046ed7533890b59afbdd
Date: Fri, 15 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731657353
