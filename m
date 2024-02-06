Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB60129A77
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707206896; cv=none; b=pwR0jBbtsJ7vRNyRJ6FBpB2RFiJuXn2ezNx6hyy85OM7cfPKFakYG0VCGk+QfE8QgdlHTJwWm8uZZiaVGHUIE5kh+2hXgIO2oYYo0DeiN5R8f43E+dzTRnJkOESSN2ywqELygzqsxmBLYUFyaIRP35tC9vH5su5Q9LXtbhV5EZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707206896; c=relaxed/simple;
	bh=ZQpvo6aCyMvIjcIVX5Myjl1WmzhLdo+XqsyLQjASrfQ=;
	h=To:Subject:From:Message-Id:Date; b=MoJJao6xgb+8RrPTyXp6eyY9GRvMz0sr9TCQpBLF318eLyD8xCHxFqysXZW2IoXUexab7l3Md8VgRJdM0v7OCAKpcOKSClIMdUt7+C/uSICOksFC2L/0KM/ro9pMNu2eFaa7J+eWGsRTi//Bm73KzeY76k7KPwkzVN7veUW8e3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnZjuB+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnZjuB+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DE0C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707206896;
	bh=ZQpvo6aCyMvIjcIVX5Myjl1WmzhLdo+XqsyLQjASrfQ=;
	h=To:Subject:From:Date:From;
	b=gnZjuB+zzED/9Ntn5TBKKp6TZDrUbyZqf/pTU+b5zSD3uW5VDuXGFjFY+CW/D1QW9
	 0ZZ/MItPLEIdG6niPdHnEl7nBshpNOQUwxZ/FfCG1p2yXbRHFTB2CBuIdht0zrXAJ0
	 75PTo18t1V90PPXmXOcvEFVY3WsM02/wQ0GrHf3uEg7+aFesviAPNJEcdQtgo5Y243
	 NL2rhmgvwCJ7pN8SjeJO94FlidsjF54OMrCeLzc2dZ7uz6sTQNOJJVf0nD6+0ruuPq
	 fmPf7J/SmwsXzF87DedIF4nwK4HXXCs3Ycdn0FCjkHGfVPsLnVQ/KL/kx5OFDWRCgm
	 ZCP3fkH3bTnAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A34C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720689638.17490.4338849284223791067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70fdb8c15ac6ba83c38cf9711933b2da3fac5ebaf125b8c91a6d0c04b737bfd
Date: Tue, 06 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707206896
