Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05B711187
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728611153; cv=none; b=oZMxbAsA2cyaFHqJMFhwFsVdbK2Pmj507yKEFWRepoq/YNznfG6hV1ySJd3u9Q/gmyi2jE9mwhUyqdxdb7O1JdONblfhD+VNrDWpKIxz+15YjgzawglJ2vp3V0PnK2xPn8OdlarPR+GUgExpzrwUIH7Q66H/tIJoRBxGS6GBEqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728611153; c=relaxed/simple;
	bh=31dJnhVDPudZ0LNjwHD5/OmCZpz2Lf+taxotZSMG/DU=;
	h=To:Subject:From:Message-Id:Date; b=mFJKm4EDSCNgYE1JhvPyrvZepF110yMk4JFQAnjIFm3+V8THHnV4YrRQBqd8wt2DAxjQuF5ya8Dx3XjgIRccdf/LlY43xiUm8JUboWjOml0h4ij+k+ADE/7J9jlO/x/gx0se9gLJaKrrVWoxVZchnupGHzrKXG3J1H7z1mDOzzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu9rGttw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu9rGttw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B299BC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728611153;
	bh=31dJnhVDPudZ0LNjwHD5/OmCZpz2Lf+taxotZSMG/DU=;
	h=To:Subject:From:Date:From;
	b=Qu9rGttwgVpSWDzybM3I/3HaF6V8/L/KMX446u409/0f6sIXRR6sEqCi6Xl2IcRHr
	 M/lC7/H8hGV5YeXI9CdcbYTFBJNm0RPyay3hfg269givglJQ26fjBZgkA4yxmTvVCw
	 B3GXLmjsyLy5aH1VxBtgHVXH2iEfhtFF0yQE6wL4c1okYPjo+Mou4YepnXusTEaRNm
	 uXxVkdzkp4Ojmf7EIHXXWbM6qsXILrOus9sI8piN/dt7iy2whderm7xW7Yil5Q7eV4
	 ka7RX+cIK3BiCiIA82j0YKXTR7s6/yA0Bp8zIZckZ8drDTj5OUcfrYThkrBnvDK+u5
	 d2o4e16qrx29w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BED9D2444F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861115362.12947.12716442520361600668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218a532e0c1d7061d4bb1c9fe2b722be50e52f5546262c6c3ac97bf7240cbe5e
Date: Fri, 11 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728611153
