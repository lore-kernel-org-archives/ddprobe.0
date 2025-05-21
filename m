Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F971EB39
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747836595; cv=none; b=Wd9onjITWLx8PFVMcFmp49//tEgkN4j08j8f/m0IGnsPA33j2CJ60RwqILKQpcmezMO/OfBmhP5Bjw4ohOrC6XOfi2I6kNsAAs/zWTmZwK3meiACRhlvCwUDiPJNJM9ThcakUN1RqyEI/k53sXS76HzhqQtItJyvZLuPldswQ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747836595; c=relaxed/simple;
	bh=XlUwbvov1DN9BbRRZn/ykSW7VVAXtpHDM8b1frsXW3I=;
	h=To:Subject:From:Message-Id:Date; b=j9S5Gp206O6QAmvwQEOYh2aokxNDjTYhgrxJbNlutIshZP7rCf7ijHik1blzj5pgunTzSd578diLT/qEmkbilJaqMFV6Gn0it35IHpPt1/D5pMQXX2w5TKS9rYpseAf9V9fjEqE9mXgAQADSIML3hN1sz8o885KJItoD6XcIwns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLpL4P8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLpL4P8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C6AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747836593;
	bh=XlUwbvov1DN9BbRRZn/ykSW7VVAXtpHDM8b1frsXW3I=;
	h=To:Subject:From:Date:From;
	b=RLpL4P8NIkcJAuWL7iThIXW26z7yQliHbIpXl8LWxtxHvmc+uRcA+9Od1LN9wDard
	 LCrIOJfk28JSv67L+BJz5KMAJLIG+dbiouon5aP8LIhMLXHvIu7511AsqHS8qVrHdd
	 hOTPpEEznJgjhmoU6QUWINoHRK08pm4i79hK8g9ayukyPsTcMg3hhqsMjrJEyqqYu4
	 a4Zm5unorFrn9BXpvRiqjDtpTN4SpR+2w8SXrEElWKw0YyLjG+VEHWzN+H9bQs8xgU
	 TEupcWiBcGb2oxMJTwcFzEgCRORuiI4BmhHxP6QaO1vD92aen2L9deoyJ1um1lswq9
	 wdYyLkabXF+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783659357.14165.5950218331095176771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce13f824b1aa8000f8e7340ac075f21c85b7fa0a6f3bef346eccc01a14a745e
Date: Wed, 21 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747836593
