Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577873398A
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713032363; cv=none; b=J6hXh5ugt7q5UtdY4nhydRUj6TBHEB5wE9wWuEem2O2fKgm0Aky1YssNFwSz0CV8/+P1xG5Bre1TQ2QpJJfZDGrMikdZ7Acl4FgJF30XFIknfSBeoLYEZJ/32dcygkWoNccSs0RxeO/kfnjUsgmL8tb/qK2c9yttt6uJo1R07cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713032363; c=relaxed/simple;
	bh=L5+Y7/aba63HXvAcIWalj2I29wsJ5zAkEAR+RVTokYA=;
	h=To:Subject:From:Message-Id:Date; b=Lw2MIVU4tvRc1wusD/aNdHvSUetJryUg7GMvvbo6SlOEKEvoA1X4VLBDa2IMEcPGpc4rErLUv1bwXXC2bGsfjqHA67RAXk16F7MnfYQ0RwylqdOC8aNx36zZLnCrB0TuS4hh/3A4dOIIzR6VBd3hly+6oWaC/5rxUF6olVHEbg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr6vo6wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr6vo6wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0B9C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713032362;
	bh=L5+Y7/aba63HXvAcIWalj2I29wsJ5zAkEAR+RVTokYA=;
	h=To:Subject:From:Date:From;
	b=fr6vo6wFyBqzoLORfBNpeDdQdBSmUV5pCzsYtfWQdETBoHJqu6uO3hax0vTu8ne7S
	 fn2w3ngTGMJ2fsF5jDmPjKln8xZ9DSMeVd9cyNxs2qLz6XAjMhXqNHbcVq7NSRQWgn
	 67km7KsYHQVYJ9Epyo4ZGPHIN5qR5gitMJa9WjyZ12Km/nRKlygMPt/2tWfPO4cKn1
	 y/Fe6IfAyWmV3eF9fOKEh4RC8xPgq52SZwR9cXOyhDkapsaD70eXB/j3ViIhgmxsiL
	 AwissnLqnlv+svY04nSjcRXa1fnbavJ+ihsAgPJO9wWhtDy1/dT4N1ZoUTzMtWCAap
	 raCbILDw0ZRDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD74C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303236276.29389.4923941649597516600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1d7ea594fa7c29816e8a0cb82493ef5093947099342727c92272a36d9ac97c
Date: Sat, 13 Apr 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713032362
