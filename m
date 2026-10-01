Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E81370AE4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790835034; cv=none; b=Ajo9qBLju7A5Vaye8YpiPIH9uHD9I5oJBzElP9uDTElwRf/+zUHIvrWiKTU1GqwnJAfCNB0UOABfAc5BS80IRaXquhnzP5X6FZ6yZORcbm/52AdsarPvsiHyzRi/amwbn3MeRzGobrubY9cFNNThOKB9cjqtCp0A4uk1RqiqJHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790835034; c=relaxed/simple;
	bh=IWTIwSb4BgbKUNXm3ZFy4IpDIE5pduEvErCQHUYdT88=;
	h=To:Subject:From:Message-Id:Date; b=FihsKaEoQd2lcmICz9UQ0Sdcv8m1uAkTy76FB5txLidNw/0YLYxIzKVepi7rkgKyEz1Rmfty8gAkxXZOiugQHGih7nOBAQYH02ZThMMGHdeToNshEm7hjGd9cnm6TYoaogOBmi2ATJfrMqWJvyIU5Pe80dV2aOER5AV5zlFvFbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNlsY/yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNlsY/yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12BEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790835033;
	bh=IWTIwSb4BgbKUNXm3ZFy4IpDIE5pduEvErCQHUYdT88=;
	h=To:Subject:From:Date:From;
	b=XNlsY/yJmlJgx3JaJYulHi3J3y9+OSKTMV9BfNrJ7zLq180/uD/wegCkEc63oNr74
	 LMnpmXGWHeBE0MDBG5Ovmzc+CUrLQQww1SiZfCJ5TK/myM8oE89tp19g5UQto7PHGO
	 QQ7gE1V5yPjLsd+eIKmUTHto4K2H9bkVu1DmmMOWiI+ui31eAps6IWKNTDmgs2spOK
	 5JqZBI9Ulw/W6EytBVVkLN3rTYkJu/aQu6UU3z4+IBIxOGkuLSEBLhUfLhOvZTzDQ0
	 XZPoTYYt7tUyYf8YwBNXLXzrooJIFKl4Km3Tj9cUd+F5X09mEV+LYrZXLJi4HXeI8Q
	 R7SHskmXRsjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD09CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083503369.974.3263251815899690418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f55e30a8032dc3c8ec0ce1cf489abb56b25f010be5decc9e0a70ec72e52d83
Date: Thu, 01 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790835033
