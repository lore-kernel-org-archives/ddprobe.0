Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278C33207
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722996354; cv=none; b=dRjrImqMzmk34gdMvHFoCwK5rqUgZHya5RWKzAvxkaLyi9Wwco36lIB+WSIGHBi8tDlchlgJHfj5G2nBqIyItBpARjq9ZNm610mFuYQgeAIcI/JjTkcCvYYpYYg0L0yIm0f/bBvFSuML7hfCm19vA3qcZ8xG/CAf4jW8ujKsumA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722996354; c=relaxed/simple;
	bh=JTm5ENDNyWQRmr2WPik4Vjs8t0mq/1TzyVe8Fx79O70=;
	h=To:Subject:From:Message-Id:Date; b=SoUXo3dcLtNpTvXKfZcIvppKR7Ln/Fg7SFRzrO8UKduvByjK6Vj7Dy5XolU7xczAfYMRLZEZT2/vh2MXWDmMby1zvNnsqF/cfEpyFeFeCOzqgKGEKKZtuqI4jZn1YLcagyewaMT84a5MQQXHYSjbFcSXKCfR7JW9kMjxW2umqsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmO37Fto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmO37Fto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9539C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722996353;
	bh=JTm5ENDNyWQRmr2WPik4Vjs8t0mq/1TzyVe8Fx79O70=;
	h=To:Subject:From:Date:From;
	b=QmO37FtoJ30FWgmwkUf0xIooiRdRo7MadZQTr9R4Od46YW43NNIkKRROJQCTsoJ2b
	 SjLJGkTam5eHp0VxxlgrZKwzQhlM2MrRgyCm152mcHNUjdzL5yiBahGbYeYoVwe1HV
	 R2/U7u9Al5S7RdqgPFcE+PYVAKGm/mNy+jdZ4w22nMFUKd4Czu0THDMNywIOqx5xF/
	 CZTqexOOnNkNivKTvsPpiBMQesesmf8xN5htBIrd7eNBHURudpOcLWXPuSYzbash2w
	 pRb1EcF7BLIubCWtdDIaBALb20ALymfAEjtydTHzkmO0+lVuqtRKdB13h6cfXeuyOW
	 w699K5uEzzO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481BC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299635359.19056.14523472329999692580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93ed8aca15f26079ed69571f7759097f63f06cd932dd4dfd05f06a51f115024
Date: Wed, 07 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722996353
