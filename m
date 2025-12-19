Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D39E548EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766103834; cv=none; b=E2Q/QX8XLajEYqq5yj6tn1HIuH2sx80MvzrPoR2ehtSF99cO/7TgzlKGBSo2JUUXwFM0lYKrZsl4CKMSsDnszPobXKUHVXolcZXFq+LOeJUJdSZVV2Kv+XfuWj/WrfdgS3E6E0lIdqC7R7VXw6WBFT2T4u0pPzZaw+ioS99wdOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766103834; c=relaxed/simple;
	bh=MH6Y2dPS6XhZecKOuaT5NagrqLbcejz6vktSlobq8Q8=;
	h=To:Subject:From:Message-Id:Date; b=L3wwWYbOgiaez9VJU/civuAFu91SZThsLxqG377kICVaKrG34ruz4oz0fNc0He6xSPzXN2PRkeFncWsCLKyLKA1I3MFjSSCUU7io/6xq2D21ktzGydHx6sYhU+W9pdNuRWkDnW1c2RFxFt67HsGzsjMeuRRDUZh+3uaLqvFXl3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHfv5JEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHfv5JEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766103833;
	bh=MH6Y2dPS6XhZecKOuaT5NagrqLbcejz6vktSlobq8Q8=;
	h=To:Subject:From:Date:From;
	b=fHfv5JEHdWC6Esi6tScFNAMh5Tnqiz0Sd8zu2nD7hvfV9+8ek+IQmR09Reu1VX9aa
	 4T1k8S0pNLxgJdYmyy90gcH8tg5XKrSjA9ENIMIVMrXP3jCyVCCQ4T0Sh5qygFDj05
	 B3hAg4f9JH282b6cfaxou7i8Ig6Gh2dGo/J+qJxQoqoZDgk0diz9h04aGy0WSPSIQp
	 Mqjxh3FdEBpxpB/QRkAq6hjKDw6El+lykMu5hD3lczwB8BBhkq1uuNX3KY3ffCmAEe
	 eXH3HENh5djl4WumsDFvNSxZyKmhTy4cu+bVU2YUtn5FyVvi7Sp6XJMbIoCe+6NCqB
	 bYQhkoQnjd8JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A4DD711C8
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610383358.15597.8021597900355482515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f3bcc370c49764cc3b806943a9106523e5ef4d0e84a9879c42622e5d0348f4
Date: Fri, 19 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766103833
