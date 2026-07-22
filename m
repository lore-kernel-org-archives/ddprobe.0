Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC2C364029
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784732914; cv=none; b=jUh8iv9h/TDi7Uk7VURh4VXqKWse4sthRSK76r3bPu9k/6S88sMx+VSbvnRTB0cOmNv8pZz5dZk8Wn5hM+6RUSoNBqTvztJcpPyOVbsT9I1eDMPCpHkq4RRJGmt4atMMXQCeDvDBIGtu+GmbgHFZggqSy0fWdscKUsD/JwlPwbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784732914; c=relaxed/simple;
	bh=oEHd6XKTsUSuZs4aolY8A3dfVSuzAgo8Ik0dVb5Ijcg=;
	h=To:Subject:From:Message-Id:Date; b=nSpgruvEkStQEIJOGRCZ8IO45+RMjLFAONZJOc9xW8jB4zC93WXo1DtR1RPcRLfziVQSddbKIHHI/uf+Ogr4zLrczeeGU5+7qtfz0g5VFDurbq/7syhe+m6hUijYrqxYU4sy3CGmjxLoggAA4ueICZxduXFJIFtBYDFRJH7iKhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvoChDam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvoChDam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A9A9C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784732914;
	bh=oEHd6XKTsUSuZs4aolY8A3dfVSuzAgo8Ik0dVb5Ijcg=;
	h=To:Subject:From:Date:From;
	b=cvoChDamVhTWUwLOJtRevcLwb9zbHdUvQb/6y6S210/jijysy1YlIrwC9K7GxlhSG
	 mi26r+ZlfUwBaVcMJt2Lh7u0nlJ4NH2HM9sqEr174ML8/OG4BkrGnNp0+WQH5oypq7
	 0t90/8DYzaiBeNbMFUM9Z8HnHNsArwamukkbjAHcuc0f+zS/CyDpL2QFsX6oCIoPUU
	 +zygYQSQXOAZfovUVQ8LfBOkfmyQ0h83lsCjl8ngp5jabfTj4GJJ2XDahJcueqwOBq
	 oSzIcET9esilXcuupA6xee2GwseU3GFCNe5ulKFPsETYdxUukMfj7kdlXl/3DAPKUV
	 BfitbCBk56Pbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E215C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:08:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473291402.18847.15490027245849825892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f613f8d4b94819f58c31459f6347bbd49e971720416ee738d157667c27c0f2
Date: Wed, 22 Jul 2026 15:08:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784732914
