Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71379152181
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717253063; cv=none; b=qoUFGnQ+l1B3MByOnkOOZ8JuIa72IV13kSpPif03BhUpTEScxOR948Ddt8ysJxgrq/+4MzqW9xr0TRjsswGoenq7abH0Kc70kH2zXwT6chF5sJDciShj1Wl7RXJ37g5FkKmvLPr4pdb8EDmi5TaNz78zjznjRZrcdS6gFUaeUDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717253063; c=relaxed/simple;
	bh=y736phJm3jH3dD832v7V7gXrTGj1bcO2XbquPjGX7YE=;
	h=To:Subject:From:Message-Id:Date; b=iPXlrnJpvhZihPM7SnErDUZBoaDllLaMvijEQo441K6BslaKhcrPpLSFhYJVti0Ckxjy5IZ/SwQm97CiF8QObF27sRWvSM0dKoVD4oEwq/VWugfmrZI0xoIgZWgP/okQVtjSeXXN1opgVon1RZK/oVhVJZ3uQaD5Ze7qbmPD1ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ4yTjJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ4yTjJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83DAC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717253062;
	bh=y736phJm3jH3dD832v7V7gXrTGj1bcO2XbquPjGX7YE=;
	h=To:Subject:From:Date:From;
	b=cZ4yTjJx/R7t+HcDghurFVUD8+qvlWAl9rT9PtACsPsOt6bcjNTaU1JiQ3yZMufaD
	 NRJMRKpeNBcvrj/lYbl6nydYSmqlHJOaQ/VUgz37tNg3vMh+5N+eTEcwfqDLtjq10B
	 aLenPbdKFsZAD1JkaesUDuEOhTvXluKknCNo+gxtZy/Dv+hXCYZ0/nLCL8ZqAh076q
	 jRXsg5X508+SRIOyjBULbSDSAqo7PDhsQCk34dbi42htVZrZq9M2sauMKWrCmJ3shx
	 QeGyxNU1onaLikUwtsnZ+r+Flw20dzQ1mPKEXoIATCBvxkchb7/rKru7sWdetRvuKo
	 VaAHl6u9OsFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3046C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725306276.347.8982261295078493597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b6b25ba3750c3861ea03f36bb519eac05b1c5e61b7429e8585aa4f8d49f116
Date: Sat, 01 Jun 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717253062
