Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4220039FE4
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722987354; cv=none; b=trlL3hXdxauGUKwaUeewXypRiE3vb5oFduvXTsr2yMXo2qQ//07ixtGlwj8b4//0Nlez7MEPBryXykFpHPdViClCkIzVzsvVICOJEEGfwtjgIfuElU5L4BlK1KsooJT2ibbB28nIgCADxWI410/nw7NhcIzQD796rUGMR4cWwJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722987354; c=relaxed/simple;
	bh=RzNoA0fsuAODKdPCAQEMqEs1U+YmELQwmz2vWmb4fv0=;
	h=To:Subject:From:Message-Id:Date; b=IRS4o1ktA3q3rQv+i8OO/fSr+6NQl1kf3ofxl8L0s7tTsVFluQjddKqxuvLcqBsKBzDK6dnDXXTvQhlW/ZHSP1djHgznNjnyYpqKp8xMiHadM9FddAl4HwWrF5/STL/IN+ZXOxgewKZn6lZ0aVkhIXNdpWplNpCQgTq63tb60u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svYG8UCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svYG8UCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA418C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722987353;
	bh=RzNoA0fsuAODKdPCAQEMqEs1U+YmELQwmz2vWmb4fv0=;
	h=To:Subject:From:Date:From;
	b=svYG8UCf0zT9X8waLl2Fgrd08x5Lc10Va0TB5shg4CpMQ3GHCiCMPJe4CmQ7tFpha
	 l/ndejz0XbQqBcCVtYQYHEPoSUXEp+af7Tf8Rt2Xdj2HqhZ2OjT58mdh+9uHqUomOd
	 wXelBWiTBBh7CuM32qQ4IY7hiJHPbOXPItVlhyMxPmYfAS1Wsku8jJWZsOOdL9B0qx
	 lddbfCWERdfK17ff49Hg+ihHHyCEsn81s3CmA52QpCQCFG//pp24hvQCeI+NhlB8/I
	 IrE9qmjY0Q5vEiBGXo+20/swKbBVdhUmSY/5dnwAhK0pf0cmw/dqicN0AsszjQ05Yw
	 22WZSisPB+Cbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979CBC49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298735361.10708.12339237645004624349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29232d6fd564bc9b5a927385d254fc1edbbaf42fb19fed6b6076f2f2232e3886
Date: Tue, 06 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722987353
