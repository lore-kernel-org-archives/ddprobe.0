Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8982561B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760558994; cv=none; b=XaD8BBGdXNsUDGMqjbwQBZ4NzLmXsHa1mO+kK2ya0o4IxNOLhoCLULjgdXwpamVR/Lo7or82fyNN1LG4Kmf/sttRUP4V0vMEP1VcJxDyiCWrsvvmIe9wVh86FLxx6WBSwMta7hBTMfuvkFVSrpytONWBFuOKgs2hQVVzQI7VzEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760558994; c=relaxed/simple;
	bh=PpP3EY/7uLyjjCisthywOkmO9TUXdzfT2ozydEytExE=;
	h=To:Subject:From:Message-Id:Date; b=IELSb2BzL3NzVmTlORkWuwdcO/3HGqXH++9aW+sGBH966SJd98/BKzteoHR+xTGbIMQ+ajTUtRNmRmV/e0Mdav92tdM9sexfdTDfZW/835i59l3GpBZYeV59hp/SIHclUbAqIYQNMpJoU5c4WyPp4N2hMHi4PquTdYB0wObzYhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHDNeTBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHDNeTBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760558993;
	bh=PpP3EY/7uLyjjCisthywOkmO9TUXdzfT2ozydEytExE=;
	h=To:Subject:From:Date:From;
	b=JHDNeTBisnGYBwHo0vKnRtrcVvzubzOc4a9QPEPvkcdkrAqBxqRlmzP7L0H5fm+JC
	 BKUOGkhXeebTjRynYCrCMUV+QyBu5MgZenRXhzqvZz3QsZ/OUQKETD2lGoaGplzSm8
	 7NTVybL/3aA1HIa+Rx2wC+uoI+GrTGWZpnEI7SVQj9LtrUdP0n/J9rgVywxz0m6oyG
	 yYR2jPJFzKggfbCj6+0f5T2k6aQ9uMLtwxh42PQ14XYO91NJ72fK9d+2sr4IcAWhYS
	 MVnYLR7mL7nZDpECv2ZHH1kXqxsoiH/dMZhYQirbnxZIRFW42euCyqONiT/IdUs+sa
	 9VGJIV62XlCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B0CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055899357.26742.4353755281423998124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc95fc986bfcebc8778c431944bf01f924d83cf01cc44415e81bd117e48b733e
Date: Wed, 15 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760558993
