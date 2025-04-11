Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4032367C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377594; cv=none; b=cE8YNOZlzHkcp1CuzFqGFzRGVa1XL/XWfA7hoOeJqyuBRKpb7KhODjebridM9AkiUEXpp4uri8sSPnvgH66d7Lkno9IPa8Et9gxDpReF3kKJEVnuQPV326gUh6g1rE+Ogd2/NvnROPY9pSRXd7CYBG1NsfZUX3a/DidWDxELEck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377594; c=relaxed/simple;
	bh=MHkXCL3nXuYXTNOUEfoarLDRS2cOGSUx0pUEF1mSUkc=;
	h=To:Subject:From:Message-Id:Date; b=r9UOm/wrXhV1YWVo0FpVe5m9mQTQs4NkgIU818RxkZkvIOzKv+o2zOfyMpGlOUoFpJghF34vK5UOgvxI14SuNuA47wSePyNSefZQNW+IZBz4cd1cA2DUHvZ4lxB9Ade1G9eL2ZAkk81MUkmz+PfeCcoPkar0hFxLh4OjCkMoAYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLc4nS3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLc4nS3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DB1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744377593;
	bh=MHkXCL3nXuYXTNOUEfoarLDRS2cOGSUx0pUEF1mSUkc=;
	h=To:Subject:From:Date:From;
	b=KLc4nS3qqX/gqjqDVWxdFvOGPYqnayZBfLT3M2gsAzR8OE/jx9PKlWV2rYhEp8/Uj
	 mtuVDukb6gIWOao+x2tGZsNVN72OdjDjhOhThkN3YIDhPVkZEn5bDbBzxx3QZLjQT3
	 lz2sLR3+26tN8piKNcJfYQtq/R57vgfuyN9zfU2DT9aM3o2LYTQyAl1kijA/9Bue70
	 Zc7//zHVaaDoobgylrnqid8D8b+3TsWCTnh73Fmmk6vuCuRAkbDErJDg4hWt+BrIyA
	 ZGl5GoqRIqXuoA7kLh0Ma03qkItX8riTuJz3Vb3dZiQylQYLOJhgNbH9epLkASD3E4
	 93RLmV/m0fcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197BC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437759358.15145.10070670640952811830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de77c6db2555085f51b5ed8a6a76155bfcbdb0cd727bf2250843a3f3166defa
Date: Fri, 11 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744377593
