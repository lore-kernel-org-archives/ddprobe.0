Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190F321D3E8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752080394; cv=none; b=NIk9FLAolTUw4I1CCuVfiJhsl7oBQKr7QyZM6sz9AMn95Tk26VhmCjBt+J9qnLJKnHzVVtrenlpsHbvD7+h+Wwu8MnYghlJkVvNP71RAhpkKsJ1z7FE2wNx1ZGLgl5W9Sli7zSTq5sTmAt5ndCQ83LpfsPncUAgA8h+rS3ZGT98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752080394; c=relaxed/simple;
	bh=47RXPXkxB8QWewFBp6gEZb3b0zd0m1QlvecypIaWZw4=;
	h=To:Subject:From:Message-Id:Date; b=BZaoDFYyWUwQO9u57AYoRCs6aR5vkz+KaYa20rtE0knSdcsfg6eLdoTiyXM3hDqaFhujc1t6g1TqC5otZcsJRwgQVaNY3LH3s/Nl02+9c3hp6ZCeF9HNp9CK0N3Yh0Ic/IdAMZQkJ6Y/SOxUGY1fXSQqdhu7IgAFnFasPwStGx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGc9BDR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGc9BDR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E57BC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752080393;
	bh=47RXPXkxB8QWewFBp6gEZb3b0zd0m1QlvecypIaWZw4=;
	h=To:Subject:From:Date:From;
	b=kGc9BDR64+x0cNx9007UwpoLs73+9UYVVlCjAgKpe5yNqA6B7fgN6dSJONHPHC4sa
	 BCXHuSkbb98XrFfbCXlhWt2wUoDFwmOrDLfoFAwmmZC7e1GPdIdieVAbXL7p3lBS1T
	 g6AqZUoGaZNjavwwTLQ0yWfp+npIu7S7dNBFZV4U8T+Wmo8O/eKi8QLGtiN6TkKNcf
	 9iGiGTLL8ofmbDqxGoURebRCHX1rT73MN6tllEZlHARvu1+Kr/ulwzi49vh0+vD5c8
	 wd4rvsPo/IABkzlGgqzUyhqQAGXCA2NkHjPdVRizKSnqnnc1FqKPwwJZQXDEANocc7
	 S4GCHXc8VvknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E815C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208039357.5451.10046379156087413516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be75c53b63fd0fdac76482dc70c9c38fa53cc0d681f82785102780e7a352809f
Date: Wed, 09 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752080393
