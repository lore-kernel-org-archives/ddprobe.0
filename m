Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5918F944E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735738554; cv=none; b=G8CJtPbq2SZEWfQIrnH2HfhaEp12+Zsda+ijySksJgdcpAN7XjtUgC3WCbx/slz4hvUcpTU4ERPAog7LAexwJaV8htaaREFHF9Nmizueo5QTI/JaJU7vexFOlwjRUO+k46Mbv/eKySTTX3bVuUEo0HZs2QynpBb/sTzj/UEInEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735738554; c=relaxed/simple;
	bh=TpzoZS5ag23PfCrExTAOofNAkReosWa+XoufUobkv00=;
	h=To:Subject:From:Message-Id:Date; b=WK3l1QIuDQbOK/xqsDNNCHHfQQcEDnZirJNZ0TtzGbIqC/clTICyW0iz2FQDoTzl8lM3l0Z/IBbqXKG8qsDEWYTwi2c7M7wvt9nqynw9thvcl05aoaMoU4PQhvs7X1IDjTaIgF1ALlZYi860cGU5imZ9i1UZ/Ue3vjH2iDd/SZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV5MKMk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV5MKMk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA489C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735738553;
	bh=TpzoZS5ag23PfCrExTAOofNAkReosWa+XoufUobkv00=;
	h=To:Subject:From:Date:From;
	b=HV5MKMk8CIJ64YuSF/CDCmRijvDkcI46DnnTSYTscuiw7BsWLw1NkUs5pK3uI3Y1h
	 vVmEPHWSBbFo+M06mVduqJtBoZhJvsSrxnPLee1O9mZGqdc+x21K9Scv3w0diKUH6S
	 +bo1YdYSOcclEtGjX9t6Az9LomUSjz20zfuNgeXzPGrS24NkQYVcRhhUATzyjqUl7L
	 uljiPelHVoj7bhYc3GxQq9Cfircg0liA8DQbteigVzzmBcYeluUPWzYLQhqgJQiKBJ
	 usYiC7tBYsyZtxYMOXeXZ6QNHIhIrwLGCEjEhZvEIAM7eU4Lw1hzUmBBfQ/wypgC7L
	 qq41Wv/o/P9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961AAE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573855358.12484.14641026263599103942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c015494d234b296534211285a23efc10a155db18ef53f6ca75daa2d0f69b110
Date: Wed, 01 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735738553
