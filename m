Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C081BF20
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713737423; cv=none; b=PrP75vls56juRSfT9q+Vn/TsG54OfUmf0FSa7ZaIwe4Hsv9EYff2VxPBRlM9T5krCYipjT7TIfg5/Tl4OfD8NpqeNZgq8wLDVMDzDO+tMN6WQSwsAfiY3UXwGkGEP+m7wvdq8hkK+vsv+lGoHZ2PdSCnUldmUEvPQEDmZt6JyMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713737423; c=relaxed/simple;
	bh=rLjMhemOOjhNBKY+7+/BUrQK7MIukWZTAO7vAGlDFl4=;
	h=To:Subject:From:Message-Id:Date; b=fiAfTtGK1V4vvREyA0oHGupxDw5JMi4G9XO7I10pV9ADO5P2DaxE6pwzYQszX5khvT8Q2mEqtJZEd+dzGWn08sNuCqKUs48EWExpYZVVEYcX36iqtQkp7VnKpADhTjkP0k/bie8hfhxhgr7BORtjec04btHaXfnaECZSG1PBYrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLXUz5jP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLXUz5jP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86EDC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713737422;
	bh=rLjMhemOOjhNBKY+7+/BUrQK7MIukWZTAO7vAGlDFl4=;
	h=To:Subject:From:Date:From;
	b=KLXUz5jPd2GSnG7qbjFWzEaOkJ4G7LAFAZ/g/9Rgdtj2PyfLCPy+VzIeblZvF+OJH
	 XSumesD9ZmVAnCP3MiNnWeeEYgC9oyhLuZxKbIWqJ3bzuLiLWH/kopgl6EM0VYy+jX
	 GzCF1g6BROuUFn74bYPdk/+sRG9chYacxz5O9y2j17MtsWEc25l6uCvS/7txKE5W+v
	 BpY32Q4rwZY5rMybbH/e//CI7NW7G1al8u45rS76uutPUs0WyAPif8QDYQrH9uG8Dr
	 lrQtnZug/B0W0qrNaF0o6s/g3R1uD6asQYx4pFnyFXeZlBT3yqDV8SKRAaq/f42YY+
	 mdh21ehV8f3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8E2C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373742276.4774.8967794709567241949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0709900c294001d7ca1bedd0863fc3bd20880c3a6925e6d857cbdfaae0dc61f8
Date: Sun, 21 Apr 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713737422
