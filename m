Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4416332939C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780862674; cv=none; b=YDgIw/BkPrugqyXhICWx04vn/NV+NTKCOVgAUKez4xEOq2fvpA9DQSJ78y3MoHMvHllE7j8+la1mc6ok74O1vp/bvJmpRyZTspIhdIWoaH7EauQkD8YL4mGt/+/b6SLe3SMbinKi9XnIT3vWwyfCyKLpnJ9RpXCoQCVaGi6VRBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780862674; c=relaxed/simple;
	bh=Q+aD+0qMb+TumunhxIVlu+lObzmeoCY7NgexmXhctLc=;
	h=To:Subject:From:Message-Id:Date; b=PhqmM8t/L1NK1hRr8j/qeTHk4c64JS7K01jwhZssKmipeIEgIg6SfKVJJ4pZ7RKaXTg44kZfsDTKjJq2LkVoLGRx8RB93nu7i0bv+7/6qmZaOwLfeP2+AD/+yp2KLNJcXrwQS95F8JarefSpXH4w3JI0bJMwrRdFi7Ncagtl224=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UATrW3NH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UATrW3NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80E8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780862673;
	bh=Q+aD+0qMb+TumunhxIVlu+lObzmeoCY7NgexmXhctLc=;
	h=To:Subject:From:Date:From;
	b=UATrW3NHT3q9j0edbb+1gZ+wLca9jOmsztqwDxzlgptS1LwgvwqwZuPOZDSeXGvEx
	 v5n+eUwyOym0/4sa8heHtqCYh4ZeaMaDow0BAX0WHl2yy1ge9fxbDvf6MJPOKJhbgd
	 sKd+MDhFjuZaHvd//16wHiM9G1HadDUN05ZG5hHPvoe6vz3EgwKyE4QKjdWWVN/VWa
	 tYO6pWfbi6W0vN+tq3oSW749Qg7A6qujHYaA8a8dOSE+Fzu2xf2o79elLH2jMk9XnH
	 pnpYXBTcWscIz1rx3jgFNn1myCEb5tufvzyhSiXwrF0enddg5VwhKpTiJD2kd//HX3
	 bayucnxMk+zKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA7FCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086267371.18361.14361145569331030605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8064e85276d140214ea0b8822d3d6d741ce128b1aa157ee8e91c01559aef12df
Date: Sun, 07 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780862673
