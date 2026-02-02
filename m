Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C011EDA2B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770023634; cv=none; b=DzoN3tKZHUX7CyOuNi86RFhvRVd5bdSLdnPnIeg4JtYX0VBOlaxuwFaHi2k2C8a37h0kbjWeCkzGWuR4VGQBelPUFIddYdKJVTOhQ2EYV1mVD9SK4S3rbSbq7HMD2XGnCape623xJwCpohRNBZMTxOHTOA2uLXJF2xixxbFCF6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770023634; c=relaxed/simple;
	bh=soTqzN/ZlcksQecBX0f1DlY1MqZHr428VNLw1eaQizE=;
	h=To:Subject:From:Message-Id:Date; b=CzfFXKR4FB7QOlB7qgSLMa/nn3GbD5qI/aewQsWaLzJK7ShsY1YZBSzxh3SPu6bZ9P4BY/QhY7JConQRvYEMHKO+5Lg+01pODBWWnfDMqf3oKj28TIgYZg5wQTBvZf+A66yxCU0LNy2Ir8ogDivX58hveoeiAiVViv+JtK2uaRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCocB5Fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCocB5Fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19F9C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770023633;
	bh=soTqzN/ZlcksQecBX0f1DlY1MqZHr428VNLw1eaQizE=;
	h=To:Subject:From:Date:From;
	b=kCocB5FrCd36KVXhcaVfAxulgWvP3teH8Cu5JvJwFC7ErHV7mNP5inFErJNwosPBe
	 eNXRlDaCjVLWOZRMStXPIPPwNJsb+mNgLIzt9ixQcVbEfrnO0+di21mvoVImM4dRkq
	 dkVvVMvv+1C40eS0YiJnWvPtLFty89oqJbpOk9wv+Uc9FGJfajkm+C/mDpJEYr2AtB
	 yFeXE9Iql/YnHhUK2DqtyYM1f/iO95Frw8/7h8WCDq7vYQ4kl3/MELciRXDXQfRPYR
	 knA8POThxV9ncolN+heFrByDAhJAvtA3Wq19BYLyJSrvRY9pCzxGd3G04IhawIONlo
	 /1A2wPpZkoqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97276E7314A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002363360.21919.14899713643089989631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fac9d6f683226fbe4e36461b5e0133e652f07fef3ec7285e5b5c96d0c2893b9
Date: Mon, 02 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770023633
