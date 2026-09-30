Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639AD19DF6A
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790748034; cv=none; b=PsZ388u9WcjXUmSmW1/XWaLejieohDUL+LXzJfm9fSIDpm7dt+mTbXU8aMSIoqhr87+VS2mouXNkziBHnvBr/B7/d/X4ndi2xdBWIYs++Vr91XP1FMRtZasdda0wQamW0AYtvRN8uqNWFX24QG8eaWkiylMyWJW+R9j5IQBcn+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790748034; c=relaxed/simple;
	bh=YlkjfuPz0NWNmFVSoig37qyRWlIJ6WwjHgljBPwWrmg=;
	h=To:Subject:From:Message-Id:Date; b=mk26ePXsmzGN1w76X/QdQ18dl2rNBSVhiUj+qBR1hsnGnbXrZyJDGiivba+LyCUdceqk2Yw46yQLM6iDSru4e3rKsjEK6AvYWSiXDywXQyVu5+jiqt0irwjlo09s8psASn2F9wboq/5LJFkNZmb7kNOLmigrNXmsxfeGDHnDMPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACkA1gR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACkA1gR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE62C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790748033;
	bh=YlkjfuPz0NWNmFVSoig37qyRWlIJ6WwjHgljBPwWrmg=;
	h=To:Subject:From:Date:From;
	b=ACkA1gR8xbrjwePtrMfs1KXpyXf4YSBtYnVS2KoRROvRPpbim/XGODVYZMr1bZrE7
	 ZLb6RRWqE/QjENAkLdr81usDZ5LlkDKIgAWFet24688gn0Drwhrr3rQeJu1QgfoOgf
	 IdwEUl2bra2tlANMlD01B71K1nTsS3OAn5u7itmdk9fXxf4uOdBgSO7uhT6WEFaehz
	 LLPL3jvSG62VzUTGwEkO6L/MSQs/mTQYqf7TRmL8GyGK/bALGhmhEfgoB3o8yxABUk
	 7h8D0kYuFke85UjM7lqn7V9xOzQ5xoMI2aC50OrK8PUpbEVKldPOUTLvWalvKrD/Z3
	 LqTJze8BIjZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B788EC9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074803374.22265.10978189214915801894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f23a9f60d6e74e4add1ed4f121bb5d6f74634b1ab7f6db6f46f8540d1cfb90
Date: Wed, 30 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790748033
