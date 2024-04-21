Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543E23232
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713691823; cv=none; b=uznRv89L+y7NX8Fjdwh4TyvVXRsrifyWn6V8bJ2bA4uSzZtNnFpJQIH4YicaatbRk03KB0Ae7QmGN1r/hIg/ix1kkSZftUWg0VFciDNt8x0uln/JBYpQ3uce9CF5CPEmjWFm82Q5VfL1dyIryjYSO2iZgz8yzFDfjdy6x6Yrl9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713691823; c=relaxed/simple;
	bh=Ws2nTHm1/2M5fPlOnIuyEDlIDWXQOalgZ9YdNJQGjUw=;
	h=To:Subject:From:Message-Id:Date; b=KPoiARADBzySoFL4EpZg8rU3cbxJMMc7Dw70Q+1sHCnQjjFGTUDSg8H7xtaX6IPdPzcrz5wh81kfXgA4fIsFr01IZIuQ4XTX4IMxn2qUR5v0Mh2IbFIUxtsjNTHXDDwfja4Rqb9O6A1JiWXjtxqHoPDrf8nzyGHgy9O4CuzK02E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwELIxUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwELIxUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC4FC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713691822;
	bh=Ws2nTHm1/2M5fPlOnIuyEDlIDWXQOalgZ9YdNJQGjUw=;
	h=To:Subject:From:Date:From;
	b=dwELIxUaThgjjHNI4wl0A4UpA5LV5xRkBCxYJKwBDpJJ4RJ7FsAMeukYk2Q421CcN
	 GmEid0vvcfyfhgQarZdVks14mcvkuvS0sI6DNyVJ/n1mPt7GaZuJfsO7fUCn0a5Fuw
	 bbe6ao8PxX3fNM1UBGXabxQGlyJNiXCjFMOs1AKbrVuW23ufgZxPhrsT26KE/Y+eon
	 Sou/Pux+yqz7VEsgyA2oO2X7XXv/eiHUwH1am7aJEJXndkr8BmouYoVLoZw6ifmgUl
	 UiQUe55YVlQV26DM5fVIO/cGYgZV5p/OlEc/H6wTtCzT7KD8GZtKRcROpSJG714wpt
	 H4TxxivkI0UIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40B4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369182276.18245.17587006227138177049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1eb5e4e90f2a3e429914d66bb3d75422a905cc8ddfc3e74728e04fc448147c
Date: Sun, 21 Apr 2024 09:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713691822
