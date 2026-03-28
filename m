Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1EA346797
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774730694; cv=none; b=pwm3jh4B7FfA7W4LvB6KDdK5cTm3PsjkbZvjnH0Yhg4e0TGOee6nVv8fXXSHC90WpUpwjCKoYh5k7OUkcmRIiqltysJ7SHpWhsC0+aV7nPEDll2tWLauTpNnXoAB25UftUMGup4vjCvLEwWWAAB9OPjpIiYD5R07s4hiCpfWXgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774730694; c=relaxed/simple;
	bh=6KgiWNjsuZAkLlYO6q8YKNOY/H0GMod47bq46x4+1zk=;
	h=To:Subject:From:Message-Id:Date; b=GLUSd4I6GASIXDTrZhJMOvQoaiqpVbWDOOZPuQ3k3BNrDEPzVaSG6uFRc/88S1jIZ2BMNm8vs1y7429ZEzCe/9cGP0Vr8RgY20EeFDtXCoYMpiPCoW4FarD7GTp9VcZwOJ1lbWhP6CTj8GFXyK42UXZsNX7aie6dItDi19wi2fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuKsShwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuKsShwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2941C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774730693;
	bh=6KgiWNjsuZAkLlYO6q8YKNOY/H0GMod47bq46x4+1zk=;
	h=To:Subject:From:Date:From;
	b=FuKsShwgH98KPeLeYtePuZonl3O2h1gURgEWVlxR7++elNUYang289ZRA8xOdB/61
	 hMF6Etc3s4O6/O+stQL3Vn3nVbfd+ASucIpjICUJGpqzEBYuhpOAYAyATIzRWfd3cJ
	 TJGLbKCmUTmUSLTsz9K47n0p6qhW+Xj2avjepPq3yjHejSpxtL5jomVI6/wLC4Qcd3
	 GvHoypp9WUYshrVFHuKRkSss80c6T+heeDvk7ZG3o1CVxq4uYhll7CRRR6MHncWr6C
	 BHDwn85VfFKtT8LLuI38cXhJkgLmm6MZHN4dmOQxCIdJmu7tmO3igo+x6TZgyPEmZn
	 84eTCgsoTAdzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFB10D1481
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473069358.21094.1572942767930163638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dee98a7dd217d230793043bbb2b6bc2e0cfe1afa0bbe64715dab976b9368720
Date: Sat, 28 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774730693
