Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F3E2561AA
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235994; cv=none; b=ZCtx00NVlrRcrmuOyIplzXGpMOLaFkkh/hKcKeRl4yNe10kehe/XaKZcA5LP9Oe8UEZ2AVAxgy5xIQt1g5SvhkJ5UFUkZw/653AfosQjw5LQbGmi8q7rVQ/Q7rk4w9SJOoT2ZtQrTU5l84SSXm4sXHSdSvNg7bBSQW38+w4NgFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235994; c=relaxed/simple;
	bh=EvJcmve6hocrewZkn62x+NiX0HXwE0uuKjcjta/vTSU=;
	h=To:Subject:From:Message-Id:Date; b=gpkuZ8H7m+h62trnQAQWZxv/0zTeEakwbhKOsW01Q0q711oTbkNRbp/9mFBbLGs7b3LNtAAHaXRNzRsEgAk5Cj9ty63OwMKcKSdyNcPND0XbKPL6akZbM0RuCeGrko/mNxMT3nfxz9igWhIRVMELW4FWTSCUQn0zuzmzT3yU32A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8o6xxI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8o6xxI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8442C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759235993;
	bh=EvJcmve6hocrewZkn62x+NiX0HXwE0uuKjcjta/vTSU=;
	h=To:Subject:From:Date:From;
	b=E8o6xxI4HHfNSagLaocj62RIhWSDCzMdtznUceeD9n47pZrPX6MRklc4QFH3Viznw
	 1dnU2IQ3sOlM5OOx6s5uazLjk1gfPkD1EaEo9/QXjm6lRttLWzo5AwL/6QpkbmfSRE
	 4kqUqup1Yqgv5vOGdDA/j1fUTOd/pRdk138CaM5ObAgTp9k4S44aXQgT7s2NNHLlY0
	 Tiz2MCZPHaYEktaot/Fp8qbpQDt4pKTht8PYTw+IDcddlDZ8j2HSWR7bYkTx2r0eHT
	 UXp9K8DcxJLzJrdrpScakl/HIqsO687/sE11b2UBTaJZ0f93qu90HrLZApg19y9iil
	 Qw1PtQg62qxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FBCCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923599359.5681.7493513374129010719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba31c356f4fc5c17e5f3a4f4cb945bbd5d46280c91e0a38b5fe56785b60e6230
Date: Tue, 30 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759235993
