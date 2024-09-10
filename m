Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF5B20314
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725938754; cv=none; b=apwjjMK36xSp54zfvQqwcs856XHqqsgv9aG9jBZJ229EuCGSxp1Lq40N+ecT5zGmbHdxxGE8n2aGAD4zmSQAVYm715MloaUyZgE6wmRflavpUJG9jL2B/wg3+lefQTokMl/w+1nxSDYmrgF2BH9SsvcsTbjL9+2S36zTB8xcN0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725938754; c=relaxed/simple;
	bh=Ezw9xH69xDPNMHv3l/euPJ1i50xEucATgdTfvWmQ48E=;
	h=To:Subject:From:Message-Id:Date; b=o1595Lh8YhPPfnu9MmdJPJKMk4tZ5a83cuHKYVCOuRMPKqFcsJSXJLWHJB30dr5VHIkYYp0T6pJ3v+bJ3w/OUcGqqiKnzXK64CT1DGuJsJd5Ef4CnN2Tq8qSrcsswRPRx1lLdvo9OsMrP5Jclz52S1JtcCHwgbJ/OAQa04LBTbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rALpajWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rALpajWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B568DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725938753;
	bh=Ezw9xH69xDPNMHv3l/euPJ1i50xEucATgdTfvWmQ48E=;
	h=To:Subject:From:Date:From;
	b=rALpajWHW02fqoRFsdqKz0DumjP6kkOSyjnrIOVJeflCa5AYAXIscbe9+ZY709KRm
	 ydfHkUgg4WzCVFzVm0P1e5hqSis52MfSR60Iv8spJw3nuLb9+dnJ+JB4PBO/gSmXZU
	 n1NtoS8kWIzVVg5St9MgyiFvfLAi3sVCj+NRB4g8kbd/aXxDJq9SCZ3xRKCvzcAlzV
	 7XbXU87iRFUEoZbau/o7d2AMxJqAQfQ4NBS4ysh1jl3B+cWCkKKHCydPawI9UsawZT
	 yOBdQkxpFnez5ZroAUl857jjGXXSX7adKrkXr+duIwdk9RmxusmfXTHyBqet4vQ4DD
	 DgprnzJP2hiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26B0EDE994
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172593875362.25650.7215414972656484207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23401de6c3aabd4276fb0538bb1074e2a4272c314072148fa3c91a2672e2156
Date: Tue, 10 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725938753
