Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1464F646F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792417234; cv=none; b=eXxy5vP29iqVYfrYaJ8emuvrgOhwbTJ1odLoRN1qcRHtCoRwyZ2UxFIm5A55xURJjMD5LjJNcGPpO1stVvI77lWlCMgfehXibhDZCKqtXglEtFxGAMqMOf1G/mWup3gx4MkB9bHZEsuWxXFgMSyozd5Hw4GhjjLnwMd4Y2SijH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792417234; c=relaxed/simple;
	bh=nn5TqkdJGYyFhnIAE22WtoORW8gzbDi4SVcpyT9XX7E=;
	h=To:Subject:From:Message-Id:Date; b=k72qaQtQ0cIblRdI9PD7zstXFFUTMx+6kJqyxL2/O5+bBSp2t1fFGyIK9kAkCF86CcyRGEobkMuajJGPpyDMaxv3lia64X44OOhU7hwAui7TlmVFu6qvWsbS3fMl7gqwvl6Wrg739s2f5YgJDyoV/9SeZTKJ4YoNDaFAV3SNock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/BbgZxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/BbgZxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4969C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792417233;
	bh=nn5TqkdJGYyFhnIAE22WtoORW8gzbDi4SVcpyT9XX7E=;
	h=To:Subject:From:Date:From;
	b=q/BbgZxTbJDqRR26DBa3UeSltJG162dSzM/B122WNW1KqKUpxJS8Vhip6NeKzly3t
	 wGGosUQNVYPGuYsQLlfz7GHydfMHeNLQGXN7wdNw+sKhbhTnXGa/NGbfBCLuIb5TDR
	 a2JehrKXXmGEzHJLBKKL3KsJaeMSYytq05VLpaPsj/hoGtNW9s+awG4eeKfOVn7yVp
	 3rasrB8/Z3hTZV2UBW0/uL6vB8M/2+MNuRPHlK4Dc1rXPiAde00oYQ5i+yz7vln9kD
	 eBq8egrkh7j7xaUq/7xRgj4SmcDhhw6yWyNVp3x/xdAl2dP9ndLiIKtd9f9k9kvUuu
	 AP+4W02jtEoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA14CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241723369.6596.10775428270764849108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78243a1f28ec4b8485dc3147d03a6432999454610843193295ca11caba179985
Date: Mon, 19 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792417233
