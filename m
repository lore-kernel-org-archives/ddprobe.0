Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8666B3A7839
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784809234; cv=none; b=rNKqUJIJmY87yXBWyLSIMe6X6A8uSHoJdzGLpaMnQC0imypmB9hrWELzRJQFtXoSe+XVUGvshf4mOr2HNSaTgHgpKTpTvOaxNKfSXUo6jFixMDSlgudjPR5AkLCrn36Z+pPOSOQKT71Jfu+pGOboM76wXEj8Hb/w0lC7dBGlOXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784809234; c=relaxed/simple;
	bh=wW27+uyKp8GJBFJ4Yla7cwTTapa5k/o/2VbjV1dWpL4=;
	h=To:Subject:From:Message-Id:Date; b=ExjPIPhg2i3GwRenIOpQKQTlXsfc7qZEtgehZ1gIbJfvgdqh2KP4QyUakm+3lhpnpEBK29H/NtpILV/GoFy8C6XE5c7Ae+pI7NOr6bGSSL2RMFHbPsyNZUKSsPocJi1+eHJEkVh8AsPDnv0GNTcJQlN5nX77E1nq+hMSfj1rKOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD9gwRh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD9gwRh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EF49C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784809234;
	bh=wW27+uyKp8GJBFJ4Yla7cwTTapa5k/o/2VbjV1dWpL4=;
	h=To:Subject:From:Date:From;
	b=CD9gwRh7Hb8belWB4yawVscKiR7OIGF6ZAPBeVpfaMEAJVJK563WKgaAUl1AAzyvL
	 cd56qaapY3qug20GJU8M9RuUgjJNg1Rs+T6rltbnxLGIyGW+eeFqZVsE38xiAt5Qev
	 vISfp1tKjegy7CSHk0kMv9A5W/08H4ILQQDJUaeHs3PP0nZZWddy2DpCsg2Xn8l08l
	 1DHHD4ogF36TsL6CHqvxPhTxqt9e4E2Cju+Md0CzzGpugae4aBna8T8T3fvmYYkZiC
	 eoXyDp5wIIKP0lJyuGESEkrfWxLiPM5UWLrmFY2aU/c0RhgJFzTEmG3WEP4JcxZfwv
	 SQfs+jbSbbGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB8C3C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480923371.10033.16012962662000642779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ee214180a46bc1dd92a08e5c03b75660ad2ec92717012a52d0badcd9471d17
Date: Thu, 23 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784809233
