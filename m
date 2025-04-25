Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753D23DEB6
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745579394; cv=none; b=r2CE9OV9QlCSh3iKKaMk7lFT+dROGMkh1qs9QQyT33WYot1vDQEIwu5OjbDsaX+00wMXPYnM+Ov4qhIuG57T9MOfd0NZCz2lJ8Gw3JuL3th41U4lQLOwv1cmahwUrrOxsMZr+lkkAsj/HhtJ9sLPIXiMff0uDVg4G8VhGbVv5Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745579394; c=relaxed/simple;
	bh=ZnlPnRASjt9zA79TNeDv8ef8LfnpNYxoqKjNqfZ/07Q=;
	h=To:Subject:From:Message-Id:Date; b=cUVvuMPRdcPWOMGogTTXtvVDTLX7qN2OLeuP+x16/pr721Ge6RI6ZzAo65whglb5t/Ik0ID5oJTen5aKw+tyt6nsRP/cbRoFi6xsofpSreHFIgSN8QPWRk5HFv5o9uMYhwW7YpZSvtb+s0QsqoKQtZOAflSzyi03UpG5bnq9rSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkHY+c5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkHY+c5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745579393;
	bh=ZnlPnRASjt9zA79TNeDv8ef8LfnpNYxoqKjNqfZ/07Q=;
	h=To:Subject:From:Date:From;
	b=ZkHY+c5DllC/xmVaYbcoKYRH0jDeCG+C8dFsEXCL64d3iqwu8V7JaMOElkGPJj7fC
	 +tB8HowGNfUQmA6wM8AnC4waLMJekjQ0GDsF8bWyISrnm7L2YK2XcaAWLoA9yfdmzm
	 JfcLKBlZoe2+JU1NbR0NTGP7KSct2XEesYo0uESIKXqmCgD5mgf5xG/eeG488VnbvM
	 O+Poh5/Gxeg2RNae93tP6D0nLK1gA9D3MJoDAe+j0zM5rBkrGW4jaR4v126pY/ZqkZ
	 Q6UEq+vWgeuG73yQ2bVbEoByGrVlbkbt+d8UZWyyPioEyYUin6eo0n09SuR/K1v4I+
	 CsUlFfCi0yb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557939357.12915.17899325600929727712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbfdeaa1e750920b0e71a4b77352dab29efc9f2c1fd8fa272bd5a9787debb0a
Date: Fri, 25 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745579393
