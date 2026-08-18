Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF4B3B8BCC
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787043034; cv=none; b=EElXOPMkqLGHZnT9l1ZdFuOtrQL/Xc0UwOkhetqpjU/R8FFd90UgElw7r+Hy2VRYNhC3u/PEdaMHFlmV3DRM66rjycR7AlJmiHQ5dx+xvEGwdXwG6+cbDfymi+WUWmEbWck5azU3itI4OT/BL/5qBburCAa9N6vCYJdAD+jfCNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787043034; c=relaxed/simple;
	bh=PaAUts2wQKC5D6Z1v4LZi0lds7LJgOkGhB/+k9j70F0=;
	h=To:Subject:From:Message-Id:Date; b=oxhNZuAeuPpp2MEK2etllbH7I2tsHd9cy+DARYWWGz/LE4oXSpIR8saKOazQqQN3mdxINVNhx2DQ+DlA/7uAvAAD9OPnA+L90+TLbj1wjXssJmuerp/6QkRDcyMdX0ncm/ZjHGKjZK+jQeiN3CbtLy5kD5JWEw2iyf46hBJO2V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPrMp2yH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPrMp2yH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2763C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787043033;
	bh=PaAUts2wQKC5D6Z1v4LZi0lds7LJgOkGhB/+k9j70F0=;
	h=To:Subject:From:Date:From;
	b=ZPrMp2yHVwivOSck7hCVf0YELoGKHbkfPXa65hXLmVXtDSNTtgRb96YJjVsrMcTAh
	 xa1nI8QXV4DsLPcxvvoQwNyCyBFyDdi2SPfNvR4sCAowH4s6Hh2oUe6tU3ahkSFouj
	 4QDYIMPXQH/FmiZKSA8QeQs70c2debnTW8GCi3B7O4rZHjY95HkwzKMV1fiFRC/EZG
	 ygqUv8oVAXc0Rb5KB7Lsj7I0WIlVda8yEt2j6eCbuF6eiWpvR/KVvZAylrJLk+fwYD
	 Utw5MdYA4Pyt8xkx5kb9VWcijFECJIPs1HI5EjKB1PzIGt0UEwDi4M108l4nskycSv
	 6QY22Pqj/OrnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4EC5DF80
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704303368.21510.6105908460309174808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d786daf514166869270038ad3fe3f884c4914f00d6f058a5d2802b0c81f502
Date: Tue, 18 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787043033
