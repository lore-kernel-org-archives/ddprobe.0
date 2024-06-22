Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5B514D428
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719049343; cv=none; b=ryrlkW/BbFBbgb7mCATa83UuRZ4jlGxY+Mh8++cZPIZ3uKi+lUDQwJrudtE6R9JAJK33izUw3tTy+HwqV8rDqSv9LWGonNQmHylzlt1JXQ/p9UjZsHcyR7EXONDbDEzf+11qY84BdNUu/62VLPIj1x4Z1rmWcFVHddwnFniVCys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719049343; c=relaxed/simple;
	bh=IvtAgdStOunZcNS5EVkHh7eAW2/Adu/Q1EWKzQRv2Zk=;
	h=To:Subject:From:Message-Id:Date; b=FvAhcWnFSub/xzbPepbU/2i8Kr7F1OcKisE4QMBskLRcpB+xNBKm5zttXfyC7bVIGy0vIPuCCSPG8pABl8goMVQKu/Ds/w55jxYnVyS3u804OxPatNmkyg7ZGdzKixtuLZUC+9MkUH7Wrv4IkF3yf/PbMwK/K0AdqeDLKUIzI98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6ObaZLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6ObaZLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6B4C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719049343;
	bh=IvtAgdStOunZcNS5EVkHh7eAW2/Adu/Q1EWKzQRv2Zk=;
	h=To:Subject:From:Date:From;
	b=W6ObaZLRinTuJ9VAnIO16pj+JCpOLYww0jGfhZMW0E49Ok44acW/sJLRJbQZczZRX
	 a58jrFVFKyEX7vlBeUk1ZzG0dPmoHhlZr88t/eM+O/AEWekIweF1jJNPpN61Db9KWG
	 gbEuzE2D/p1iMGVtb4x5coAwcipzZP3WCjD3bN1BsGX4+wzqyFRkrHYeiBxoxhdg+N
	 S0J2vwMyLxWtl6RBCtIAEDE3sYej/R4MYv72xQhWcuG847hyTFFTaKhBrMJQqhBYHn
	 /8g6XPR2d3HmJN5hpcdc/b+Y5BQxes1Al6XHm0oF8KdEo7uNOC8uT1FQQaFEyMTo5L
	 T1dAZePIG5Usg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D625BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904934284.28136.10256048299162763570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcfc6d80793312d91a9b470211b0677a60e1f617870177cd4fd53ef7e9ded18
Date: Sat, 22 Jun 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719049342
