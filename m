Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525BB646
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721475354; cv=none; b=lXzh73xj1mbb5SaN237uYwRGGawXmcbtLJX93i04C7o1oQ2kjRqicbW4I7kr2zWgmD40mHWdbH0YKzRDJxNI0ke2mFNakw5Gerq0xNoKKByNioudT5HBWLmo++KLdxy0J2IwbutXPQ1prgWa9YWNRBObCXyvZ/hZapB3BNqHeFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721475354; c=relaxed/simple;
	bh=pmaBl2hbh3XVLVuW6kvoHiR9I6EKplLM0OMrhO2nMPA=;
	h=To:Subject:From:Message-Id:Date; b=kjpfot5KEgaQErMbfE8c7uziq3SXipeGHjomD24C2PzSQDmeoHY5RKozZff1ltft5W3JypRaQEFj429IQsMdmOlblj992Ebuiu8yy6D7dXR5fsoQpZyL/QqrsklAOts/pplYRutcqgMJ4HpSD9WqjqSdR90Y43zWFmRqS/AHvjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4JYsgF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4JYsgF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15FCC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721475353;
	bh=pmaBl2hbh3XVLVuW6kvoHiR9I6EKplLM0OMrhO2nMPA=;
	h=To:Subject:From:Date:From;
	b=c4JYsgF0npHKsc1+uw2PGETnMIfbdH7zcKN7LUF1aLDlWrAkV+iCo4RMNQwz8QJ8t
	 X03RKc8fWuvYmxLZFzP/CC+Kfh0QUUz0YUtUXVdgiiqVz465kDbXQiTNOufRcSnUXQ
	 ON65Bbr+63e9+ewB5ap/K95EKbco/Rh5C/jVf4OiMxkKi9GLJncxKHfnqzXREQKTGb
	 DEUJKtemt/MKSb/bBSX/TAL5TEWcA5OSnEm7FAmuH6rofoS0y9O4l2pnDPh5aKLauF
	 drwEIcYwTAbKglYDfAL5RHG7iQeRw8bBTFMmQsZRY2RcOoZ1wJH1h4Ln3WO9GyMI1B
	 vZnp9qHu3pOAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A49C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147535360.10141.4078335096988781273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1390f9f9299f3fa2ff62e13d294790bea809b08913e618c1d5c92ebadd2b9926
Date: Sat, 20 Jul 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721475353
