Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DB8BE5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721548554; cv=none; b=lYk8igh5K/5s9B4JBuu//OfVD9fnbuYXSAvNNTK/9XUQYh5NvfgFK9R+DjJIZxpG8adwQpZK1jCT9N+8jkTfRCos9lzCNZYJFjNPkuhym4evstPCjB72M3UCEbcYs/+A6u7YBM7XWKSf1MDtQGJjdlKIY1wx2JSQZoj4FXwnM5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721548554; c=relaxed/simple;
	bh=pZ3C2jZKTuJg8occNu9xPyG1VGsAcW3MvmV6Ql4MW+E=;
	h=To:Subject:From:Message-Id:Date; b=BulTp+EbFdyvV7D1axR8cD9YMJW027aYdORfy1jhws7yYFggDg/610ncJddD4mn67/HIvoatLLO3tWlnbVkYyYbzZLKthMBP9AcC7Du5wJI91p/oiIfkGG/TOkqSrPe6CD+vEqclED6H1HUIyJ8ugxXtHvB2GUPPDGXNWirs3yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW/lJpq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW/lJpq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E9EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721548553;
	bh=pZ3C2jZKTuJg8occNu9xPyG1VGsAcW3MvmV6Ql4MW+E=;
	h=To:Subject:From:Date:From;
	b=mW/lJpq9y2HXZrnXvGUp2vJV/6rIbzl/J4LiczxY5MwNclJ9TVGp+bpQTpkNUuYuR
	 T63HM1rzJaThYpiLr5dwWH+Z+0Xn8eyn7e3OjWGWv30+Fsb9lj7fnqzxtIlrSkNbcb
	 ySmGTbxwE3+3wl0v40tjzjDtYpI8NN1l/+lz8bE3xj8zvcAWgFFlXB1Pw7va/0QnrL
	 pXaGn9en37JdI7HwWzcRj7wrcRotGke9hyj5xk9ju47NTjFtJZ4VV6f206SE33z6vI
	 +NTIzXRFRGYkHqXWpPg1xrd2KCA6lunwiaQ9NLTcgs/3xAqE7VXDvpdF6y19cyw/WF
	 lidoj6RKU9VEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFF5C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154855361.14270.282198197633251964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230bbdc9a6921b2bce91e1e0f5f2e2451dcf3a943b2248bca9549858922a1820
Date: Sun, 21 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721548553
