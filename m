Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4B82D7DE1
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430635; cv=none; b=l+arCoWWYS6eC+nMdncjPEGd544AVUvKT0PVXBlN90bWpdva8Md0CJR9P6s3R/txXSXieCfkspFaU9672N1hXW2KSzmKVxPEe9azon08S2dZaLDQ54ZHJoYxR4AyeIoxHqW2QZjqIY8UaDqQMkAEokYu8KBhcEHQNkuEqqhSMiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430635; c=relaxed/simple;
	bh=G+tIMAPgOGpjrUaAzCjmV7ZYmptQ7Vp4WkU5EnJKD1I=;
	h=To:Subject:From:Message-Id:Date; b=KWjKYD2NRm8Yw43tRrt6W5vXpk3fQpNxhi5udz1/dIzHOCPCskvXTLWhzoErGds2xH2E2+BnpIzaEMklxGnvl6oyAan8ot9/JxJG0TVKb8sIF6szvnAGzd/e25C5eBdrN+pkRa65pFGqZ8QrL36J0snDP9L6WtOHtPfhASYQEJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0beo7v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0beo7v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B266C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768430633;
	bh=G+tIMAPgOGpjrUaAzCjmV7ZYmptQ7Vp4WkU5EnJKD1I=;
	h=To:Subject:From:Date:From;
	b=G0beo7v2vEo9E7uJ9akdL8yqIQ7tc6dl/JPGEsVq+SnfRSr3YNMkk53DkwgHc7LBz
	 fCoDxP4h01zL3s3Mc9RfaHVeo9Vhph4oOzbhoBWhOHar55VAn3e9ygIlh6qcluhEIl
	 H67bsTaTQFquH3jNWPZlvAo7clETXefw9H71H2yy6YyyioR1f49Gzr9dsRJ84Hv1hA
	 XwiM0zU/vfh2gnGqemUpeYORZSN8gHfN7F6LCtMRHPbZZq25DGF21672l8FAmvObAd
	 uQdSls2fxvUcppcATqj5YfWT+xVIK0a1EVmpd6ZysoJ3b9ZzlSzaw1FGQq7EP92hvh
	 243r14d/iM3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E04D3CC87
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843063359.24552.17299431732656576784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f03f8c920b722cdb14d74f2ab6856fcbaf200682babed60b296709681c9271f
Date: Wed, 14 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768430633
