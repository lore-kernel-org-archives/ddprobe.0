Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35189C120
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748136594; cv=none; b=C7lxduTC1J+kBVEsAotHlet8ogBa1hxgdnDH5X0oSJxyjMgCIw9vSlTlArZQqr+3FyAA4WGuVi7wqsIv3mnpFUhi53YzoWYWVaQieIUd5Vh8QRqq/J1eDbJPYseIKbyaNfBi+8qffl7X5CsCmNZH7EMjFlHYhEWg5U7CrMAFSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748136594; c=relaxed/simple;
	bh=bta+4EJiX/JkVIt9sP0iyR2l/AQEzcSGemXdCd67Z/c=;
	h=To:Subject:From:Message-Id:Date; b=RM4N0R7j/MwrWy+ecvBfcSdHFA8AzEq4L8ZWKzs1i6LEhJfSp+p6HsUMoyJn0L0oqEYjcoZaSJsEwFbZ8622ibLxFRR/Dk/Hx+yrECHsZH/7XYlUaW4hEWdGWmytPRg/ErH9AvNThCc3qFvIUa+eT0PQj5+RMKbZ40P1MN6xjCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQYR+Th8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQYR+Th8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1246C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748136593;
	bh=bta+4EJiX/JkVIt9sP0iyR2l/AQEzcSGemXdCd67Z/c=;
	h=To:Subject:From:Date:From;
	b=eQYR+Th86Pif99zmyUAUYv0bUp0/fAEutIvhKWgc5TYrrubk094E36s90d0Po+mUG
	 UiJPkztnyW1f257fZjvWZcDVRjQepNRtZ1uQD7PpulgIH+mv4RZOSUqmOnkZa+MsW1
	 Yi34dP+YX/+Dy6TJUvgmnlyK1Dmmgze3DwXLZvgvgOg7hqBQzL2eUwwNNEJeOkZAlu
	 SUmmvCc+hK4RY9iR+gEPzueXt3ngn0cBQvFRWWwT2ppWsjyrVGlPyBHUjoCEwYPvD1
	 xsI10cC7zKqkEVkRtjevBNRSmTbwBZStFoYbRDh6Mtf4uF+dFmlNAWqiejVsg8Bub+
	 IiNeCA72SSZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB2C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813659357.22329.18229048106174077223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063f9fb40633b00ce08d617b36191d98bf2e50d45b8f16bf905d7518a766b161
Date: Sun, 25 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748136593
