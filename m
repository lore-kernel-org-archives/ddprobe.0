Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CC19D880
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718335703; cv=none; b=Hux6rX1YElCmZ04GbW8kV7jVa6TPufZ5Es5dMsYLAlWke4cocaqk4FmRjauqq1a1buFvXaYzPSTZxrkhtIh9uGehONgYainfy8vCMBImc6xPu+QZx+tBmtmMFDydxa6Ac2klaLKItosMmxmmoXHdK6mGh1mvXm5P1KcwEuqYj7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718335703; c=relaxed/simple;
	bh=A0SKbDtYAH+TSEmJEFBGa7r7GYQy9fXBuWExc4DWwKM=;
	h=To:Subject:From:Message-Id:Date; b=a7f6NBP6gviPrxKjEMCoY5b7kQ92h6tblwwXoMvb+yxIdxBU+kmj4efqhJHJeW4rZV4WM48myNzfauv1YfT4473vIraHx3RuGtX/Rqix2LvxS5txd7fZrQ2e4Ix1wq/A/nSTeXsRDNZMQwKfa0AYI5OD6r070967Y3NpbRofR64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcwGRWnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcwGRWnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5200C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718335702;
	bh=A0SKbDtYAH+TSEmJEFBGa7r7GYQy9fXBuWExc4DWwKM=;
	h=To:Subject:From:Date:From;
	b=WcwGRWnzGNTm6awiMzUsrVBc1ZRVxvg2Sl7cllsZXF6cMFIo5R2qwT44NvTQ+9AOm
	 ib+4vhMF5lqGk/qTUSr62p8lV7S1EjwTfF1kNgIoHnszDZwou41UI0mfaS7WSYG6H+
	 YDP7xWrOgtxE7tBeJXAaH7opyX58B0W2iBuIZ0NqOfx22ks6TiaNMwt+/lyIyMKNne
	 3PAoFRxtroavMCpwMiJ4ALzLdPhxmQNqZrD4qiGjrQuSuzKNcKVZ71cG5J0zfMw0qz
	 AkYFPYym74i2J/UaY4OJ4uL+XZs3I8Gr+VbunWVU+qUKI7bNcksKr8VnzWgEWGiMTJ
	 uYvDH0sG0OWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2624C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 03:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833570275.20659.1339459633688582447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070755369d71cc35c6eb3236c44d891306145cb063e97ec6c4ab0e9a06ed6916
Date: Fri, 14 Jun 2024 03:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718335702
