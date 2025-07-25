Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EB627470
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753481993; cv=none; b=htBCF2HpKq8dP94nlglRpBByiWc/8AB1y+uYINb3CpIwOAA/cs1XQ9WONp89RZ/RU+lJY9SIMm4jABsiIbyFe80sfXhhjkH2cjv4LRNdlgUtG7O9M0RJ4lHrWrH51XeQhhLRJrpxGyon6Xxm+DF+aKyaOIZ7boiCq6S6V2k7n1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753481993; c=relaxed/simple;
	bh=vdrsXBn/3Ud/oXpDVZ0YZZY9+SkWD2hdBnp7a+7QU48=;
	h=To:Subject:From:Message-Id:Date; b=kSjyP88F+obQnddQJJYSt9D4KyoJkJM5TJskPUZpRw/i4zOiL6N5MYoQgOCidPfvhWtkMNxL3OaSWrMX42mc7Jxs6Z2D3DY1IKXngqHwYSGmC4LnE5YuEZhFzvAej5QGHlmollQpMAe+P8cj6wl4A1tfC1vKI0pdpzTUOdMGTHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSyALJv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSyALJv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A45C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753481993;
	bh=vdrsXBn/3Ud/oXpDVZ0YZZY9+SkWD2hdBnp7a+7QU48=;
	h=To:Subject:From:Date:From;
	b=RSyALJv4RTroM+X8ClCJui+wj7urHFlINJxtgc6XqhFkGJOdGLVNG5RFMYTKmQdif
	 fO8af8iVkYtp7PYomqJlHi3zwEvK5z6TJqSC7iHcnusNR3WE+ZZJzwFwOZM+h7ZRJc
	 3jd2NE7IkI9mxmp6N+WBT1JGVIF6LqfcwHKIxOS1lvkVXLqcWXdJVTjvkxL/Jrk77h
	 ZIsw4TtIVkXrLHjgFsruh5EGVriWHf/VZFVyUDlt+tw/CWijDoBprc/UzQna3CdHNc
	 7FzCJPe/BxUTzypVORnVm/cHRDlV7G3Bv0l/KP9a/t9Vsa82I9BAydMPIfbPRgxsEH
	 B6Bec5KWfKDng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90818C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348199358.1342.3433248612132533189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244ca19d5eb19a43061a8926778895afbfba263fecf51301a363dd14063c2898
Date: Fri, 25 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753481993
