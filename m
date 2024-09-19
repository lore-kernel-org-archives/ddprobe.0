Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435EA22EEF
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726710354; cv=none; b=buusHC3ubHTGxB220g8c0Twa1+UxQQunPtZwq5C1yT1TMvscaDGf7SPB5T3V+la2Q5bcLIBQ77fCrK02zUu8NsjL9ndbP/ll5rddLCquwoR4mVwArYt97BIfcU3cCoKipVNBhbZGPOnOimH113qauzKK1iklosEkRAvf+SzgCfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726710354; c=relaxed/simple;
	bh=+Hr83NLHOqalWTNQSUe6yW5IB79ut3wOW81jsIX+54I=;
	h=To:Subject:From:Message-Id:Date; b=KT8GkVYA1T07JK2tx4dhNgdvPt56eSdIMgKaKUtZossdjb/eVKKj4p870r144mprwt5u/YHDoAGXEK+kMeM0wPG1MekrA/PCoUvEjog8FvHW43+QD/1uaTG68qcSbqTlZuXVBH5q6mfa6G2XzOu5ErdJuDqBWx1/1aBjxOZbcaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elC13Go9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elC13Go9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F96C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726710353;
	bh=+Hr83NLHOqalWTNQSUe6yW5IB79ut3wOW81jsIX+54I=;
	h=To:Subject:From:Date:From;
	b=elC13Go9GPNDf6F8zS5xUyjCYzHG327vsLUtodOtJlNYLIJE18cAC2iiKteXtF5Pz
	 0Ya4AFuDgzEbukHJv8ZcBBo2piOKjs1oyB/L0P7CykUufFn/N61s1q54Rl6AHyZr2y
	 OrB+5JMIaroQLMdKkkbJoP/E9wVlti5Ll5fTSrZ3IpapplsKtO/Q2LunDU0gOc16o3
	 6XUuFUaLSZssOhYVKLeoahSO6+hDE7BdYp5Zu3o1o04dbHc+XOy0dA6/1xv82qcXX9
	 fzHu0r+iJfp5E05V1TcbjVAmbqR4bAMlgnBlCO6UNBm/2XVL1jEtWJXORKkC56gTBV
	 N2jvXmCRux6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96163CDD569
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172671035360.13626.14961864689511745527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d6321adf8bed0bec72698f044aec22f4e559f460327bd547fdf04063aac434
Date: Thu, 19 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726710353
