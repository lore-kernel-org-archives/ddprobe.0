Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAB44B1E6D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747529994; cv=none; b=dAIOZNDDV6AEny0E9UdGgMso9bGcMvMKZTj2uTSsCzbe8lKNvsIufD0/tCytlWuMh5G5R4xOlnjlAJtARF8CirkVk2UVrETlykECCv9NtCXA9GU0isQBalW4l/uqpfiTDAxirOhTIwajW789PQzOyIPdgrKYzD4iBzYxz97VbrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747529994; c=relaxed/simple;
	bh=DsCAA4HNRg7cMH9oTp38lubhH8zXPSfQQrxP+2keE9Y=;
	h=To:Subject:From:Message-Id:Date; b=SU5LbY7y5PJ4CiJgOpZmq4LOchnJQS4ye3oqkfCQKLCih7+3rbU5/FiVBMZXhSbK6tcXe7zdvcITrvHpBrlMYXsjS0iA5oatVYN05KL8qY9w60TcgHQwPIZ50lUNWokD+Hh0ioeXgnKhz5oBHGsa9d3WPjiyV6Ng3r3rgRuLbzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKIOGN5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKIOGN5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EE6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747529993;
	bh=DsCAA4HNRg7cMH9oTp38lubhH8zXPSfQQrxP+2keE9Y=;
	h=To:Subject:From:Date:From;
	b=RKIOGN5zoQofiD4y3KHcCg9lnz5sMoEXr9QYU7SnPz0dqwWARnXMWNlGPiTHnazT4
	 yEJxEd29vd7akzMngVDrz1+2b6XWDAn+v5iuf1iVtJ7Zq4fZz7EyfAZDeRKah2yZAT
	 jmD1Q5i1DFbgdubk6c0h9xVMLmKDVyEuCQit39mqKZEyAsAw4sZvGJuvjq4pQvUkQE
	 n8TBHn4pJN7U0LI+rViBV9+zxvSnyMVREoQntTSftz76+I+bWhirgKtK3StNCiiPdL
	 py3Xxeb72qMFniTL9qsmGUytWVtPa9lPOGoumAmdUDnOZrV9G5oAynduZchLxrcN1e
	 r+oj5bSuzABtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C48C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752999357.29754.17174327787746904169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa18f4f8b60c847f5a5d40a36e1a4f7691c557df7bb986eafc6e41a6098ddc10
Date: Sun, 18 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747529993
