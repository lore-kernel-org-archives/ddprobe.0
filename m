Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEA71991C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724760954; cv=none; b=U/Th/6slUT97JqzGPlx02/5uytWwbjT2UFFaKtFEY8P65dzTmcHdpD4wRXA4RSIZCIseVGoyrq2/o6foNVA40nrVVDkm9t49ak4cDK1bZuWg72XZDu0sKCkbxhjCUcn6O/XaUb9ctG9lfwfKK79JuPwtjwuZBR8fW+KLbMhXXSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724760954; c=relaxed/simple;
	bh=f2JX2DS3Wyl8uim5lLb6vrrG2QMw9Iyw/qkz4wRZygw=;
	h=To:Subject:From:Message-Id:Date; b=B5ns1dCrKnBis7JZYgN9T9o9at0Wa/UlZKnAqWCKo0N+oeb5ILzrc1+zh3mYPUHBK1nGaHm9Uw4rAFreYh5yPzinV/cxCZJ6lnYCOQl+VN/MRk5o0IiNoHoArnUmqvLZOjGQJNvxgfiIdBKcSPQrox4qtvrtFtYBsrJHL7EV93c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edIuCkLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edIuCkLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B738EC61041
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724760953;
	bh=f2JX2DS3Wyl8uim5lLb6vrrG2QMw9Iyw/qkz4wRZygw=;
	h=To:Subject:From:Date:From;
	b=edIuCkLI71edDt4JCw3zzA1q7ukumGkRcausq8lEig6YxRzsFXh7UYc5KxWDgrI63
	 46NckkO7wrfhsC7nsC5gFH1UgGGr+lrHX0ND3l6ZAF2WYF8ZAWddTUAO/SSkk1Ur9w
	 aPZSZu5+IqYE+Bf9D3jlazQXh8O648L05CsZrK9wQh6QUrSETBDq+eNvK1mRuddfdR
	 /Oy5uYMWrS0hsheMNqRXNWwhFBoUQ53Sm/+PYlTfcMKWEETZ1B+Dq6YBnejdr8EAYI
	 8TvwIYB9dUoyrW+AgJLgf1TpXMgA+QirbQ9dS1Ysk4IaOqoTDWrVFfTWsMu3FcLhNN
	 O9xV5hLh7Gj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B9C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476095361.9752.2348065208269847779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c814b8080e11f1f913edc188be405d2d3f4bea4706ea6f32a11526f5615de7
Date: Tue, 27 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724760953
