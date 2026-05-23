Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531CE25B0AA
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779531754; cv=none; b=rA6yhM5iOFy1WPGNW8NwXXG495TNV91apgycnemi/go8rmsWVp0XxFsxtxpdCbfgLSjzJk314STq68vHH9BDdXt/mZAdZXP9phsd5+TIP91yFhXrhqRDu5vzKUY7iFQtB+9gWNe/5FRUX9vwBgX3zIdCq1WNCxrxTX3ofnj+wSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779531754; c=relaxed/simple;
	bh=CVCb7dqMtlMqgfvyLtxENPXTIHAf99Mzk9yV1urJ3Xg=;
	h=To:Subject:From:Message-Id:Date; b=rX1b6MpimZgYxNUtp3yzQhresa/0ovRVpG3Ul4rm9+cXeutV7lCVjCBhmmcy9JDJu2GvGPKeC2fdN9VFmg8CqPDISdQ1thVzlSfunNxBhaGujy+L5NbbLvy20joRpTvB7KDwnc3YA+U1mNMwg+W+12ZfDnGRgHJDi+RwBSDxoVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe7j8DHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe7j8DHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E76C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779531753;
	bh=CVCb7dqMtlMqgfvyLtxENPXTIHAf99Mzk9yV1urJ3Xg=;
	h=To:Subject:From:Date:From;
	b=Oe7j8DHIFL7JbaU6rMIWxT1VXaPdGg4vAguhSUs82gGlezyhiSP8AaB1dP/YfRNaR
	 dw42RXOs2NECe7vTM7d6GdTm3pq9AWRg7CDEaRqwildSr1Oe8yxjD4Bynz7WZJsBkm
	 a4JjF56LXDqi3Oq2fkQHxuyDJYi9LZ25pu/5M2XO/GieEwgSyOMt82S/BouCaPnTW0
	 Rr6J0SQKJSyq6YMngh3fyqu0R+RNjyQ0cdF28rNlrTtkI3tbOaTytb5rUxSR4MSNGT
	 oezSQPGeIlAOgQ6q6f3708QDOMM/o8VFT3iylERJSmQb1t6EIqL354i8aZ6Y+H8X4A
	 8zFOPCAIiy+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2D0CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953175368.29624.11815319583984040008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7330e94d21a05789ff34ebfeb525d8f0f7f540e425040fae6838576a065788
Date: Sat, 23 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779531753
