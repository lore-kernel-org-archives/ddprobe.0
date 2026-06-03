Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1704D3F54D4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780514074; cv=none; b=SJx8kQH9Dky8lpAAxN66Wr0nonCwZgeNvhZYORbi8HQvmx7xaXMi31DHkEiTHtJZk+kcbzsGoZmFUajgUtawPGGa3jWw+KnGzGu/dSJBxsZnkBsc77xp7g15nhcLnE/Tx57WH+8D4c4cTRHMgMlcok0pmm9tE5QtGIoDPG00NOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780514074; c=relaxed/simple;
	bh=5H0DzNOqUiI4HmPiKrlYbZ38DpEL/61+ym8d9a/3yZE=;
	h=To:Subject:From:Message-Id:Date; b=uF9op1U1ZIfO+h9+CKyJWnls/LWbzWKjaIg/6w+1xDB0vrIJ7w1S66r4r3HrXqN+FkZrqiFNAMBpEWJ1dsbCWQQPyCuDdIUgK0CQ0ZupNv1tXb9Lqrf3ntLhODSSr56dpUsiCzLhrbIvi1Ul6dgS5UCSQgHg/AoWcFjzpo8r4B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0Q4J3QA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0Q4J3QA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35DFC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780514073;
	bh=5H0DzNOqUiI4HmPiKrlYbZ38DpEL/61+ym8d9a/3yZE=;
	h=To:Subject:From:Date:From;
	b=i0Q4J3QAepCh9h1V0bjBUL5uqLbbyQOL52L2Fc5E9IahaezHdcpgctivEOzKnwyvn
	 p38pgYpRe8IOz7K+cDsM8uuHMgqamzxb0D7bo2RI0R5qwUuCgaKZKSdxdYUvtaccai
	 8nxeYb+UzTgVIOcLEaCj3iPFv/gYvq99ZSt6FuTCEsu0caD0ktyE37cR6w3pbflXGd
	 ZGiAfLVBgIgu1QckmXXKm9gTV9tyKVoWfJKnaJKv4GvSQcY7Z9YDJda1yoYHJF4e/Y
	 DAWe1iEbxK5ZHTdIso1bGBQ0GfWuw33jMni5sIh1aV559A09In2S/WZU4A3iMQpvoQ
	 pg/KTZ2j1RKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F52CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051407368.22529.11721333848873944964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2341ac9d14c9154c5065c360f0d961b40c56fd49bb688b45f9a0dbdf47f2f4aa
Date: Wed, 03 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780514073
