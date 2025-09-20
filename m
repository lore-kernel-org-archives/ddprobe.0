Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F5E8634C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758373194; cv=none; b=e4bmsyryKba8GhzXsXhIaJ5X1jiXBYKiFaJMkKdhd1bbtgPBvJBn1xHJYK+NStzCZrVgUuPZagWSP3iEv5pYnCGNf6WLkFLRozmMjNsgeQDy2sPkyKNrTvG5agBOz6RqdtI2cEBzSJmUhmPM8v2XHJox9Rd78qoCdpbGxPLhNTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758373194; c=relaxed/simple;
	bh=8eCeho7IjwmAL8fwPvJHmAK2RyFa4Gbx/7F9HcNEvBI=;
	h=To:Subject:From:Message-Id:Date; b=upRlaI6033jxW1q7XQnO1ljya57TophG+nluV09MypIUrUFHb/9Zl7teXTVCKppvctTEcH8YM1HrH8kbS4M+oQyexKBS2hztctVkutVbrCRc8qI+Zk/byyC5svhfsICOFnheZDeApZY7eRdzlzwxM0Dd4HKmOm6d8UKbpqyTJRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHMk+LNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHMk+LNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C03C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758373193;
	bh=8eCeho7IjwmAL8fwPvJHmAK2RyFa4Gbx/7F9HcNEvBI=;
	h=To:Subject:From:Date:From;
	b=IHMk+LNQMU4WrJG+0gvhnqfJ6OqPXz+1RPfqE3nX4It05WTk1Zxk4NOolMRhpCGrP
	 QFaIDb8imVErNIPgKOf8I9PekF5MuN1OwkyXo52/fxJJ1UoyhayFOorBSlaxAteWnL
	 i8vqQ/zTyhyr8vMm3WM3Euj0zupY1OnPS2TL7JuZfAU8f9zqcsOo65OV1WyzDhlxyE
	 CbV9cJVrYf+8Tn058qcTpN5M0YXS3oeRw5flO58JZt6/J4v/zZ1dCUa0q8iuV2wrwz
	 LLFS7Ta2U1w20f/g2rDpqAnwdPN6G2Jq8cv6GLS1Z0b+asjtTh+eKqSp0AESRLI5Y/
	 TN3G5K0cY7K5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F425CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837319357.15996.9182747958394902121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89e47708c769e7de0741251059adf99a37e9a99f5c6d0bb58ac90a56277445d
Date: Sat, 20 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758373193
