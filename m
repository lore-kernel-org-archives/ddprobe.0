Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D2B205AD7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743592794; cv=none; b=U1O9SzG61JjW7hOGlokuRv8dkpMAqjjz7ylWwE3p0bOsnWZP9bWOXwjIyvubYYz4Fi8136VDEx1QuBV3C44CxVQ8jPmmMyCKUjLF3YAiddflLwjP0ca5LFsLPJPH3wGEJb2heGen+UQt3MXGup0txV9e0ZzlTobaQcFw8hnDpxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743592794; c=relaxed/simple;
	bh=e23DwwPlwLw0eHzjTBnHPwxOwoSN2C+qzYP92i4fA/Y=;
	h=To:Subject:From:Message-Id:Date; b=bN0XbRsWIisbvdWGrux3DulGKpc2qiY0vDb+HNGbI+kEsb5SiZ5yhIizW+lzGmfJyhqEKJIUIPKlTwnqufHyVwVqo9xnZepHZzG9tkwIhkN3xP4PMhIgtFLLqFZi6H8ELiSGbwf6rjghLoX8yf+TIVXzCsGaGl2/34scy0R6dpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ8q+vVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ8q+vVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB14C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743592793;
	bh=e23DwwPlwLw0eHzjTBnHPwxOwoSN2C+qzYP92i4fA/Y=;
	h=To:Subject:From:Date:From;
	b=oQ8q+vVIi6tcSduSY7NYjV3KIHrTHAH2TAJth+CaUxRrnDbfEoeoF+BSo/uhtVPTO
	 dClRcBrcilxz8Qocjbmv8DRl2PXzZ7o3u8C+I1h1G8UXmKjkNnpeQIDLAnkhekKthB
	 fXUa0ndcRKOxuP9+U0d87naKkoRiLWevhLQqgeKuSZgPGKtwi/OXN+WSRhuQVobcCa
	 0NC4XBiro0Uymc5roFsE5vq1gA37OY/Dk/gI0QBZuCh2vdcoZrZ9cnj15kBS9+pVUX
	 Vl+ePnr/951msFf4O+9jeAKAfIcOlVfDetNyueBnlfJ61OSRya79G1aWppYGxc1iB/
	 xTOrRwWfdAzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8816C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359279367.2262.11260924006611837078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f89781936a35fa495f7a230496fd82e92f7e3620a5dc0921b4e4d479ac464b
Date: Wed, 02 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743592793
