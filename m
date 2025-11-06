Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E9219EEC2
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762435794; cv=none; b=kfEwncmuJIepdUOh4EunN7K7Eea+CiWmAmIheJFST2OjSMMGviRRXepPWDJ1W2EdXRNRiWYy4WqmqkUDd8hqI3laQfTYnBQP1RtIErcgwfKHyMsMXLTVbmQuPT5zb/q/zYdMfvJzMgshEvckto8bGNhPKtNuTzQh7jHT8ZzVFfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762435794; c=relaxed/simple;
	bh=r+vlHAokAUITy9isyBqZVUhT3FGbTzz/P1lMwafEeNo=;
	h=To:Subject:From:Message-Id:Date; b=E1S5VbefDxPoE3HSzMrjnixQpH6eHcHPcLfW2Zf7qtJluOSRg7btfb6qBIAvRk+E2KksxGOYhHEhkdDkQbi+o7uZ64AQOWZaxJU2goQrUgT/amBX8qhUHrw+qIs4JqV4nwEhwEgQnKrnqZPJnA50Lkc3mMCvw2eloWB/oVJpi6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQMPUO3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQMPUO3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F5C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762435793;
	bh=r+vlHAokAUITy9isyBqZVUhT3FGbTzz/P1lMwafEeNo=;
	h=To:Subject:From:Date:From;
	b=pQMPUO3Ga3EvDP1BmZqtIEMuLRPZi6ftuqVCKquZiksdZtLa0vZ8wOYhBdYY2D8vR
	 NzNoMY9LN+g1GD58vKfN4KQbYCkaXehvtmr3LQ89ywQpOoJeh3ctYuIarGivgNCefP
	 1MrwwB/HaOlUd/i6FphGqNBfvjzSZm7h/ipngNJpDzQ0q5AnT5OuKkc+00EKG4iQM/
	 y05pQvFkTj3nSMQeUZx07oHBF+GOfAK+4oVgKry3shfQIX9okyiC6Prt+Nqi/IRr9+
	 AvkxzHS4+1QreypA14IQ1/oj8Up5QaZuwy3eF/wVM4ekhLrOGLnc4pwsl9HZbBHwMS
	 YU4YeGGbe/ECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0FCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243579358.19854.17524064670461693846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1859fd20269d0c3a4ae6aca0b854510d72bd8e6005329cf022a2504d2e8ceb
Date: Thu, 06 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762435793
