Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CAD3CC7EB
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787119834; cv=none; b=fl3oQvZUc3CAWqyVYqMdmQ4i7ULzrEpQoaZfWNbE+lPWg14gEpB6iIdz8xrsp3PkQqda9IoIKM2fiDfahhBUVCcyUetHgGjl6pLJrlUzY8fe894S+kqk4X7a+3UsU1PE0nwYlPyOD7uDgJ8zmBKQAzRIYF9GYoWAYoqLLWYBkg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787119834; c=relaxed/simple;
	bh=bGpCuda2xenP3fZpnnv4sZ5Q8nJroVtC7JF9ymue64g=;
	h=To:Subject:From:Message-Id:Date; b=VpdtMikKH0Fhp1MlVT+EzPT8l7dXjxxmVbfsztj5c5G2wUSujkQTYAWHjch88855uYkFTMhYbjdonHwqq/fgOuMw6hjBoKKDXEv2iOc9Ay1P3ipEt1+Vnj6XbZEMGbDPQUFTcquXXXwWUrgblUhJjsefbs1Lqw7UGBv4t6SNOzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACmmDlCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACmmDlCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA552C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787119834;
	bh=bGpCuda2xenP3fZpnnv4sZ5Q8nJroVtC7JF9ymue64g=;
	h=To:Subject:From:Date:From;
	b=ACmmDlCsvaphm3WErG975bKBOFRob31LxxveEWvaDLGUT/Bf8/liQLVDAgiA+f/S6
	 MsGCZlE3HfOt9IDAT4KdXJLsz3qWftLoJwHQhdAWYgJkYhYkB9nBBLh776RMF3RHGV
	 UlFkaRHFcC4GnDqjB1N6GyROD3Zg+PUkk1VuuHt9UIrIl+sJrSBwpazBwTZ+5n+Yyh
	 Xbz6NIknsrtoWa0nsV5GO9X6I7fu0sjbiv49JxBGdxIeFT8BvywxUUywj0tXgmPJuH
	 9rESWvYnGqzERO+MJQNa6NEonksZvxqom6ICbWUBoVqJyJ9j7wFWqST+NE9pTupbJN
	 X3f8DtqysmZlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB68C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711983375.25087.16447955285094658771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec07611fdd7df77959f5dc94791edf2e8f376673aaad0bc6e9c60145fee4a2c
Date: Wed, 19 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787119833
