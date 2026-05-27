Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08333C553A
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779885155; cv=none; b=YsAeIohD4Q0cjvUck/UXNV8FFtPTH0vA3kwQ6ZPsRoTbcr7MLBQ5emIubl8ElpTVDlB18kYDB/m6IGy4N/7uFPYXxpLqQOIBE7pdwFUzBSCirCt/eDhu/gEMC3XMSqqr2gYBd1lM0xnER8nnfNucLE3nFhnI9qgKs3tcyVYc25I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779885155; c=relaxed/simple;
	bh=MiH6RZK+T4ZXvU7bCK3/0oPkx6Npp9WfZMkIJNY1Z3c=;
	h=To:Subject:From:Message-Id:Date; b=iupQrIHWu7ZIyqIQ5YuIdwFwudJOJwPLUgyergISqoS+tSpqKA1mKy3AIj5LvakLneS6aVV8nfUYUaMjjM5W2+zDgSvjCgaimuUgpIlaiLhDYe2MkdO9+nZLpx6+ZhxKQxFa0ZFnNNY9zOZ1J1OdF5sRHWzxioUbhqViQfjUfck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=touSc7HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="touSc7HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E42C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779885153;
	bh=MiH6RZK+T4ZXvU7bCK3/0oPkx6Npp9WfZMkIJNY1Z3c=;
	h=To:Subject:From:Date:From;
	b=touSc7HEo9Qw6hTsnf01Wi42XpdzLzSm4MMOCGtxbPh+VLo/WO+S8kT98F1Bmggxp
	 ofs3Lmaz0wk/myxzlssuZuXyiKXTMj+MOlD/hvt96Y+x6knXtWU+iJEcZLjL1b4ghS
	 9iaU1mKjxUkKYCztoPWZqcysH3hs3eA8rji8XR7i3WOdvqcsRE5GRFX2N8bTmBcXTd
	 /eg3z65c/EhNnqxxbC25qXzS2VePHongClCs57ax5uc8MXcU+JDUMKMv/T+tRCIj8u
	 ++im+XEJqUrha7SaR7xATzugFCcdpfIOU8SzAoOlEs4pem8tlQbn93kHrH8VUAXe2Q
	 yDrH1iU5oys9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8757CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988515368.6823.6619680864612710769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cff4dadb6e8e1a8efd1101020279c4c73d03e68da400dcf2f87db6c5091e78
Date: Wed, 27 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779885153
