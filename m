Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2159D24B25A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736721954; cv=none; b=Jsa+EDpECryON0RsljOqWdBsSvE/rj74mmuvIouAFVwAp+7uSQvcDOaOxCIIyVLSWApn8WIguyz1idErNA+P9DE0++TAxyhxbS9UJaBxDQaGERsb0lP+LrJrxWJXa7biKhtoo/0svEulGcFBW1Y3bwS9P/f5Mvb75dQQ2lVhfsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736721954; c=relaxed/simple;
	bh=1NR1cssOnOBK4j2DT2jvRFmAvrXl/zKOPVGIBPtgE2w=;
	h=To:Subject:From:Message-Id:Date; b=cDyVFaFziZyd0hVKzPSeyA91ajzaHloaKatGXQbmc2dloAAbYNRIA22d7YYRY9xIOIGrNNb00juxEswRHtYxdYArj+Yp0IIwrOAnh6CA3VHJu1TZzYgvKKNqo5/hqwYVBZY/MV/z54ei+YXUvIzpIW/JzGymjfblZRrPFfHMjVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itxJHPwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itxJHPwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8B9C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736721953;
	bh=1NR1cssOnOBK4j2DT2jvRFmAvrXl/zKOPVGIBPtgE2w=;
	h=To:Subject:From:Date:From;
	b=itxJHPwQBvuxap7VczSNr4B1hYMBhz6qJAJiXiG+oN6DOQgbnAuJKjcSrxqOhYx5a
	 3++y/0w5hAWNWjaOHa08LHmDMd7SD1ax3PQRzf1Ouv5YoeTJeqkse4pyeAJsvoYBPD
	 bNBbesyD7ykUkIklrsnqVhglGU2MngsAlzM2+apAjNYy+gDvTQBB8G9V/1Zrv8CjIg
	 SJHfjmqb60aecXa5uJXPrOlV+j5ifimKdZiXvXHGfpSmrttyCM0lXKF1yqZRUHaTDl
	 1A8EAv3Am3p17BMGlmAEP1TVHZRE3aALTMRY1vVbT9j191C8VPAzCVPyKlvTbcjRJu
	 vZfnI95QapMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC8BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672195362.15318.6073959223506514313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de320a8725581530ea50f8d2fed483d9ea9d439849d61a548df89eadcaedfb29
Date: Sun, 12 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736721953
