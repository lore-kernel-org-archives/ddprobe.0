Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C4426A1A7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770024834; cv=none; b=QdPBTsopvSXB4lyP+HSCt1p1MOLcrwufuxsWxqX/kz9L51PC+R0mNnsa+PN1YwGWk38XhxeQQitVcmc4suxhTRAya086aeJLvSQxkPosegUmAD2UdNjeblE+eBQv3iXjJ1FYKyNhXEmrtCJ8zBR/A9CPYBoY77XWvNjvGEL1h0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770024834; c=relaxed/simple;
	bh=gMvipW7YVVBioKc0nfwaqZcPnog5BhRZfEG5+N/zQe4=;
	h=To:Subject:From:Message-Id:Date; b=nLT3PS6kOvA4pfZ//AdUAu/7lXdKO614p0LkdZ+i/qVHW9HGOrK8KVJFK+emtGzBL9wWPUWkUzyEb48md8VBvqq3aG4asIoX4YwBVoMg6M18Mcwft1CgLyoe2BCNQmOG2f42rKcD4bKpl7h6n9Hmx2u8+qq2H2NlByPkZC4gX00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdZVhIfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdZVhIfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AE2C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770024833;
	bh=gMvipW7YVVBioKc0nfwaqZcPnog5BhRZfEG5+N/zQe4=;
	h=To:Subject:From:Date:From;
	b=PdZVhIfDaCrsUtf/tP2ke/TuOqK4wKu/MWLk4RrJgeXLgCZ9SwXHQa8sR/gxh0CBo
	 QOhs9Tm01yQNM/SwxLEWPKt06Q+9gNFvdwD/WvEj4052XIrMtEfX7sOxs44nnlZIH8
	 D+lgl7wZTg4eKXv1Kdl8+58A9Jiu1q1lyapVvH1/6qvN0YIxiI5D7CztEDVEk+9hNP
	 K8l/v/TxFYzvl9BbHmBOxRpMWp1I7cNUQNN5pRyj8QjcVi7d/83Pk8MQbrgGabVd5s
	 D4coZynfgZJKM94qB3x5/VMjJ5gWrXqn3QRjwa/n+dNqX4zsImNyyEJksbxFYPYQcI
	 LCJSY2c2om31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B408E7314F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002483361.14651.11997686267814820436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b6208e6e0f2e109c597cb36980761ca094729f44f5f6d43d882d0747658df6
Date: Mon, 02 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770024833
