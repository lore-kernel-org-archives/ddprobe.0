Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C623024D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733864753; cv=none; b=TdsIOHYdBBq72J6F7Lo9xpepEsMl58iA20ftK1mjyui/2SRbpzKfe69qqx4K+PYr3kiqLCyhJGH7e7v/dPDhDYYXGeKd+CNokAx5FrRgDQKwjsMGuikla5+RmJaqrSGed4M+BIVPPRQzVlRkx0I2IIoHbtuUWQLAyXUpDhnTmko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733864753; c=relaxed/simple;
	bh=LKGOTw/Mvvl+bEh1zjNrXskKzw05z+9rh4Raugd5kjo=;
	h=To:Subject:From:Message-Id:Date; b=CckLXd3TFuyn0J12bFLi1XELozNPY1gJ8ZHL5nIkEA+iQ6rN6wUhIZIDQLi5Duof8I/okXZqOcn12u1otoABILgMz/BzTusl7TtnHLm83KCjdBbvwBug8Hb5t9VV4plpwz5QkcpcZ6VIQb1yw+RRSg2C74W3v0F1aBTE2LJCCkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE549yRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE549yRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960AC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733864753;
	bh=LKGOTw/Mvvl+bEh1zjNrXskKzw05z+9rh4Raugd5kjo=;
	h=To:Subject:From:Date:From;
	b=JE549yRCaQ26tsz2oJma0H60Zz54hX0iVJ24ffL9cewKddd6q7TyKs+I5AArcdQpj
	 FXHaOsyrxG0xZSgAHKymdF6FROKbBrz+CMtmq2UCqe8PPPsE9cx7tfLKeQdmVFEhUk
	 ZTR15uAzQwMfbViW55gMM42uXh0sPNzhyv3e2cKeZMNlxNxUPW53IREsfbjT3iRYdp
	 qLhuEbnZpvqYMb8+wwskJaQrrwljWEnhNkkgO5q8Ru5DilLQwhO70mMYe6xZPtr+Xb
	 Rd92eAkxeWt95Tu07/81YPwpdEm6ACstU7usIanWP6VS6WutOHUteIJbyCbPgjKAi6
	 bGyRMdJQNYzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97437E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386475361.21959.9281216800531674745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c32b8b02cefce7ca6bd692211e761732117155cb7086387f1b6f6a1b657e95
Date: Tue, 10 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733864753
