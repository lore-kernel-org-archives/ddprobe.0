Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C42E3B0A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756492195; cv=none; b=iQoLuGfeM9CvqttzqWApTykU1e5FibAb4k6ttgYMMJEULwRZqgbGXZfSjhoZ+5PhHipApTQjoE+w85nV1sNb2VWKut6CH0yQm9nbYL31OmB5uza4UREORqY9uTpRJQ9CkY+EGB9WePwcJKPMEQO84Di31xt7a1tB6OZ6hRSIR9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756492195; c=relaxed/simple;
	bh=twlMNkjYviKg4Ts/blR9XFoPedWZs+R/s8mm7OHTp4g=;
	h=To:Subject:From:Message-Id:Date; b=fkW8Sqp97QhJDiIo4WvMw4gu8UUeOgO8qR5hmeIkcgATXN/M9Tkzc52UvmsSQNql+5b5gA9ruRIF9gwFXDq/FJ1p6kR7mKBkhSkjSHEOt9/HPlstVWX86N+yL4vt4WghD4DLlrahD5pzdvWj8HQgbCkXbFfTdmMztaXYlB/oXk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MohEwnPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MohEwnPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756492193;
	bh=twlMNkjYviKg4Ts/blR9XFoPedWZs+R/s8mm7OHTp4g=;
	h=To:Subject:From:Date:From;
	b=MohEwnPXs5FPzm9/NbRxxt/uyk7sJBb28DOGw9vay6xflec5NN9YflM0FEqEaGjzn
	 maNyNAoEZaMn5MzSaoT7ggKIueL6d7Btu+P2auBgCaU1GVs4nICGTAYZses1glxgyw
	 x7AOZ4L3xIZZDF9ofWpZKFoYX9l2TwvWdyk0FKDbUjCvPae7u7URZk9v7aWT7nRUQE
	 X52JXjpi9vPZOobs5zmaaeRWT9hdndMP+dX9DVn+Osbbcf0RxyocKQkte0O81HfY5S
	 U8UhImmrehYc2zdQSRLscW71gu/RJUkFucXMhUANddxDdjo7PesaqfTLtPCMOSXDYV
	 m2uJ1zLE/tNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C2CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649219357.2526.13450101597582003574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6af042e86a82dd8c8d6f8e650b1056a0fb310f6c2c07975e5216c198ab9ac7
Date: Fri, 29 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756492193
