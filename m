Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3611D63D1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768179234; cv=none; b=EYpi93YmTNsYs2gHNJtlhZky4FlL0qL9NVCkndwwAhVTZhH5/Hl1IlxM8mQp16ytCbdG581QzDzzNf0NQyiUFIjoEIlqnzRK8T/ewUegfA73HjleJ4fXl3RqOaqj7DEHLA/O8oGX9sJrnW+/g/Z9y83Lnhi76Oksb74x5ggw5oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768179234; c=relaxed/simple;
	bh=cjiuPOk+3iDLIvrrwV0XhLepANwjgV7e24W6FwI/DbI=;
	h=To:Subject:From:Message-Id:Date; b=Nuz4ALX48ZfcKGKZRBhEAJu+DXaAcgdK4SzsZJsSoRTLJDt3dTaI+AV7mZNYYvMV6TcoT6Ei6uM+BV3DrtYQe5u+Z6/pGL5zHVuEAGJKIWQ1lC1z7NEe52aqDLaI0e1cihD3YgvojdvXsMrk+yAewyMWvJA2A42/YrqMzKeEVDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuqUUWGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuqUUWGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768179233;
	bh=cjiuPOk+3iDLIvrrwV0XhLepANwjgV7e24W6FwI/DbI=;
	h=To:Subject:From:Date:From;
	b=UuqUUWGVT2zdiem0ddUgW2n1REA6Um65LasYz+3hfIJcmGBhL18OUhwJ6Ca9v7hGr
	 kqRBV60ArOHLX9xb5n2vj4pfBcILQMv5vyzsQaZbnOIr6i+AszXXmpw4votL37cIux
	 M74gPgTAvkWLhIQSzirhRLJdIFb9yfIhWz/CW4AfgREEKmTPSbQYpbrYOdLBP3C/bv
	 RRyF5h50y+WmlGOR9J1QuZl1U56wpTsnx2m8G0A56WeeXq8+36vRNBG82GiYh7xSlq
	 oPnUZRoq6hB36iGdoYWQ+5xQ7dhYkjwuvif3q2DG6vy0jy4hbwaqvkXHs+BB1DtmUW
	 0ZsSyC+nt2IWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ABED2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817923358.32069.13647267232036075290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6ac283bb985127fa8f901360ada0423f7e204ee8372964681bd76f7a23e04a
Date: Mon, 12 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768179233
