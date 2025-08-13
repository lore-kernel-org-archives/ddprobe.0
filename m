Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF129B795
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755109194; cv=none; b=cMqGaKWdqg6hwwtXl0zFV9Pun/Rc8Ix3gi33xYAkA/DqgyTaWUnfFJLxSl8rS89saXsAlR4ZzKY48sWzpctVd+Bx2qLFPx5jYKe/HTjNWxEarcYAIWzjcPz4cceKe1SNe7GQlTwaVN+fHeYkBEtJEYSY4riCGyNqwLwnK3wJP/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755109194; c=relaxed/simple;
	bh=drxP/y44m0DiiK5ix/t3ulEt/ICVQBwGAZaiZBqpVJk=;
	h=To:Subject:From:Message-Id:Date; b=I2mc+2u7RyMy43KTjWS3Y5ITUZnUqxdlsWCEUO4CbaWbLREWyIdyrhdqPOhSYXfVTqHJzgG9LmGpaxSBPYoD7Q57/w7Ie9qI8I8Lh9S2le6YiYxkUPnrF1mBhf0qGz49MTHVfC3RC5ihvBb3kTVf3fMt/hfjagAYuKpfwLiWsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrO7+8fL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrO7+8fL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755109193;
	bh=drxP/y44m0DiiK5ix/t3ulEt/ICVQBwGAZaiZBqpVJk=;
	h=To:Subject:From:Date:From;
	b=nrO7+8fLw4r+rkq6uFyjTrV12f1pYjmKUDvgHbOw8hgaPR3Niw8+aZURQDLumqI/h
	 TbnbNnNeYmbfZNalg0peYwZPeV1/maN6UFIHLR1iYkfbYhfGB2GmQMF2Cu5/NyMsag
	 gNZkFp5qoJABBTf4205ZJKPCrkAg3715qJzIO1Syk52yMPdvB63UCSKBlWn9MAXIWU
	 6NAdQN+RSBrniXIvAy7wPqwtd6MvdmIEfeHis/EHzgx8yrDk5dtepZeCPcTsqTRNZf
	 3B5KpP4qEF95lBC2gBNQffALqhNvkBN8TUav6+idqt86jP/PoxFe5b0RCaJp2EjSds
	 mdmWaTN1l6kWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F985C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510919357.1386.9442747624587461234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7de7e7f1d77c34fa96e2eaeecc4ea6796d966f788653ece845ab182906ea33
Date: Wed, 13 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755109193
