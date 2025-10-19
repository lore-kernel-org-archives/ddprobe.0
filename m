Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6B22AD22
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760898594; cv=none; b=lsAYuNYoDwKVnUCFo470gqCKppq67iES0qfMSUtYgkM665iNIDZSmyVNw348FVw65mrCRxw5JlmWtkWxcr3jYfu1TfNQLRjCDPbDWLYe9bncxb8ZHFXDyvV8T8X6BcqoiIUVwhTA93+8fI/++PA8stNLdfFgIcv9T4VV//iity0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760898594; c=relaxed/simple;
	bh=RIt2bBlX9kZ4m4KMe8Xb+GXdFCby7pP+3bAN4uxAzTY=;
	h=To:Subject:From:Message-Id:Date; b=kuADOOJPR1eYQ6fnBzRzj57XS4gjEWN953uetedbFzr42DolvA+HH49JDnmYUyQKlgN3zK9BncdwPCijW8uSBuQ6RnYqwAgbKI8DZWL6whqK86yn7coX0i+a0geKG68q93Wwa7IZTVMvv9Nit8VwYrtaWrdAR2raq4zTjfA8CbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQ+fswM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQ+fswM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E5C4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760898593;
	bh=RIt2bBlX9kZ4m4KMe8Xb+GXdFCby7pP+3bAN4uxAzTY=;
	h=To:Subject:From:Date:From;
	b=rQ+fswM2DgQB3zPS+wT/dODXQh9GXFqC2us+YNT3ED3ybKRVMFyxCqkdNOzQm3y4R
	 +CqOCsAWDg7NCmzztRhXZYcMsY5hSexTNnHF0HjLRy97FzSEKCG+sq3ti0OcwlUlv8
	 T67HYZhmRGrFAi7VYgGcTR5kOL3qOc+UxbC6WQCoZPDbtIoO5+Ri24OfOUQgaMgTKx
	 0Her0TGAXFENcPuJqoMVdmqhvf9uHeUEJi7LfJuLkywfGO/CoIbrM1zRdC8pctXn4P
	 ca9Yfp/18SGIFzvjaWTBD5p/15U/6uUYJx3s17XuDLSE+x7yww9+MuubpvM9GYqMwI
	 nUXFCkvxMytbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90045CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089859358.3910.706981490309746257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5388e09c305c2e869aa38e6d4e6d0176b0a6552ec5234091db40810119ffec14
Date: Sun, 19 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760898593
