Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40740258EE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786411234; cv=none; b=JNqcNvaAaEGu0/bJOYFk4cFZvFXsHPKXR1rdi3eV1RECzxxOedc7eoYGYwFus3xZ58XwsuZX4GZsdwfGsjPkNZHmSR6K4HDD7FS3MIfTHwgVSRlLLEa+ftnWyp/DMo2GvGyMdaOy/Fe3MgeuU/s8BmrR5zSdZh8Ws398oi6ydag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786411234; c=relaxed/simple;
	bh=RTG0gbk7OyTciW0IYGcmc1dpkb3aTNHxX2jP4QE0uFA=;
	h=To:Subject:From:Message-Id:Date; b=Ll0tGmCrVGjHbbH5fz+0sOy41QSl5wnBK7CBFcqp0tG/uRmYPSanKY7GbnGDy+X011QYk5dElGaWOYjN/CDIwrOf6C7xI1LWd1SKzPPRBvXKPME0bRnujUmzOJpvUhqK1+tDowP4Ce/czuahM4YW3D4teyA20OqkJUqHJcT3GjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGBwJO3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGBwJO3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED50C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786411233;
	bh=RTG0gbk7OyTciW0IYGcmc1dpkb3aTNHxX2jP4QE0uFA=;
	h=To:Subject:From:Date:From;
	b=iGBwJO3THTN8oraqgZPakxTw3s7Cm3+bnzjr9rEIPAIr3+FAYig4MZVdlwzjLKgZd
	 WP4XHuMhTuqoQqJEbn+eja82rZ0eSubwj8u/WOqsTV/1l38t9eyc+C2j3bjvPXD1mL
	 oW6Ae0WLFRRmS2Hk2mbmOy1ovpNT13oJUtMJVESoIrzhPJ77uk0w8f+IxTcTb+dRMq
	 tkLw16EoUb8VY/ujwzL7AP70TW5I7sL13njt0vn66peqN9Xd5J7zoxcUGDgiFKvbYE
	 4z1opEqjUWQxr2qCr2vBPSo4DJ2r3c03l9RsddtYlXtsQFrsPD59cFFVx7G9d0DqL9
	 VTC+LY0aUXtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB795C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641123369.16761.924067153163500994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9f244aa2a3bb5244686446f5f4b247f7db6b6297d8afbf58faff3c668049f3
Date: Tue, 11 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786411233
