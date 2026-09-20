Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CBF547066
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789945234; cv=none; b=I8qrdtGCy8s8Rl7z80q6LGmhDZqfbUqVfP5wdBUToemXAjq/rkci1of9+1gEHev547GuyJpCUA5+oUCeUs8pFVVjh92doRhlM5wLT+xwdGKjpHZnPtRSQsneibKWg6zylFwwHFYnQiLcKxMbnb45o25e0loKw0pu9xFOYCYYbsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789945234; c=relaxed/simple;
	bh=uAZWlu01d7Xl2wO+KK09PKltFVYx0a+ofYL1THjMFoE=;
	h=To:Subject:From:Message-Id:Date; b=BM3XAPrm+djx+aVW2r2+IhcpZDQIQlXQQSm69Xw0HGx/kDV9bvCte/TKlIS56x94VZoliQfN7JwCi+hhVBDbbXTLoeCgKdkYH6LORQdgTICaW2CX7eCP/heVPbXaHZi/qT2PI4SzInt6vDEa+KD4E8+npiTqYIEo0W8VY/aj7u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkRpdYRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkRpdYRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1839C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789945233;
	bh=uAZWlu01d7Xl2wO+KK09PKltFVYx0a+ofYL1THjMFoE=;
	h=To:Subject:From:Date:From;
	b=CkRpdYRJhEcUQAfdEy7Nl5zNBe/+A/CitsirecowAbHs2AcKnmAPgJ1Z+B5gTCO4+
	 MHZR2sfZwuCoI52EaHCUdok5Etqc5jUU9ooiWEeJ9pGo8VsxgAAvtRZCq5q4XSq2f0
	 WNGc+3+geIW92bSP7Oc/4UpqJYqDMB+M3+ixbhlAx77P+gnCG7L/faU8kGFx3Nxc7A
	 Ft4BxhU3Q1joXCnhFg2LZUS0TYkDB57S4boW2CGAJknpfY+vSC/EeBjGpakNDkK6vp
	 MHcMgx0WhqgTR5m7LwTVTSdzgd0iEc0iLfiRoRbVKLY0QWAUtAqs9C3KQHNSyt3xK1
	 8GWilPbQbNyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD761C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994523368.18170.7046654346743381679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27981e2d71c9f94fa4ad92e6269752246b52adfdf19cd352f72e8fe5c472e113
Date: Sun, 20 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789945233
