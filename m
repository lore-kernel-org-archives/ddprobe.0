Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0A2AE6A
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756774194; cv=none; b=WsrH+Ri+dsy5xxkRySAaoLC1bTcF8Xm+/Kv8gUkoHV1qLFVG3/RJwAVd63zyW7xAePn65l8IPcOLesbkvX8OncI/54/eeP2wgohRMrf/fczMbt/4WoeMZL/ea1oksB3pYksMTaRSKhHSG0byB0fcS3P4O+MpeUTe+Voq133Lm4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756774194; c=relaxed/simple;
	bh=tEmhgeunFrPgOj3ehFy0WWODjThlN1HR2+2654tsctI=;
	h=To:Subject:From:Message-Id:Date; b=THToIKFZdmbD+UKknXiApGcC6+LV9dFqRs8S9WlAV6Pfi0MyJmsZir+pRvNCbL6N/yZgkvP1U8Di2iiayPKe784VlpAwsimR6D8Bc+O4KlnWx58rkZ+SDLPAAxhhKzIs9eCCRKQPB4q5CN6VGCObaDy00buOGnmWI3A/3SEoB3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GILY1x1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GILY1x1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756774193;
	bh=tEmhgeunFrPgOj3ehFy0WWODjThlN1HR2+2654tsctI=;
	h=To:Subject:From:Date:From;
	b=GILY1x1NW4IJo5PLc+gYra0i8sRveikNM/Z3Sgoc+YWv1He0SALf5OD77a4OjHG9n
	 Cw7x5E7VEiCvgXgagcUw2wWgOmiqLuufWbr7G0kie+tNvetg44+Ildcp58kwpkfDHh
	 dU3j6I33XeFE0/ggk3q7wui4KmHiBazLCgNUk+T3l6YtppmRZGA+nyYgRzyPSgu7Re
	 ZizMntuerWn4Fv+Fdyt5hgzXPt084Mj1ll6FpAe1+f/NDAk66mvyIsK06w0ZAMKzS6
	 HWkhSaekSOhQWE8DD69bhd2F9kGe3COtRKKp93aTEdBkHeyssHLY1r7WP9UAt8vS/g
	 aoSWok0d9hfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47DCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677419357.6017.13383113823421348024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299cb54cacb20b37600769d2bf0f2c8e3de32420c25cfd2a5700d408a405652c
Date: Tue, 02 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756774193
