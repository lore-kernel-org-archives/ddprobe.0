Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55616B381
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723247754; cv=none; b=PPRlLSrsb6Rgwhfi37IWYiiJE9y0oJMfHluZbkVCYr0k/d+I5/ep5eSh1qna6cEkf62lDijRInpVepv4fS0LrGgrfA61Lb1PXExwIMYG3eqFVmi68vFEGoDPFm0sSjaVO75v2uymMWO431OO8YFdg3EB6sNbdxXEqw40qrGfHJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723247754; c=relaxed/simple;
	bh=Op9cJLlsnntUSbjCEfFMteBc3W/o60oRjq0AwPnthg0=;
	h=To:Subject:From:Message-Id:Date; b=bo1ofpsABVaDzEvPint6pAHoDtUB4BecMbP61nk/zOZ2yeHQu9DKECHZUIzVX5dMFpslvqWGqoyaIxmkszTl7Bj8YisKyYRGYtr8rUEr0J/xxf8TIrHHr5QnWaeMF666X35DOdwyjs4CSYLThZbCLksXUVhDCXz6t9bnoFC2Hec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGbQ34/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGbQ34/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44EFC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723247753;
	bh=Op9cJLlsnntUSbjCEfFMteBc3W/o60oRjq0AwPnthg0=;
	h=To:Subject:From:Date:From;
	b=IGbQ34/AtQhK3v7/KNJydCFS+qiAbhmh+Xb2A0YX9qawbgWBZAd9tsI813b84D9CU
	 YFMwuPBYfGMDVzsoqObh9ARoACpXa/9AKYrtl963VIMa7TMWGtm2ZT2lkJjNgXr+FE
	 9Ws4FetV+UoKn9jttV76Fpryz7Mq8ltqkSU0hPsXoWgtivWoLx5CsHlkgzphjk/SdV
	 Y3FeiQiMl9EeEnbuwBRO61h1RvRLbTXDiJnGbV9r7UNMnLoBQml79UAvo9HWHthH6E
	 vgNrAmFIuY9yb6nFpAvwtpFKb1hzc1Jqhq1ybgYhBvCX5ARxW76Z/g4Mzq2q9aksWX
	 WWWvStV8hU6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94744C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172324775359.29170.9231100405678839323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac0b4d879a731d3fb1e747e001c027fd6970bb1ff2db260e766b1b2bc281386
Date: Fri, 09 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723247753
