Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F358A50
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747873194; cv=none; b=cj1oBHCgZ65erbrbDA8umU4mb1q1sXR29hUN1bJtWfA5FIUNjA8EUOzRuMh9El7rwIAxG/IF1k5JgJlyLH/gvA8Rjbd/zGKkzgB5wAnwlaBPjImuQS8qXxRgXgz7lFb6t2jhUFbXVK0ndq6Yi0zonXG0FNM0HRQbpkp5PwZtE1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747873194; c=relaxed/simple;
	bh=8TfGhDqkpzaI7fWvD6BBB5lYoVcf2oZcwJduE1jRSBs=;
	h=To:Subject:From:Message-Id:Date; b=DSBCaYEPWuDlXUDC+UdlWuZyvL7kH56gmnJ++6l2UvsAHXUoWV0+Y+WtkwogGqmOYmIaziR1Coy+Tjqo9AK57WvnsZxEBq9eXymZyVzfqv+jnRUw8xHSDr9RTIwAGJZZOttnuCghLSeWj0rdLCBzPZMoPKf/wF2fQENETPo33JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVfGKwZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVfGKwZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF33C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747873193;
	bh=8TfGhDqkpzaI7fWvD6BBB5lYoVcf2oZcwJduE1jRSBs=;
	h=To:Subject:From:Date:From;
	b=qVfGKwZBZ1BvAjiGKVMuT+O7zdcqlDmEdQpWbxzE1SkYYWm+CjwF2nwyAfj4r4uhh
	 RoN57EPnM6db4YkerSkLScDKw+NA9cgGfo38KT9jTNB6SdDkLTUNjasnEJSmqOLEeh
	 VXIDxZDYEf/l8qxnYNQQzHdmnOpNgslqQ0byi83Z4C5GiZWRonEe+s98zIvCI67qVN
	 eJ5NfrBmH9Xk5qZR9ktn8okG15DkP/lN0s5dh3N1G0aUlInGS886ky9bX47rNveOBR
	 E7jzSWT76sddoAXsIOjxCo+R0w6ct4ZUk9DR1/S3Z0qi0NTos9NmUPEFmQFvelZhwJ
	 iptemOEsSwlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE22C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787319357.8311.1577192647370834506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d57d06e2a8fa31fcb6524973f789411a919bfdb96d8723c9073e0e48435dc26
Date: Thu, 22 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747873193
