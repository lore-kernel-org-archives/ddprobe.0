Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3363BB685
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781445394; cv=none; b=TCrjiR/a5pWAcufiiHaQiFa7JMMF6sJ+z5LM//yfl55MuECMLza+KRAxmIbPp5EhohUo8LH1N9R7gi4iMlbZ4JomAX0iHZ0Rjzr6umzQ5rPjX8Rus0l+8dJ/o3fH3w0nL2nd72hIpFYG+TFw7iZhRAemYRa3DrF09zob/+kVJhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781445394; c=relaxed/simple;
	bh=31m7rNXxEW40kh7jAGHgBaIvuuo1gcFWi6HcfpgrJWw=;
	h=To:Subject:From:Message-Id:Date; b=V+bjLtRB97X7eZGzD1s+uChmErbftRVt8he0FE9JHGUDJga2BNEGemzB5voReruCZFn4aBmd4sg/JYKqXZQn5z6z2ecgqr9trkc7kbpFi8iLH4rcYhMUIW1RzBB5Rpx8UWJ2llJObvhLlV0kDgqvXvEwYpm4fZg5ov2MXtcDuz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEjmdqi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEjmdqi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781445393;
	bh=31m7rNXxEW40kh7jAGHgBaIvuuo1gcFWi6HcfpgrJWw=;
	h=To:Subject:From:Date:From;
	b=bEjmdqi9pNuVjjGvE8QW0gR1bJBCVC7nI9qC7+XBr5WNHF0JHicPvBooidzAUj2AP
	 FZG2Xw/qYT5rMJUK1Gvb4KOXX81CMHxwav+JkljGFhaBhNr8fwMJSOwzmARIck00Eg
	 aWhYqWsPbCS8PZb9k0ZCpK5SUf/fadLGlMYnvmXB3CAkqtV4Nj6xdj57z9QskjkCmw
	 M6aKy/U9MoGCu02gw5NifIc8ZeVdM7roRg+HB8kJE1ocdlvJr6va2/wWJcfWfyRKCD
	 26rlRiaVJm/xnr3Ow7W9cAH38PcfY6RoblLrw/pV9oaUFJ7xioKFhOqrrvbaxpmjvI
	 fQ3rRbCBHgFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B7CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144539370.10473.13004571161080726000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fd90e26e162d7797006dc4c2dad894b70a9602b4035307400edd0a46cfc96e
Date: Sun, 14 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781445393
