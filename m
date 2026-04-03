Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C3F3CF031
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775235934; cv=none; b=ko7dgp5i0YvanLxsyGyW4HIN7ktTlRoSKHuIqbMwGW+wJfZRuLIzP4cytK6DVbFt/AhcH1nE+7HDUmhuUigQiOmjBXCxjByfdZipXkAt6preIAgnPgf+8lBmyesPm75VmXMGtI90Ip03rnn4z0ODS2mramV2rpTfsA6w6rZTHvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775235934; c=relaxed/simple;
	bh=qUcdHD7mXxAwCcaYh2QlhBepVyd8dpgzGo6d8XEOkYw=;
	h=To:Subject:From:Message-Id:Date; b=JF20uusAqo0DvYtAAaFZWv3vQKlcl+YbFRs2svWqkyJjga5txrNgoiD3UDEDHHp8ahi0/Mp8tbuSf1r8DCDtJOysAF1/eviBLvZjMaYJSZe75P2lBC4DeOUBjYCwM2zXyKy9wQvdqHVMDMAjyOb7c8WzobG36YbWLsbJtdSI8NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTVMQR8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTVMQR8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60BCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775235933;
	bh=qUcdHD7mXxAwCcaYh2QlhBepVyd8dpgzGo6d8XEOkYw=;
	h=To:Subject:From:Date:From;
	b=HTVMQR8SJsgJNcyXLbo/nBt/qC3rygFRn3h8g913M47txqBe5JDnv7oyMZRlXAv/j
	 cYdf7wTUVoFsEb39ZQby0pwOrNROcMvvOejOJ/CKr2qXOupYYBPK2nvPW3yUVTstRa
	 nGYP9ce+YIj+HnRVx3INJv2ypJRDBdL1es1ympEFPqU/HtdnwOe1sqmvI/appNbTvL
	 vrJjKJeEk36j7YeRf2lgROHe96+lUkJ6SIdzl3FDYRPwBFb5O8gY3Q1VUCDzhC4v3T
	 eeo7isxZzKcEQUFf+HUKTO1IwNugLgIya3xha9VdZibb4X3Ci1RNnR3ev9NuQmMMre
	 nAw9EEOp66+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08BAE85381
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523593368.3509.18054500331222498891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93775abb2e8a63abc7de59585b80060defeaeb84c7db1d63bd55c123301c96cb
Date: Fri, 03 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775235933
