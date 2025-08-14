Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EC625DB06
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755157196; cv=none; b=FRIrV2AJ204pPGUQXJaR5jz03ultGMR8+eouINtLT/ISQW8o9lg9iEjjw+Q6HGBeAeM7ezK7m7fReWiEjq9PgsTURJudgCa5Om1b18sd6r+0TeyifFjPMGe3n6q3kKwEpaUk1pm1fLp5ViUJsovPwM6TnMkw9TQ6QkXW+u0M/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755157196; c=relaxed/simple;
	bh=jChZfSUz21SwAz2OIfAJ7cZHGo0vDfr8QFIlVThRxgw=;
	h=To:Subject:From:Message-Id:Date; b=YUkzl5fh9yXy4s0JsTg/De80t8dHtpH/j3yK+RHD5ZVXXu3QQ2xaHaHivucl7eNvY5Y72l771WyQQconr+bcC+bhhI7TneETWPNlG3AOeWcx/Z1M7HeJs0kl6txXbEE1QWEqQdTV6qxrvuB+FQj22qIn/TFntr9Ipk+CPin2O4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvXf/b/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvXf/b/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1977C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755157193;
	bh=jChZfSUz21SwAz2OIfAJ7cZHGo0vDfr8QFIlVThRxgw=;
	h=To:Subject:From:Date:From;
	b=XvXf/b/7x5IQrd1I1fHGHmA0xK62q20oiPcqWr3iuk1s3Fc4f4KkqlTPwmi2QAc7O
	 P2fj65MQppWNqbMfZQwBvHH5kMj7LKbOcNQ1ZSuwBsnjt5R4GfeMVugsEmzBjdyvYX
	 0GJ1xVcOLiN1TdE5vWXpBZWE862HEdraoIrSykaMf+dCMwTHUrAKqA4vQzggTzELZe
	 PR+2b7R3QRISw0TRveZ3qagsmh9pFfHegbI21meN5HhNsP1+l8oShBippWA6ACSrTw
	 ge+fhjbEIHM9jL/+jog4+xmvoETQqzUXqUelyZEujfmOGOAsX1SaSa3XhfBQvFYjUc
	 l9IjSibwVqITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE12CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515719357.1766.16010862082698037029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16c2071c430fcb65972e5d7a7a35515491abc919580b6ed33c69267ad1449f5
Date: Thu, 14 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755157193
