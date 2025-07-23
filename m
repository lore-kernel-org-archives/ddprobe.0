Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F5819C54E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753289994; cv=none; b=JpjWjWPW3QmO3r0iqBL/cQBaCjpRq+3btSBH6mFmfhCX55MIfJcwjiRxFkqmzliiPChzcjr13eKf0pqpe1Z0pAa0JRwE6aEwLoJWKirXpsp8UvoNgDF9KE0hzauZtoi9oRMdtbmT6wsJPcrT07TGDY6MRWYYYdcZMAwWrP6MHik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753289994; c=relaxed/simple;
	bh=h8pY2Cgmmm863uw5jfPJ6U+uTosyACLbusgk7V6LlNs=;
	h=To:Subject:From:Message-Id:Date; b=H8oOZnqwZ2TZJlK+AMMIBtvPlzeBSx4wjv63/WGfDVTsi0Jjj35ZzGzc/a49w7265AwkuYeJWl313JNMMIrt1p54pF96lPoZpmmVCUwQbqa7yCnEa7bo8gKqDUZH38MG7DgOGJeJ52CosMQrPXYjXeWCL3E1ZtLQcMSgI7XNNn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8VibEA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8VibEA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1691C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753289993;
	bh=h8pY2Cgmmm863uw5jfPJ6U+uTosyACLbusgk7V6LlNs=;
	h=To:Subject:From:Date:From;
	b=s8VibEA3QdmPSgVEqa528no0lV4U8iMD/y91suRsr3V2GFN0BcJOdyZbhK2tb86RY
	 I6S2LYIkGn3naMXf/0ncmaCutBJuDpHz8hFzv41qnNHFHLSYUo2FPX04Pdw8ZjOIt0
	 a49sW0dsZ0KzZ8dfO6amGfL9wxsaPVHN6ClEyG65Q9p+ye+LkIWncyIAYqGq6Njl6L
	 Gfi+OJmzlUt8PLGBWVr9RiNbgbBY7KWs07cxNuGfqaPsFOkeM1BrQn1714yKvlferE
	 Nz2h2i2F9n8ksFuD53usEBHBHaT6l7+Mqwqmqgpq+XtuABNus0WKIiF7Ymgo7StmV8
	 4Q69FsRSeeQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED05C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328999357.26268.12870607708706391656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c126e4ddd048d85dbfce58c3557ec3f577e8d006dc8c5c85d85f0e1a1a2adab8
Date: Wed, 23 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753289993
