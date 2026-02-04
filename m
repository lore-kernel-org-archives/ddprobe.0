Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229C2225403
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770166434; cv=none; b=XgQh3idBO5uZgGqv8OrCDDLQwsfZTUIIB8blEHdqwqxwUc86VMMEYtnOf2myNm6Y1Pa2ohX/Dl11Emi+CqKjOdQwHjWuMX7NJEIjx0zSyW+7ocwXO1pJakoH6ciJIXz2U6yg7X9y/jto8pFStKdIz5MWJDy+/AyadG3yGh/Cfgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770166434; c=relaxed/simple;
	bh=WwwhqM0y6uuiWrB7/zmnNWR6Hj+j/+w/gSfLrVEfBag=;
	h=To:Subject:From:Message-Id:Date; b=obJXkneI8BSOL56qkCvuSnPOd+87fUfp79ma/tNm3cbTE6F/xihg+TG17oUkHKes1rbS06gSztxfBPsMqP4xCM1A0iTr6oFvN5MT+g/F7rooogbV1STKhZEWgx68wGkRtwH0CITxIkoZR1qr0+S1Tude8lLoeJ+ssXNTkC6TA5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb+pIPpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb+pIPpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F77C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770166433;
	bh=WwwhqM0y6uuiWrB7/zmnNWR6Hj+j/+w/gSfLrVEfBag=;
	h=To:Subject:From:Date:From;
	b=tb+pIPpHo4zUuAbSUzTKGRZ+/QEkLnP1t418WmPQUEtYQ2CB5d4lXF+4Mnsb/F9qL
	 z8TPyBmj1u83TQQ4fnx5BFGa3BPwqVMUy+KCp9hHXPgzPDjZJZwMYbeFlpGWezJ4fA
	 sbNTQzxNrlkGHzch+Kn1ngUFlCzoswXwYd+j3oA2UTX+LUFH3zP+jD3zPFhnyF+/Jv
	 ZXszL4JapbnPweiyos76nlzMzur7gVFzcj8qqiOAX9likiPQuMneRD/XptehBMy9K2
	 zzKlFti3+3oe54gJjVswGcW69VYbp8Ofxx6iVgZ/JZgU/0itA/YB0xIwCn8WKIgfmf
	 pm6ihop4nnUQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDAE8B386
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016643360.11407.2878604430775797405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed8d8214a2bf2237befae12863d32ad4bbb78af44052496c70a29056c28d453
Date: Wed, 04 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770166433
