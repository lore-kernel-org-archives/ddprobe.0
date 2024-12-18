Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5DD1552EE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734518154; cv=none; b=lP0cfpHiQYiBLRM+E6Tm7Gzc0c5VBmWJm5GJ6xJ0G/+bdeJAEFmd1le/Nv1ynqRxaTmDcVDHcBvJHojX36pxA89rkBPgHhGt2FiXJRn11frtHiA6iGf3peUgo0UeeAo8QAIC8gKHkUYSsPTGAvwIvT048tJbh95od0S/lS8ezLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734518154; c=relaxed/simple;
	bh=JR8YiJRkzORPHWJSR2t2ueddDDB9br/2cnAUQZHPTRo=;
	h=To:Subject:From:Message-Id:Date; b=fkT0ucRHr+a1IQauccDwMpAO2XsbpEd8P2YzTm9z0GMxxIFxfZDTXaImaBBeyL7MaeQWu4LRjfXcxFNi3+EPWgnyEzrXYDOgXQDh14VX/3L8ZWQr+hEAhjZKtPs1U/TapOFY2HsjLgGC/CrVI2kq8A2SZbWD5Bh6cOh/XlqZtnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKKu2d/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKKu2d/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABE2C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734518153;
	bh=JR8YiJRkzORPHWJSR2t2ueddDDB9br/2cnAUQZHPTRo=;
	h=To:Subject:From:Date:From;
	b=NKKu2d/lJ2ShHkhF3WSneDaOyh8i4HTHkASSFEKb7X/LZtXed/0ExJY+AUxwZ5GRK
	 spAuhxAjC1p6lTA9EBygqQlBNFI77mnPKochr86Gy4EQ5LEENOx8SgdVPFyzbMvX3S
	 R0uKoCtxxKDUc4bW8MD1DfKRZ8Q6NtQ3Ff5h2LIgmyPauV1oaLAGxmFvpSCPsZn9ar
	 XitO3O/2CmEmoONJ0YCFwzZZPl72JIaKjR/K7QZU+n9+LJnznbfm3Se9qQmqLUz/Cn
	 ix/Ilvv3IzgVkF5q0Ig9XT97aiSXw15V8lL4rYZh/akknpTWqBXMm0QohGLeTka/bq
	 XE1sWqM4Uu2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB7E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451815360.11764.7129600888387400801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c95a4a703bcb995ebac37f78f9d31d467a4813d1b9c57cc7ecca5b8c50b273
Date: Wed, 18 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734518153
