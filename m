Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CED1386578
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784692714; cv=none; b=SZo7Olovjw59BYIOcx0i4cjNMCDg65vw+QdQuTWmfrJ3emo1CimzTEkYlbEN86VZqTYqPthg/Y2+iy+sTjiU5l9ljzT7zPh5hBjDg6tx5iZp1lJxfgJXO4B3Y0JOvq2DqZVKDsmKDTdZapQu8eYT4f+6kEtH2LJb4rCD8OA5NVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784692714; c=relaxed/simple;
	bh=+wRVEZDsacgF1e1stAF9AIJhmSW9jIKdxaCnaLHsXEk=;
	h=To:Subject:From:Message-Id:Date; b=YpuICjVPuMlL/GQYbpcmkNabg8rIf3EfOSDWlHi1N4K7oLVHLCqff7yGPEViNt8ynchz8vrSWvxeP6kftA8UejE0iAKxcqOBDTSRoHSveTZBKPC5yZmgnvxZ6varbu1GE66EAsnq9R9sAPvIFC7ycXLWGqjNxESLyrdB+z+azI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEPas01k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEPas01k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FC96C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784692714;
	bh=+wRVEZDsacgF1e1stAF9AIJhmSW9jIKdxaCnaLHsXEk=;
	h=To:Subject:From:Date:From;
	b=kEPas01kaN55dpEWEb259jNGNsIdbQyscPxNxongHPNZzQvfWmIfsXgCq+rXNqZOu
	 DX5UaKjr7CSMnUTbisN1frtj+bm+HAciX/75lBnwWDyX6GnU2WjZggIJ5qTisMMC5q
	 xBWniSeb02iO2Rc38mlx6dGurGfQuAqmTX0ynqsxP9Q46IhGJGrKjcJeyHx1s/J/Z4
	 iKK5pnWKgH/XJTQE5qqf7qFoNKYGrGCC5WabO/fCT8RFS8Yc10PTOdzHxEc6umxUCL
	 QjKgfPep7YrXwIZ8OiAerybcLfpqxM9R3cGEuEeUo15fx4Dcuy51iqU+dBOT4mBfbM
	 BRCNziuS9nWhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1FD3C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469271384.3712.5449906539276868072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e891b77793af4f5a68872827ec48a494c0e9d08a9b4e4461ece02b8ab5e7a4d
Date: Wed, 22 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784692713
