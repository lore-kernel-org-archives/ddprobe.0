Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9035231195B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790907634; cv=none; b=qWIo0TaizfRUeZ6QYsjJtIU4Ywctdt8JpTF9aByLYOaZlMOIjLGEwtdCTAH2kh7Mx0hYchhQXp+bCp8kbkSaZYfScFhC9TyaqnTGg6BCee0u69C/CDIzlffkn2yYz2JpJBiu8U8GA1hUtQ2VUWIo+wOF/DRQ9sZh9AYaMsgV0tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790907634; c=relaxed/simple;
	bh=MZ94JMQM0uEsPllBfLlnB1VRusL3HxzdTuVkM391qYE=;
	h=To:Subject:From:Message-Id:Date; b=AprEnyByaZPuWtkhfqzwoii5G9nLsjnHLE1zIU/97PtTF/5MBjweW3dvkoUTvtLWYpWW1hLboK4Ry2iwxCGtQPKTqJ7gsppVDdZUAIID9HlBIbee8lhxiss45IHjeLKPfg+0SV6TZzNHDk+dnJqSUntaoT283ja0p0XlTJwzrmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC85iES2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC85iES2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2336EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790907634;
	bh=MZ94JMQM0uEsPllBfLlnB1VRusL3HxzdTuVkM391qYE=;
	h=To:Subject:From:Date:From;
	b=fC85iES2yHiyNhW4qL8vyNepLkT2YmBhr+WlFcxCkCp1yefjWUPfq262jL9ALSLl/
	 gW8P0uR5F1w+N9X61qKuF6ro3lcThFxbJa9FzfwH6AIVgJ3WPrErbVaGPaSaJzScx8
	 w/SmPltF9zbwU30doPr+4necnmS3ehWjPo9b4XYclmmr7O7imqYS0MAFyELkbArYgv
	 /ZLKgrFcsWDplqwZ195ApI4aRPiOqQzp9hqid6DPj/+OKtLuX7YwQFTwkOo37d884c
	 +DPa48DhBVhUBRLQ17DFIyKe97O5NK0Pui2Nakq3UWpneusw/gAFbxs8YA6D2JZMqR
	 6Jh1BLQ2UUVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53ADCA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090763378.9394.3177133871797352628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a606636474b58f3c54f82438248e544edd84e1f00bfcdb7f151254ef5cadcd
Date: Fri, 02 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790907633
