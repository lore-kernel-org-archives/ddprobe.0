Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5FA481B9
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714756943; cv=none; b=QKrpP1ffzUe8ezJ8wBImyEyUWZi9jKlIR6F+VaZqtSNoK0a6u+VPXPtYUyCuwQ+4V+oAa120ulAOaOUEKUfsWuEKe9tsDLOBolS4Z75io2MciX9f5RlSyt2wfLopaM/wJF7vUR9BLwNUswfPHJibtyuNFhZ+YDXSCauxrJdsXgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714756943; c=relaxed/simple;
	bh=mqZW5gXvP+o/gFXGqpu1k0U57ILnEv2vb4pS5w91Afg=;
	h=To:Subject:From:Message-Id:Date; b=dey4kasx1xooEkU8HhFumiiU8PRAnMsYcPlizwo3OTQAhlwYmWn2j+LdbgwjQE+6J9Uh7PGwy3HRpQGkdOMGsijgkToLYc/TqwvKJde0bai3IaS37yrBCSZeQHdllsr99QlDeIkEuxPG5lO+EBpUIOnrJOhray546O4XzUBbTmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/JFo54z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/JFo54z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A23C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714756942;
	bh=mqZW5gXvP+o/gFXGqpu1k0U57ILnEv2vb4pS5w91Afg=;
	h=To:Subject:From:Date:From;
	b=M/JFo54zVRwkCYZWQysFAMkOyiuib/CbQ/OTKxo2OCYYzm5XfVSHgKweOT7J526w+
	 UNc6c+KLZI9NTykEMUnw3oRV+kEMvG1Pon9tDHxg02261BJnIN8tmNHQYL33R9wcQ2
	 Ay6WcYg690BwExJ23hZlb6D5aHCZf8i4SfKfOn/W6ylCFJuP2sDCaQGxZkeBjkALuZ
	 7jLrMns7ASPj6HoKVN27iganYeU+nM3SkIy/zFYaj6oGccG8HE/qYtsa/fz2I0z4Xx
	 8rNCRisQaT0UxnwNscxsjK2FLC3iGq/1x5pCtVqfm29gzSNePjxs9auy8NctSaf4rt
	 NBwgCHCA1Zq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D144EC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475694281.19313.5878903506553369400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ade62e5d1d1804586d8439aa2ef16d1d58b2d32b380ce5d4d3b448f6ee6e2e4
Date: Fri, 03 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714756942
