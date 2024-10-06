Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91B250F8
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728200754; cv=none; b=S0xVjy6oS7wcyG9b3nsQP5Ifgf8mBY6mi3vGIKB36I9ogQxyuZTbHYZ1xQ7FYg5oi/m9fSPZWP6U8eFDpqTA2jXVdI5WJASGtyBeXhJ8s7MVAuV9Nj4rWF2mAz7jHjn7+YRM5FMX2w61NI6C4Effi+kxMka6Fbo8gaWVL57Q0qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728200754; c=relaxed/simple;
	bh=nHky9sj47y4lS4bt86qw6NW6fXTSL9q9zJolJE9XNFo=;
	h=To:Subject:From:Message-Id:Date; b=m8ifozBOvoU7zmUrQIEkLDhXG96EZdQHqeGsooMqtZz0tf6sd07XHyBKYmNKeUNLx0i96LhqTmgGd4REGl4gZaeYNwkR3wbvQFxAFBUR3QwpNiqiKyIFlDz3nT+C9Wq/pjw0bqXFfpF/URgIJNxfFInAvf8KSJr6GWv69QnT0lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbIUTwGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbIUTwGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2EBC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728200753;
	bh=nHky9sj47y4lS4bt86qw6NW6fXTSL9q9zJolJE9XNFo=;
	h=To:Subject:From:Date:From;
	b=gbIUTwGA275L6eR2OOtfFhA1tTV75ErFMMdiJWCW+gmj7NlAQzhizCF0xj0F4Q/GN
	 dCXOH9luHX7i1BfmPBVtmIwURF4ek3At3e1OIkH4X7RJEODzXwkjDDrIGCBSSOVlpt
	 9Pt21DKKnYVuFGENTzx3Fo1bXiTIWMqnm0QT8NeRdrN6aLN74grT9tS1QnyoWxNsp6
	 Cf3fLt4OdN1Y9NuIp7Vatmz04t900nl7RyQFcd2GYq5O0kgcp6HTBCmAGzTR9nHd5Y
	 9rntbrd8MN9jgrLkN/ytkOPoIlHxVB1ofkmoM0zSKPSJZjQXZ5EbsQxsWyB8f+DpQA
	 WEmU4bp+zpaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97451CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820075361.9826.2750720879776315252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b24a40239ad44ba512db76a32ae064e63bf1f170a8a188ce9f9a7673999e00
Date: Sun, 06 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728200753
