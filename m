Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E462624B47
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705579097; cv=none; b=XGi/jzxkW3vYDAngtyEmV2/o1/HsFa0MeMbZ/GYyAhZnYQIUGnt1tLNCLi9b671Aes6zTug9hL5eCsbzrI+t2LFe55HYHXcXDK/1jaG/njMSRt1azEJDvLoETcqCaeyJLnZyfuLaYRL153eEzQTvahUfJQHLCTGxGXIJXoYhRbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705579097; c=relaxed/simple;
	bh=IQrqrYPkif8G4MfeP/qw7IWUD06NEo99jfD8ZcbYtDo=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=DM/8pDMlfh4hd0KxLdYaEjhez7B5+9253hF/omeUZDULwFR0LlTYSQ3XbqQFM9eH9tvPCvVF0hAVFalvaXN7coeovbWkYXhhS95kX5xdJ0nhIWs2FRa608jlGrCBs5arcjtrwfv055sutRgOP9SScY5NXdumn2ypqVkwSBqmYtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSK8tF/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSK8tF/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA7CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705579096;
	bh=IQrqrYPkif8G4MfeP/qw7IWUD06NEo99jfD8ZcbYtDo=;
	h=To:Subject:From:Date:From;
	b=TSK8tF/kOlyOhK7wISZSov4L0wJk9El8t0N1X0p3t2j5IcSLXpp7LT0GqP6m4H/B6
	 /HxEvdak0L/1O8qaDCQH8OYnA4xHZRAy+R1vedejR5V6vAbuGae7vD/yYSgZPbD/+l
	 iRkV//iIhwC0YdyqL8dXxnbf6tX2ucq+VJUm2d7dMqQicehAHa1lW2NyiVZc+qPzRX
	 3Qh6WPpS5oBmhHIce17PmYXQVsxKknkTsjNzp9IpFKInxl4gS2bKe7ZqR8eihFLXYE
	 qlt4v4EeiteyKSoBB1uQvoprwavBvylKUrgLZTVJeIPUMLFdV95YirWGTlCssQZZ2a
	 BMd0DCmQ+Y0gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6067CC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557909637.31730.17231896213602752927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f1e535685e4e143e3c84732ab04e55b424b08fab000705720020e596989cac
Date: Thu, 18 Jan 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705579096
