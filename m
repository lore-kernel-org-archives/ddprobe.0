Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B18137B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706060297; cv=none; b=qY4+zg+bXJ7ZEaom/WW+EgkjxnOtNOTSqsTXBxvH3unWfBg+3EBdgSmy2jmqXlx/XVM1R2S4OiEGrMI0T4URIQxdV62uXWtoDRcMQviFbckywBKdHmg0BxXQ9TA0PcUDZG/bhE8mbbMI43R201XC2UtbB9Lsu5mflm+8Qn37T+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706060297; c=relaxed/simple;
	bh=HXbAwS+Kfk6bo/bsaDHfJlRceBelgnwqSRUxjQvhqfc=;
	h=To:Subject:From:Message-Id:Date; b=gc/RiAoy6kqNamtQ5xVwFDh5d5+Ajol7gizJ+HYrYA/faw6u0ChkJikPGTnKh6ac9U6agiMAXIGuCw8QL7HATCqlY6kHs5qblQ2LEPt2DrrJ/1AuO5T7leqD2GC6xEIVAUwMe72m4wrhBD+zoXVKAVo9T555izrlakCYpDefkMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Diz0647A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Diz0647A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FBDC433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706060296;
	bh=HXbAwS+Kfk6bo/bsaDHfJlRceBelgnwqSRUxjQvhqfc=;
	h=To:Subject:From:Date:From;
	b=Diz0647AGzgZJJuIzt5WzeVmyOCg+Ki3A8GWGxXXrLzO1rCtL0vJIutVNUXcXH/5u
	 2/CykG/BO+viqhNVfgjcKGo0OZkRTkqa/rSWNNpHLlTqM9B6ADDitJAi4DWEV/sZpk
	 XtDou/+h9kvoaCvg0J7SLl8Cmv/lSeerW9X91yT8LtgBD1N6IQDvJTzmEsz5/TsA8z
	 CkKjI3H+G3+jyuqHRhafFwf0rx12AebBfxnjpZAzxAJoiWJpMGBtjRZYoF+nwYjRcL
	 f5LTs/Pop7gusGsUFUy5fvhmIW4GYdZ9HUYDDMqV6NvPoNbVZ30/fntvat8moOmzcv
	 zuQX7bWSHGsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602C6C47258
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170606029638.23121.7154562372395092777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422f1a49f3611b9d6d10e37f03c1dc88090d3f6323e12e175e4c804829930e47
Date: Wed, 24 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706060296
