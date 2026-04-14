Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7493806CE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776158854; cv=none; b=MPp3WUwcan0S1NsMIejLXhN3Ew290VixzpNkWhoygxwF4LyLlS7iGU+u8+WYYMUybLuTsnNBTssKo/q8OvyRVPw09UPzFp/FO31l0WyVfRszpubC6CmRnhHjpZpofQu7TJTQ0s0FsyYWz4j7p5ICgmNr1rUm6nzPTW015CKxUfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776158854; c=relaxed/simple;
	bh=M9U1lI/s+x3cpAyspH89AWnmsvSpWjBdn2ec9SN1TPE=;
	h=To:Subject:From:Message-Id:Date; b=LfWEwOuwAMfmMDMGqQjqPb9oEm+WJxxh3qZ9LjEsS0R7faLxW1E20oyqGVOoHA97P1tig4nlNqoa+KdlWsjqrLribFjgn+2365WCh+ujWrS9Ix5TfJdCpp85vgP6PUwyZZKEAtYLyltswz1D9NCGjIRgW16qLyTpMZQOF5sj9i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGmjPW+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGmjPW+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B880DC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776158853;
	bh=M9U1lI/s+x3cpAyspH89AWnmsvSpWjBdn2ec9SN1TPE=;
	h=To:Subject:From:Date:From;
	b=DGmjPW+ZPnEpOCb4eRdBmmEb2yIRbUsrBihV8Zjd0RWoFtWZ3lJZ8KQJ886R4VvMa
	 zadFuDxUuNdkX2q6zXJZDtoBk9D146wJR/dHcn5zka9PMV/HNv20Ck5Jy9r2AkIj71
	 nbKKQDeE9p5CbMN7DOLen4TrO1bOBQrG9JRtFw48eRKnv0OQowUWADkWlzli4iK6yc
	 wUHLJoi7CbygLkCZyxFGAZgHbXjqZuAtwqjb7qlIVeCFJHveUp2TcsCqiyISsSgI8m
	 /L1jEXi6jWpBvCgKz0uEcFeBQ0bFrmK8uzYSORT91pG+ebJyrik2FdkIxA5y4PkvoP
	 xxtiAgm6OeoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC31EED7B93
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615885369.10458.11538624117400604959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a558a4661f68174469daadc28580bc9e621814e16e9abe73d68fc566343ee2
Date: Tue, 14 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776158853
