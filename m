Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2455317B418
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758722395; cv=none; b=VpYE9PHaKGLxmRkEiJGl+gttLnMghKxOZivbVh1JG4/0l95Of1vB0U0J9YKq2V9nCM3LmJyyO3MWDwtzEZLDChkVA4QV5sFQHTHbQpnjcfD2JIMinrxU24JSM/dajEFZrpQKB/Wzx5rdjIg/Bm8DUCuQ+5JI6wBdsBUFWrQjSFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758722395; c=relaxed/simple;
	bh=Bax0U2XAki0fWfuZR7mzg6NYRNhgwsHeysZXaSiRmwQ=;
	h=To:Subject:From:Message-Id:Date; b=SzKHjS6t1L860Fp86tg+z/Majgstv9Q8AKhVmEWvGtU4mOhySAQtshlndImR4zf1cJMRlCA6zozlaItwhtcibSGey+8uYYdx1kVrcj6GUkkQnbKY6ueqG7OXl/UJuCGJQs1YT8T7wdjsvRL3AUWS3w2oA3b6H698OL5u15MSrqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imcsG1sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imcsG1sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF92C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758722393;
	bh=Bax0U2XAki0fWfuZR7mzg6NYRNhgwsHeysZXaSiRmwQ=;
	h=To:Subject:From:Date:From;
	b=imcsG1sNGhgEHi+l1Jiz0JHlP+NK2qwwWRQmIDt/BgOOlVGOLlAgsVFU6R+jrlYf1
	 T9cjFvFRDEXK0Xfh7o1pL69ADdKXlHi0BdAFN/Wo7otZFrn4b+ZzVshmjVqIFmqYZa
	 fF1r/EjY5B1oUMTef6ARfZcgnzXxWfV7tBJngKUzOG8LVvIa4cpJUPEjUquCnT9ukp
	 CPYSljUOQclhk+kFHkfNIFfPLCzC6yQYKx3j98o6TqTnOy+ds9DRkqZtWtoAMsDlTg
	 KP63Oo+A6H05BxZP+38P/D1h58EXqg/nQTz4tB8DraRN+OCFS9CRUxL2feWTqaMBW2
	 H+svaOka8zMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6CCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872239360.12833.226602968455739295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31963cd6ade433860d46d529bc874978071bbece8c081897f8f53f35f07bd744
Date: Wed, 24 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758722393
