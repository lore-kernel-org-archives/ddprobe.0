Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B311F4192
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758900595; cv=none; b=Yi1tcahvxAS0mDrRHglvEaZHc47E07N43XnPox6Izxv4sxk6DLCDHPuT6twlCifY5PPDQeFdpeyBtAunubyUbQieThkm/CY2YhaCIm9glDcruOz2TXpmp8X76aQf4tXJN51Z7mfLyXXvCw8pXdWs3hOgjDylaJv8e7A/9QJvSTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758900595; c=relaxed/simple;
	bh=dEUxNKB6wgSFfwJAtzD8pZA/Iht5xcH/52bNLNUIzAk=;
	h=To:Subject:From:Message-Id:Date; b=aym7w52MWrS7UZUY3JP67cDSHVosG+nWMAnpbiebBKMjCKdxmDN5VKXx8X5yQkiH3e1MXpx5ibuxnew7RPmJjz8ctWidhnHHmElfUmg5HeZ9tXh6Uy6FFAj9DxPAsf5UC3U3oCghX/lj8z86Siklp9pZAPllmFhSq2PyNOZvSgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyFpxPOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyFpxPOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5210C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758900593;
	bh=dEUxNKB6wgSFfwJAtzD8pZA/Iht5xcH/52bNLNUIzAk=;
	h=To:Subject:From:Date:From;
	b=PyFpxPOO9UKSYihjvo6+Jh4INpCiBinMTptTyp29O1mo8TaISLJZuWmAmTP3N1tMa
	 b7m/uS/yPr4DyJzr1mMH+KUBFutbD2ThkYIggXBxwXovO7WnVCyo7p2+ULeUvKwSLD
	 vymm+RmCwGGYnPH0SenfUFvp2bq4LkWCFBDeEq9/f0k0K37y1SdyjPbYDQn2CvfarL
	 C7IVX6SbsC35ZTxwCJ8tpWEjd4QctvbF2i71GHCYBh2wAHofseh/uay2JWAdNhQJ4N
	 7oTxNxD0BYnphFFj8h1+MrajnaOHcfeDNVaS+yDjA/cKkiwykCG5dp5zzKIMFFYZ6L
	 DtGKNSZ23tM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509FCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890059357.14851.268507395424505877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2400dd886c92048906646810372007fd4ec58b30b7b80f35286f2b0cf73d27d
Date: Fri, 26 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758900593
