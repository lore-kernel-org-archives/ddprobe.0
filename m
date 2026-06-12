Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469601C2324
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781248594; cv=none; b=a04NWWS6llLc546LSx0+qg74rERVI4TCHcumWx28z/Qnu5MpOZpfWneVxmx/3VelCHusO88nicraRzMG7pX/5q1Nr4Lzm1UM/V06W/65wLTjFPuOBtolMHzc+YB3/veSBqdhlTjjI45hp25vktuVu8dDgNLhzTtFcoqxBhANjVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781248594; c=relaxed/simple;
	bh=uSQSjUNejAd4kxNnfjuaidq99SO/T2X/FKDpD2t7xX8=;
	h=To:Subject:From:Message-Id:Date; b=YkTjYFJLt1c/f5ZDF/EWfYV4Y4zS1FxXkla27jzG1Y2FOZn5M7nUyA/56GBmixGUdezxR4+MstfuFF+NDjHncKe3SiWVxQoMU+2wojSKtrHjyIIEdOwD3l+MMXjLFM5KHUwjL79pXjNXgFEmpA44tl10Y4fBz4bpnpujFmdJ1KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLGh/+jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLGh/+jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57C9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781248593;
	bh=uSQSjUNejAd4kxNnfjuaidq99SO/T2X/FKDpD2t7xX8=;
	h=To:Subject:From:Date:From;
	b=FLGh/+jnDhHf7nNnLNyFB/SQPTJchgHIuUcFclw6roIib6tuEkTgQPE7lvlXG/B9b
	 7Rl25MK51ThTifXr8R5WD2nozFHciiRpgfl7XzXdgKOyrYo6NHItspzxRzHYi9wTn2
	 XAdMNDsOoTW0pXBrWSW6BrRfJm4brpc+U/Ieq3ayVJCNXgxkJ+QXBB24d4nnYqZf4w
	 Pnew2Sqe0843EaGZ5aHJBkMQYidvzdFtaHZtppfhh2vjFms8ot71WL6RttOrTA19x3
	 UxM9zEYsv/Me8VT/ijtLfVK9GQ6aMwwfsfUHDBARj69h/NSayimg6rFHIKB6B/hvi6
	 ztcrd0Yg+D8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C0ACD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124859373.19658.13600120558688575277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c481c7c64182a1b77ae5831d2a844e40bd55eb6136333ede3df8236cfe1d4e
Date: Fri, 12 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781248593
