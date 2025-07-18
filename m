Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEE42135D1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752857994; cv=none; b=Ff4n+T+zJH9cVQorilCUrUlwTgF+CJwUE1HPBdY9PGuMlFDdNKo3Z3vIjwnmhVn3RfwJmLTNbaWMlApucOZBfjJiWRTu2ngxu5lK5p4qdB5z9RY9dAV9356bXhINd8dWiGStoN6AT5Iy72GDFJuozM8LVN1uNJzAzAXSqXtufJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752857994; c=relaxed/simple;
	bh=Su1c88jfdK41zeVv0Md+pgVw4TuW+ILejSOGLAZToRQ=;
	h=To:Subject:From:Message-Id:Date; b=qJOtp4cUMvMOb7QsFKjkvYdrLLfcGqkSFHGetme/CusimcXzAOxvZ61W1bDDTQHSjz2wV3atiqOyeINoYsoNYkZ3blRR4gbQ4ef15Odp6SvEI+RZ13cmYNR7gpMMcX+bpV2qCVyDkyvcG/LMbCPbt0n8a5iaajWH2+xLd43IxrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4HLlmpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4HLlmpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8317C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752857993;
	bh=Su1c88jfdK41zeVv0Md+pgVw4TuW+ILejSOGLAZToRQ=;
	h=To:Subject:From:Date:From;
	b=I4HLlmpr37OvfUNtcoj5MvlvRd2Aqkyq0lQxJL7j47DGYnuz1WiEZjWnQvZtGTwq5
	 tsvWaqv1sjLj83SZESvxImaGvOgzOE8XeIzeCQx1iV4qvxC3rdFor9YW0qXbx3MQsI
	 QfE8V3WHUFveAfN516MjqGdWfIKpO25owvj4xq0tpLGtkS7XfDDlpFv0UE3giL78ZN
	 HNaRjeRlhJu3Fatr3zkCIOHeSAgr+F7VbkoyRLuKTI9buHUnWEsdxCpW0EBXKjC9mY
	 uXMlG0Nt8hjpV2gCMmzZDZHFA6uOUimgu0I6FHuRmHH6TMv7Sv357rD1lejfUpe6Mu
	 pdebrojs/JRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F5C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285799358.21404.7642530929853344167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c949586f949771e83fc2c50ee5da3a77163e7e7cf2f1f5ca830d17e0f1caf1
Date: Fri, 18 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752857993
