Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC3D313E07
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782677314; cv=none; b=d0xVkTeg+SkYW/+UuUspByQWiidKea3wkQMKXqGNwKDHiYlmN56X85MfEIZref/rjHkpB1EBEBmKN33kTyJLq4AeUqlo4ZA9PX1pglNTDaGrfgar+1efOjzrjecv7+8zO2JsUr92RD6BlnnS+OJJvO9S2J2ndKxEokK5yCKZxhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782677314; c=relaxed/simple;
	bh=QUIzcAx9HYRK3ZISGBgaRXUeF6mP9prRw5+mIRBRkyw=;
	h=To:Subject:From:Message-Id:Date; b=Ayx7f1o1ffkzSHPf2LcWVuyq65jTA06nGJN6cC+GaUQam7c+wnQRqsMd5FfPclyGgXqWgBly0OIeuwnxocjWVNc4W9QCy4ZSoIsJlvuJ2v10Yfsf8cfxmsLxSI87Dg49UzYbtQXKTAxqwfnXJq/zJ7M/Cke55oFrK067VnqtErE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QInyxZxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QInyxZxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B8AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782677313;
	bh=QUIzcAx9HYRK3ZISGBgaRXUeF6mP9prRw5+mIRBRkyw=;
	h=To:Subject:From:Date:From;
	b=QInyxZxd2kl1MkUw/bAOS0ibwnZZfpEOBQub3hHXy9wZY5jbY10pu+sP+WiYoX9TC
	 nmdUqZPdMQVFuQfjtOxkyC25HdVqP7zvZx2mpC7u2tLwz7Ms6JLqzIttZSCsEFApSj
	 fuViCUPxZTJ9yw8Jk44VIKu4231MWkn/NFq8glQBmwlKk7ySTCZWr7V+ZNGwiIgL7Q
	 yYhQ0ZQpN3mem+6AAjtd7/zH9EEtLCww9JD93uvWcIOvJr9GSB/Zp9yFC0ro4fExJ1
	 YBlTDPAykd0IFpT9PCwEMwyxljxX3YBXerl+qzwklpzRdyVknx31GpZFV5Tyi3GFGV
	 bbjxfCnEo5KSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C074BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267731375.8111.1457776442211822187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d10e9e09c8fbfcff89c182f9bec645222e4131637a4a7bcccf74281abe97b9
Date: Sun, 28 Jun 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782677313
