Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302C2D7D30
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766096034; cv=none; b=MZQYoi5R050UEaJJyHii8A86QXOp2FCmqPtJX1E1MVuzBFcY5pm+Zl9P5mtUry9pewmSsAUYS71DKzgiY5aGvs5RsD+RXE9vmhKOpWIgxGO+9cIDiWTnwHN3ixeVT9gWmv1mlgkDeAi6CyQ6P58j6ZQdoQo6F8kf2thZsD5RLNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766096034; c=relaxed/simple;
	bh=OH+Reu+nhkDtOJ8EqafeJ5i6AK9EttCVeu9ZhdZEcOw=;
	h=To:Subject:From:Message-Id:Date; b=fOYLU8IjqK94YDKu5UM3aCWZnBZ90CKGyz6w1Ctnksnumiv7zIYOGsaB/Te3aZX3RGtQcykSc78bkbL404uvzo5oy4NHzZX4jvGoCceZUZrcyNC1Pl6k71ik1B7jLuxXu466MWgOe7BXJmudmJbJaqEs4BSmoTGJ+8YzKPJ9Dnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrm2X1QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrm2X1QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766096033;
	bh=OH+Reu+nhkDtOJ8EqafeJ5i6AK9EttCVeu9ZhdZEcOw=;
	h=To:Subject:From:Date:From;
	b=hrm2X1QUQWCo/KchjX9Cm1BBgYeL1ZSCwroAKXGgOMHeDQhGdCkl7NRxkxHAdO+iO
	 Y33NdEhoMNzDyK5IzVCEv+5UjiX3pkeZbWUFan5UQHNLE5XIKxR1ZBBnkjc7f4l2Xl
	 +3zYEjCoKFAnGGRZ1UXxPej4T3Pi6wmoLlvksy6Z9dbFjP/xgtI5/jEp/at/RkRWXK
	 94rGXeoK25JejD5pYWQlJm+u3IJNBgKcDY0OuZwjxLL99H8BEYt065I2ryeenWBXxw
	 kvaPrdYawl3gRqy3O6iMKyNLlzI8dnUSVK9BmbfvPdfZjNKCDBzzVxSh3PjJCDoQYJ
	 134zGVbJG8qZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C675D711C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609603361.2281.18406004371791378170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ecf42dd4c0500d051644035a012f008dca712c55b852fc36d7e27de3f7703d
Date: Thu, 18 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766096033
