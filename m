Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E0A1D799D
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757448594; cv=none; b=AJO7ROeg870pFwj5tUz/qOMzu4nsRVOKEokddb0SJQGbagJGWnmDsk0RXd2e13K7mbyiReOern4/vUqHu/w99YIdKAXOMu+34SXr8mqiLMPAva9BHrG2HCv66ggUGnlfhpDGs/Q6RXspLPzUrWBUbUXSQcjeWepf6lt6OTPYshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757448594; c=relaxed/simple;
	bh=P8sR2zwuUlzpdnikppflOIqsWRUOxeTUkW7KR0IIG+o=;
	h=To:Subject:From:Message-Id:Date; b=a4V6j1qA5xq4HGyWhUYIgh9yZ122aiCSc3HHMYlI80daMjKY4WhHNLCSKef+Y31VKbadmmt2aTMPwRPskrfBFDK1CfiiHCtb/Vx1r2+7sESt5TutUPEWxt3ycNN1Hv+eHLrLHB06rFdK98oukaXARAZYFYd5C/lshzHJLe6CiK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDc3C6J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDc3C6J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757448593;
	bh=P8sR2zwuUlzpdnikppflOIqsWRUOxeTUkW7KR0IIG+o=;
	h=To:Subject:From:Date:From;
	b=UDc3C6J6b72T0FhGg1cA/Ra5VRvfYbXskEfjju30QOMiStiairr4bjhTLccgi3PE9
	 x36tEgyYdVlVDq7uLO1SNaBzzhp3oC5G9mw1Ps/URsxGvNEGDsBYeNDUMiJcvj31NB
	 aw6XiIw90M3pv9BE1EaU1lhiDUpmtsr6VQzGztjopaKXDn3A+7/tkOKDSYNpZPVSJn
	 wL/99Oac8wZfofw/cS2PtDA9bA5ZFzb+67bYux554KJpoGsL1XHjnKVZJE/fWBEc35
	 yCQVPelQbBK/6rBcOn+ZWikzahVnYLBMwXt40DXCUOiiKvTVIyu0JQ54DQh8H5AS61
	 IP1dSj8NkRmhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBCCAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744859358.13784.1419703350280091855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e35c0233efb7e88f99ad3b56459d3434b8ed9e1d9153aae7c07d402d751024
Date: Tue, 09 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757448593
