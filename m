Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3331B395AD8
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790930435; cv=none; b=CSnMdra/zAQtHIOatGemPTmi6+9ZOCvIoBudMTfbyAoTlzpM6X2wgDeezu/seYlGZSqRzcoIJvSY10wYxiGJpqo30n/66uObcsTYKF9jIbL4O4s3psAhTW8B6WZXQ4K/iqlvOBTd1lO6rrTbC1yLpWVlCZzR/WOtr/W5+97T/wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790930435; c=relaxed/simple;
	bh=qEA/rMLHc95eEBSZn9R8HJMPDAICHaR6d2LZxDe3ZnY=;
	h=To:Subject:From:Message-Id:Date; b=i3J6yI4+jcrqm4adAYicJQty6zfVdpqgE+RqsBWCNJf7aAkmt6tfnHQ14fE3tLi3WtR/S+3vrR+Z6L6zVugYZ5mFnmrc5xXcmaHx562CVxdaIYKD6v2EjXo+goBbYbo6nehOIA7UKrJuVmjcagWDhNFDYqAOW8OCdfyBRfPEkHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S352DtPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S352DtPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B41C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790930433;
	bh=qEA/rMLHc95eEBSZn9R8HJMPDAICHaR6d2LZxDe3ZnY=;
	h=To:Subject:From:Date:From;
	b=S352DtPo0UqGzGqMzOrFnkwQstTHoocTYtNMNUBV2tE5ldHEZWvtWY+6dPTnQVP1g
	 cGhe/cQxQ6yWWEw/pHGW2Qrt2HIA+m9jtoNU3FEJWOkjmZMC+uhqW894Dfw9si/aCv
	 ZIXOv53TCLiVB8Z4KsuXCYoWj86BbaoJ2cTXtlmbrkT7wmr9EnWM5XpeGIo01Cojdk
	 f5nVdNB2R6srYB71DITj/uOUTnpVYHp9VNgp4I4J0rI1NM8IhamK4EURVRynQtWT9r
	 NDEo5DkYsG6+S8+jP6xAR4KyDmYnuEVz0ycunYuC40YlZ57Q1pEwpKcP/68RGC0EZO
	 8Ce9WODAuOS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F0CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093043368.32486.6684993941079032237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809145d6979591157f2816db951eb09e536332d0f1d7923818dac148f25e14eb
Date: Fri, 02 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790930433
