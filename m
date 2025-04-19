Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371A15CB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745030394; cv=none; b=GNlsfBBkdDpG0BNLEep+PPhhPhUYGYhi6a2XPK9rUy2TTc0l2DWa9XVDExGqT+9BrOCENmCvQotfrVXDMRbogAy7VBjTvzww+pPmw5hqrmjPg+Z+LKTxNx+JZzGWxA/krVB1lHVLhL47BQoG0BFzN3e/jt+nL04pi12FaQQla8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745030394; c=relaxed/simple;
	bh=YNRt8h9fLExRV1lLgFDkE0fg8yFxShqJd+GDeFoawnM=;
	h=To:Subject:From:Message-Id:Date; b=mm0v/13k8IltH6eG1QTjYTZxuAa9EtlxCqzsu0xyVvHsZ3Ey/npIrZr+La1c6YgxlPl/Tlv+THzCxZFEMUlgcFF/yDrr03fItYqErqYGRIl0HYwEzQdIYiVWMeySKQuCJPOVIguqK8/RdR9IFV/MLYErJN3Im68ESd7xByp7Ay8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKE6I6Se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKE6I6Se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE17AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745030393;
	bh=YNRt8h9fLExRV1lLgFDkE0fg8yFxShqJd+GDeFoawnM=;
	h=To:Subject:From:Date:From;
	b=lKE6I6SepkGiJtEfmAVfw+nPpMe0GetLzDorCQ2RfjFHIIRy23UczRM+hztjYxqHn
	 AFvnDOuuYflBq6crB+K7xD4w6Gcx42BH2mqd9K35miQtNEUL3h1MY8SUWqsbd06VQ/
	 OY4c2sp3LhPK6iQZi7DdNiEsNqV17l6YP9//XlMqHe8yjHp1Q2XCoWZtny/HwY/mHD
	 an7lTd9/kyEjzyzvFmQ5yKQJj+LV45HeaZvZvdKz8G+b9afNFhtgzJCoIAI+vXBLjL
	 3a3HQ2GSMxaLTuwtvY6HuX6GlcYkNl6fHmZ5XQ/OlvLYLeK16HG0Q4SMWHJcGF7/P8
	 pf6v28ose642A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C3C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503039359.1755.779727529670398903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b293850c0afe91297306e73ca67af06c6245814da654975a28ba2d4917e9e1fb
Date: Sat, 19 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745030393
