Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCC935DA69
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786783234; cv=none; b=OAhcginjQHk6wRE9rlpG4yU8r2MIdpzErjGUeELKKQ6ZqA083GQjftJ2eqJNe4wGxKjt4HhcRX99y9YUbsxYYn/Lkv1PAsRwgRXraD8dURkEQnY6bLrHISL//ubksLolH3imQP/JfqguVzfSvM09uY19uGUo8wc6D6FtmhkZwKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786783234; c=relaxed/simple;
	bh=cHpmCmYLIlzSdFqGgqYiWGHM4YSeOuH3SfLvq8AF6f8=;
	h=To:Subject:From:Message-Id:Date; b=eQNKQPmF5vlGeucI3vAClnXfWjYDB8H+noqgmC1a+9zrMtEvGPz/TxOPJoGO92ZxYS0c9wRHiUckgwtfMG4dEp6v6IkZJ0K2JkIfepQxUBd76G3jfZUYUGloD4jj9xsPErsrManGUBNJhs7kx8Pt5nkcibtYhd3AwtFb0zXErQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz+u6HT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz+u6HT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD267C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786783233;
	bh=cHpmCmYLIlzSdFqGgqYiWGHM4YSeOuH3SfLvq8AF6f8=;
	h=To:Subject:From:Date:From;
	b=pz+u6HT3iFLh5C1PKoe+QZeGDTLsTLNunsVUUdtSSRtVAxqgimOzxOToRB/fQ8eFq
	 PBABuGPtUYtXxbeRJDeT7ak1oYIurb8k8p11fs+7H1QNguRnT6fHAr+4D/Hx0MU9YE
	 38keSO2oBH/BbU3/dNwYD4ZQxQyqV71VqueYIdW3xcvZ8UWLscfdVT5VDJk5q8ml2R
	 HVtYd8Zt9svdVQUAHQ5NRGNHC+uo7TrWZVO5bAHAztrKCFKNr0H7X3eqznfUhdEy5p
	 0ypPdvA0ozhwNxZxgPh0catG4qnlp4k4lQsTPB8lb9w4ICHXS6Vt+vvLe7sYUdGcZi
	 uZrESfRj/LeqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18D3C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678323369.9762.5861254073991526401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7267f1384aed2cbfc9029dd44158a05841111768c42e977952a073e9973ad578
Date: Sat, 15 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786783233
