Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E41233943
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780965274; cv=none; b=Fo9hHNl5AD7W3VFe2beLD49YU41xS8kpyt0xrkSIU8unSb8QsKOUj202FpAIsBPLnirc532GjwsZEdcP+x06TJTko9oClaeOBPpp1RfwO+jL1dt0aKIAnIliiejZ6YuMOj/t1Ub1NmyaXtLg6l3izZ9DAf/KWtcmpa/l4fuGsbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780965274; c=relaxed/simple;
	bh=W4JKYFU1g1ORVIiP0pSc3RaoSpkKGVHLnK6NxN690/4=;
	h=To:Subject:From:Message-Id:Date; b=A2wLJiDrKhk/IvS2yjJokV44Vv99tBKKS+1sh76k/iaAIPQky26Kr4xPHnbyDuR4ay9keYftILt8gSi32EhUwiHJAzmZMQpOLL+hILbLNWTADkralTVr7VEYQEPjnPk2yuwLQW6TLtJo985Zer74gBsHzhvRhhjWZsiwjdFhQMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrbeeTGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrbeeTGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CA8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780965273;
	bh=W4JKYFU1g1ORVIiP0pSc3RaoSpkKGVHLnK6NxN690/4=;
	h=To:Subject:From:Date:From;
	b=FrbeeTGVwyd0WjuAsHD9AkdL5ArFi4BHs70+hio5miWIyTSHZcqZn5sV68IQB9S0c
	 N6QK6ss+/Inxo2alg2DnaE2PaJkPR2KiKnI3oip6cWUVHwWZuNwoeGDcdmVeruNjMv
	 LZbj40RH+PjsLqF4vX3O7MxHriWBnmpbUr77sJyRxr6zpKIij8plaCwuhH7h4iRSr+
	 mlrFFQ+LHQIgkGayq7kdyeZpzSy/zBjOYvymBU9r/i3o5oHXwjXsLaChqDOoNDrkmE
	 MqNWL5zfKvxRXIB85+BZHvi0vrgZZbx7ygIq+hcOe2DlkrLGtJ82SPRtdWZkRg1HFN
	 q0h1i2XqRfXXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9652CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096527374.21587.12733784288760760223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8014ae502e9599b2dfea93d6e2eb52d6f4fef5dd7affd12c8721222d811f62f
Date: Tue, 09 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780965273
