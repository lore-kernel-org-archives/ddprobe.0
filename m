Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104B723D7DC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762523394; cv=none; b=JFtObKgqtgjyjXOCqrpFGxfcDjYKYRP5EJcR9NY6/cnnlr4mbo8OwQw+NFtLVz5VWblEMENiSu0BrOOhPY1NKah9ibbgekAnuTUq5fNRFawjT+/w0/cUDqned8V7KMI/md/VjIsRkNObzdBB8N8Av3XfVGg3jeq59ZKto118n1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762523394; c=relaxed/simple;
	bh=7vn7PJTyYlu0zmVfH9ijOu9yiJmb2Loc2W7ICeAOyh8=;
	h=To:Subject:From:Message-Id:Date; b=AsWan5wXv0O8OvOwiQKrs1mtzjz5ZcA7OISu5iiiaMgzw6tQRbCIcef/+XzTJA2VabBNz2wFQciUV66YpjP9lQ1QFrV16nfJbITtjH8avvTxUOfcuBqpxRnfGv1i5KW4eOONcZN4mUxlyK+c+0ZLbiJw34tv3pxe7GSLZEHxEn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3u/pqnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3u/pqnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB51C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762523393;
	bh=7vn7PJTyYlu0zmVfH9ijOu9yiJmb2Loc2W7ICeAOyh8=;
	h=To:Subject:From:Date:From;
	b=l3u/pqnVA2J3qEU56a1NI28dU1LBwdR1GiGj9iiYhN/oe5y9FCfH4EYyT8WOc86mY
	 GV5lKpSFKQQzOo/XYUHIgJvltlHKxw4eCnJBEh8pV/in88YSiq/2YeP2MWh2B/X1dM
	 wHY1df6RWKpPmcEFZgSKkYel2+Yxf54T10FwMvqIIYaRMHqUPibJbPhl2I5nT5Gt5v
	 5+vWH3FkS5apTpSbRo97TvnVS1rZx+c8cbJs12M6QkSTPqG87jnxfOe+jPo1TiU/AG
	 6wgpL+qAkUlsars+sU0Wtekd5Pp8sW+IVOgbzbisgIaNNtz9riL3c/XZBNMJKCOuMR
	 AjTwoiuIwyjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD9CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252339358.12016.4396288112559888960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f308dd0240614192b4f88da88ce68b14950f5e1e1c17fc2d08fc0853543e55
Date: Fri, 07 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762523393
