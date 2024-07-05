Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4657118AF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720207523; cv=none; b=HJ8j0IXGKqzWvRR2wewagl5SEb9edXR8DkVoWX25cd80A9cNEE57Ic1YxKoHeJ+YkDK61ZoMFHr/iy8XYFxqfB1TwoMiHQSZk0BiH/3qPxaVnptAMfbuhU9o6lTYqmG5Bn0Mau9o1wd0W3gvpumJm/b1tYgwy58f0fTwzQ/b78Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720207523; c=relaxed/simple;
	bh=cqprx7AT1ptFGw8s5LdoK351NYxlh62PhM3UYQ/ZuGY=;
	h=To:Subject:From:Message-Id:Date; b=UHwfbsPdpSuCW1lZPpVQlN1OLnZFL9Y9YhLXxnGmksbHbPMNpzEa3GcQBzU8/lCcl4iEv409/yZYtvt3jzNZiKIuDutExRlghH/w6Qd26cfCNQ8TC4lItAy6FM1osDSpOhXTQMYOwMCucN6Dmqz8zSPz2u3SLebgMBUG39bmq54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmFBvbWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmFBvbWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0971C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720207522;
	bh=cqprx7AT1ptFGw8s5LdoK351NYxlh62PhM3UYQ/ZuGY=;
	h=To:Subject:From:Date:From;
	b=GmFBvbWSmMK2rKQrIdAacZ1rTlZ11PUKhCXRgQYjWl5oIZ/9Vje6eMV+q0uQyJPZC
	 +Bqdn8NsHDIjMl2oYSaglUT2n3xkFSc6QupdEXPoMy47MAJ5nU2cWIWrFPlcbYKCzM
	 PIgpUBqrGa64L/ou2yfvBTxiGO+xvFi8RU5gsIRSjzx8GW97vuxHBXi+2y1G2+odK9
	 tP5L1XBlck5/p++jDLjH69Jthx6eegDuHL65t8QmWLXa7tqxzRDqlZUMVvnGs64m6T
	 +Hi2R7SZPiTR9e8i6D/OdKEzlf1VA99Xun1a6SJGaByfqBfiRPKveG0PJgP/LGKOnP
	 knoCc3TGT1bhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAECC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020752282.6106.2714508700748673456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc1b20879be9ffe8c7d9fa5b407d08780cd65e1c3587eea7af3a9e5aa4a2e6c
Date: Fri, 05 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720207522
