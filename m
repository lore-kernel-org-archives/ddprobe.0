Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545C12E5429
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791306034; cv=none; b=GtjlWZj/CrISWojFk5yvh81SiN6aBxCcuZogrU7E5x/v9D50T8zWx41c9tuOhv/MtYXkmNsZl2ZOwlxw/gxU4RZkCZD/7wi4uv+Mz5y0KHYkwM5qofJawK7ZZQoCL8GDUmXVUk8u2Asd6wVD8mv/dmiKf8KtUBvn4rJhHuNLHTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791306034; c=relaxed/simple;
	bh=2CgzmVnsM+mSxs7NoALIr3V8ciDh9qOThkvvH0iPLPI=;
	h=To:Subject:From:Message-Id:Date; b=FqhESU43gy7fel5bAM3UqlWKsZ+9GX7+GSUQVbYHTOktRWkjE2nyidJYVRmIypH3zoR8mUJtaqeP1EPKinzkhqGOHIoty+j1as3GRra3HHCiqL44t9tNkyHLhbPGQmo8zQkLMobQF01KB2GVvmT+TUHwGM6cdEbNBfovR/tIDWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2I7Ftun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2I7Ftun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5AAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791306033;
	bh=2CgzmVnsM+mSxs7NoALIr3V8ciDh9qOThkvvH0iPLPI=;
	h=To:Subject:From:Date:From;
	b=G2I7Ftunl2vOsg9lD33r/D9t/KbckA8ySFIfzGzzmF9Ci1VonKqRVllpiNMddwA/1
	 cZ00/C8jqLB/El+pHbhuwX/gCRvXWtRUbw7O8Ypgxqlysj8xmKPsmE5XgKfu5j9sLw
	 +UEEMUYPFcaf7zpdUsPJfc7UmYpG/fcCQ8NkwnhrQyJUbiZ22uleTvgPhRr4toCzJg
	 D/hIkKcR6AdcINmjwIro0EeAKAZXtlxmCrgAUY4bDsC0oh/JTm5mQxHOBEYuV0Es44
	 4N5msys6sORduXPHn3cyXBx7IQNS1mnqq6KcQBXIExn16Ma7AG3O4UBZYJYiqlAZ+C
	 WBouRrE9u3rfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F48CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130603370.7345.4609540008483515889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd971e330e5f175766f280c67495235744c2045bf1f722490dbc9afb2277f63
Date: Tue, 06 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791306033
