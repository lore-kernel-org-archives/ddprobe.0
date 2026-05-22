Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815DD2D839C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779441154; cv=none; b=Dvn3scCS3gyPkaZ9UvAp/3j8L+usMv7QgA9cJv+v+RuRiRrVVoFcTsMnXKs6CABTf9z8SCBgeRfU9dniKzaK0UDaLh9Wr+tKh3FaBEisUHcNopm2R2+YM+rzlZodFaJcykAUHz/DQQQdZntVrVljOlU+HxVZbSCXQsiRK4KdUE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779441154; c=relaxed/simple;
	bh=EHOH84BKzB8L3Sv4OBsC3CZ3dgBGIi6e82kW2jzwG1E=;
	h=To:Subject:From:Message-Id:Date; b=k+S3axfyjYE47jsY1T21gmDsgbQRMKBNyZgHTE9g7TfWbOhoQqAmfMq8ckbc0KEWFc4x/B3JfGqVvkcOWooHjVCMEMFswy/+2isRr++gDSGUj06AGBxE9XT978pQGjPKZPjkcgJjS5uFwsJ2+XamY6xsKlyR8SVvk6IH9caIDW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULeLxO9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULeLxO9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1758C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779441153;
	bh=EHOH84BKzB8L3Sv4OBsC3CZ3dgBGIi6e82kW2jzwG1E=;
	h=To:Subject:From:Date:From;
	b=ULeLxO9slTE7OqZIg9idicDAemlNPfh0bIpyaBC5WuSeTfnCbJbjqRk9fe/0eYWwJ
	 +Cx1V8ZQxC6mQMWybV4rxughWr0r2o+eU4/JCCjuvlOgddftk+SN2+WjIVGeKVuzZ8
	 DUPNIm6O+xDro/Xfo94MIkbUpA01y8pYGHsyjNNgTZ3Wp82mUDkeV9QdfCeNGHfl6E
	 jKkOt5+Z3cy+NYEqEBkNNFMElgzgFyih49kaXoosdRkTWB19t68uJNG3q4UyN32Glf
	 jerN7KYtbNlF0wC5EKtSYp7LcUBjkhZ/x+vO3cKGXS3tFooBQQKiu3tDK6CuwhhyU4
	 Jn9hD8foJ8DKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9094CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944115368.2170.4027172505249414235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48db823ed5d853d6b518d16a84dab0b473cdd5a19514aef9b35a3c90498c5f4
Date: Fri, 22 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779441153
