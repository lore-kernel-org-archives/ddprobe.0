Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD4226D02
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775802454; cv=none; b=IFEPzPrwQdMiZon4FyYCl5k5PKpjcv95hS7THgzjGiJXfAAIKcoW6WGvp1nQ/rQh9zJKYJGhSsWki4b5EbUa+tJMbYtOxjQRWpEvJyiMj1VZFSEexayeVWHH6bA3D8V08V3TPtNulYEXeK0DLravy9Uczx3CiVXGP3LcCCfE4Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775802454; c=relaxed/simple;
	bh=peP9CCdm0QA0Dy9nPFzSB10T2yL4FKgQUHZN0sf0RwU=;
	h=To:Subject:From:Message-Id:Date; b=mFOvpsJNc2penYFJUGZ11Mjph8E+IRIDGm0Hyj9UKiavPsbM3Y/5DrQ3MZITcKd2zpL+NhLSd6r5YzSDnQBvD0lq3zyqSmTzp291QnyjSngNN65cY55JR8olJMtDXarg25O0OuCTR3WAU444a2xEtaPWJ8oMkQy1j0bCw1ZAnNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz5D3E7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz5D3E7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2D8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775802453;
	bh=peP9CCdm0QA0Dy9nPFzSB10T2yL4FKgQUHZN0sf0RwU=;
	h=To:Subject:From:Date:From;
	b=gz5D3E7ec+WGsxwMVXxS0WtYYHeL7lJR8PJnc7hoqIjLpRbI/hNBPf5uHtnA+ob1W
	 WEUjgZE9LIQ5OR44rTW1FFnt9rEZUAItLlO7OfkD8KctqwXszJxvquoeGxzrcY1mnN
	 0DUkKGHoVkgI0hZn6fwWiUt+3mc3IpuNCoKiDSl4ryzPE+uuI7euoe7YXbz5ta0COV
	 zIk20QPMh6B5VtEiySCoPkliMUKJ1+3wMiB77ufvx8RVlUy/DEuyhLV7fTpaXB1Ccd
	 f2CjGfTwcgpgKfwCZaiyyYrbopDFA1U96is1csDtau+8tiDsP0MyjK9YEtXa7VB3xJ
	 Pl4Sk2T0Hrrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D3F36B91
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580245368.31570.7496029109680648202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5176583f08a7d9d126b89b4849b05e8f2c0f9fa1bb1ae49e2ad83f1faefe21db
Date: Fri, 10 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775802453
