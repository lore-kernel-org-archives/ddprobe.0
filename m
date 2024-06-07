Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650F3DDD9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717754243; cv=none; b=AjEePpv/pshzmOKcJZilz0LQiymv1dvCBrmciZVWFWJ0nZuBJAyZxV10Ms2eRHjHNXf2tXYCCliBlfOzUO9HuvVPssBeEM32otKk17UXn5pJzFYNKqc1hjTOXchDzoiA7VEi1KCfy5+1mjmOr1mssowi+3F6AcFZbeMzPVKUnCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717754243; c=relaxed/simple;
	bh=l2VRHpOnhjtp4t0IXTj0mj1u8+YWYeBV2KWjHaD56kM=;
	h=To:Subject:From:Message-Id:Date; b=Zwi78vT9XYycnVBhaMbsfiwADmQgSA+o8ZvnEBilrX3N44hiyvNZRU476BYVSxJPtaPdeY0hLhCoDUNXM/nIxGzCxMcicCUzfIs0aclP5oYdUYXMon78mZvDugGyFGal9DA+f1cf1sxrJ/yFLlxQCuoUcBmNs3d4vz+m4rtXgqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxdVQ+Pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxdVQ+Pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC8A4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717754243;
	bh=l2VRHpOnhjtp4t0IXTj0mj1u8+YWYeBV2KWjHaD56kM=;
	h=To:Subject:From:Date:From;
	b=LxdVQ+PwguL32qpvTk5SCEt9h4kNXKkDfujWunWyAdmEOI401zOblDlv/j9juTJ+C
	 X6d+55BbT7r5nx6Nnka74JcEPNgnYgK/RIv5g0lkp8IjcBQb5VrcyvZP1GtT02XqLR
	 CrHIJb/LzkZUFcOhKSLrgsBDRAl475ErERVxORHxB7OXcpVEYGtHbB05YIS6LN05Mi
	 aRQ5/hqtz4SIU7xA7YdaCx6NMw7XAXuBqsIxIe9EsEmwGsl36yo5YRAbfA3iFkGA/b
	 YzF/ZDhk/Sb0EzCa/fL+BaDxMreZ9zZzjGHzidjXcFAbupCgfS+9/YG7GqUD35bliO
	 dJdYmboCFze0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3122C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775424282.29284.1511409811903797659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af365f367182d5ab38acf53b069cc367062f2195721979d299809dd55fef79aa
Date: Fri, 07 Jun 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717754242
