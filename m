Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3130728DEE9
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149434; cv=none; b=c7Fy7aSnRcR0bUCQaiheFvz0J88cn9BaCGwySD5GA0+TqzeZ8TXZF5TdLbiBbjH/5sFGpGkCclubkqfBvUmwq4YQ4NcuEQ44p+jBMGeem6IF+83PK69ccZFdjn7JIczPJ+ADaF62X364sBOx/67AFCX59wyrMcUQivv/7J1U/GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149434; c=relaxed/simple;
	bh=Xk7GUWEIciINLub3StQS7fbOv5aJqBfA8CjAzaSnzB0=;
	h=To:Subject:From:Message-Id:Date; b=AQ9Jh7k+gBwoEnD2sTn9HtrIjMnFuwR9nPU9dVlJZbiYYt84g7wC+0FdIuMsTmWMfZ7+67ZDM642oe0xV6OwDU2wEKRMZnu5L8BieQus/blZv8cZceI+aEhVsRJeGucqWv5NeK/QBxqQrvGixb6cnm7baLgw9kll7dGQY09Uwe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS6/YdAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS6/YdAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D271C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766149433;
	bh=Xk7GUWEIciINLub3StQS7fbOv5aJqBfA8CjAzaSnzB0=;
	h=To:Subject:From:Date:From;
	b=rS6/YdAvxdb2dNKc+s62TtgQVN4oTdJZevC0c91XbRDjM7/f1fngIZMdRV4h6OP89
	 917vOmqBP2DTzYII9ILcON+vEe0+X3/KUjt728pnrvuvjDrLVTuzVMAsJhKC6K4x9+
	 5Ag7cLlIZ+5NohVwrlFY2MWSekAVjQwKOgRgRkjTIDi+Ov4ga01PWCjUm6pmIaghyC
	 gxuFaHnmzlLWI2NO2jmY5qOXhPN3lbNmHH/UZI3jviK9VToKPJazOSACniZrP6SYTv
	 FmIHA4ywpNA5UV84bnk3+BIPtjlkBkjnEKpyIFLlCbLIFmSjuoIZEucgh5Vo70aprv
	 NxAU4VevjrjmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF0D767FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614943358.3037.14795193172729048227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcf2db40d62dac3795428440b140ce9d4f55ecac6d7d11420376d4d15dbfe6c
Date: Fri, 19 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766149433
