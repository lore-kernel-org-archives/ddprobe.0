Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8BA1E881
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706292497; cv=none; b=aiaa1omwBQi9OMlk0NXx1JQG/8g1Xqao93sJZ7eDrrRJ5Qf459NWjCQg6GFFqSYWzOi3GUt45FhmVD3O5pu5OqTTpkMSkI6vaZ0o+IKzbhXQUjq8dWC/o8/0LeRjUNv5Z156gBEgynt3axo/YLc+6XYiQzCfjleNVVpUF5+ZOOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706292497; c=relaxed/simple;
	bh=cvmOMNTHUJc3vKWkhSSuh7tcyAioe0S+P0cubx7+9kI=;
	h=To:Subject:From:Message-Id:Date; b=seQ5IqVrT5naLiTeigZ81pJkwtK8E1wkPcB9ajmZleCfzpf2JaPL5mvs7rXFT5L+BwdAZ3RIZUYHnjaenmaiutf2vHo0jxCraa6otIfzyveywV8nIXZclWRMfiXWxhTgZKFa77jnDSoLK2mNen7xrEOIDeMUzwuhB8AiyTYMY2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b71pAd1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b71pAd1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B84CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706292496;
	bh=cvmOMNTHUJc3vKWkhSSuh7tcyAioe0S+P0cubx7+9kI=;
	h=To:Subject:From:Date:From;
	b=b71pAd1f3TRJTUjAERNB9plFeRwnDb+rOVi+AHhFkou+FY6lsdlWmtqfdftXtS/Qz
	 L8V6jGz7NvbPKn7KTX+bTj6v4EIAcNHIi3khCbmT4z9JiiWpNryksZnZe4P7qJP0If
	 KrAGgwPjdp2xG6ZE7v7ku113FbiqCP3h5DDX9jr/qtCClcvYJiGkWgsYXXKBUxsgpO
	 1o0MG+DaM05GLf7lYDzJqClYMqFGJuXzoiIPXvhsa8Jcp57VOSO43yGkkeHoXtsEx8
	 cTpUIhUxxx3jQpYGP6zAtQus/5QvGoUudypS8Wx71xjgOK1TfwMoFEUd7W6R7/N3BB
	 ulmyHnFZwD/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61198C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629249636.18764.1136375179265774296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ddc38e24d002fe72868c0e6bc8f00ffb7379bbd38c7fc24a2edba2f8a745a2
Date: Fri, 26 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706292496
