Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ADE347B4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760153994; cv=none; b=EXqAoZsekobWG9kBO9SSNDb4oE/JRv1DpRA8dgHXfCnNwGyLRRc9urcndttL4DfhbYbD5QfNX6DZc3pj+ePUMMbVUZ4ZqlqBopZggmvNG+iDtBtHtYnWfnfa9nN3NXvHZ4oCzryEDIC7A3nSu+mnqUO52MVTAT3sXxalhhKpxPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760153994; c=relaxed/simple;
	bh=8a+TCG1Tkz9McBCKbBd+0WJz1WQurs/fZkq4x/1T0o4=;
	h=To:Subject:From:Message-Id:Date; b=pGyrWAYOiHpWIQG1T2Anyp9FzxFKa698ZzXsGXyPCQcPr30Wz1MxCd0F8OiZcZtDLDZBAR+YZ/7vQJ4aW3p5TXjE5jui4nqyMk6xyErchJPhGvU1rz6772TcSvBLqTf95xqiI4oAcEu3YyJcuWSvNUOGjgE4DBJ06QnjOtgx3sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSMYpK3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSMYpK3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760153993;
	bh=8a+TCG1Tkz9McBCKbBd+0WJz1WQurs/fZkq4x/1T0o4=;
	h=To:Subject:From:Date:From;
	b=eSMYpK3nVy48vhK+B4C0ehIEHnyTeo2EPhs2kX46Ualu5fHDWxtgHqGbFmpmOIBbb
	 gDSSL7lE99q7U6dtdtkVbC15S9/3fxuNRWfL7b7jsY3OhH9AZn3VRZscVVEz9I0mwo
	 ndP+jYqkY1iNp4/0YZB+Ok6Oy++zOblNiyOTcPaAABve7qW+b0P8wqHEKC2ClVn9XC
	 QRP3PhSvXuIc9PCsIn8rvFvv6xlF4Z9wJht0gJ9zPmSguomEjFNCWOvaN6r2vWERbn
	 roiT5ZqbmtpUkEWmzxpvrVbOl1Ma18jBUmukZpDxs17nC70jzurGSyXhJiG//sojzV
	 ZEifMdQPhv18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAE6CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015399357.28356.4247222561184813783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d34dd5f3afbb04aa58b867881d6c468dcc89b1067fb76098c54b9a61bfd7fb6
Date: Sat, 11 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760153993
