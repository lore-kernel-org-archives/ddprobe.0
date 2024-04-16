Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6D83BB30
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713273563; cv=none; b=bYWJL9o88dfSf+jwRWzeT6cuG5egVZK1JBUW1XlX6f5UuSU53vhcqCsKz1h1gt3TWYULtu6ih2RorZwD+sZrtTrjFL2InTDMed9wG2ZecrUn62i9ZcuYsK3rOAxmNcFCk1WjnBttx8SG6lgjvOYtEX0sEU+6bXttAQam7Avp384=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713273563; c=relaxed/simple;
	bh=WpYFbVWllsiyOUUh+UFIfjLy6SMvvyHXIkIvYDf/XSY=;
	h=To:Subject:From:Message-Id:Date; b=eaALBXKGWRxap0V0nN/1sR7sn9qXuZx8BdhVdelDmo6UDH4lWQYn85zRVS2HvIepVYkPott4dQUdR9+4jrWdSEAsD7hh0lAXDICF2HzA7/HEC51pNo5U0ekCaDzJUUfRaOUMRvSoVWREhmjNSWdr05EolOp7kAwCEO4+mFnmpO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpIycngE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpIycngE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB6AC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713273563;
	bh=WpYFbVWllsiyOUUh+UFIfjLy6SMvvyHXIkIvYDf/XSY=;
	h=To:Subject:From:Date:From;
	b=KpIycngETj2Z/1IfWvx8vQYIXlFPgJ5pcuGb5jIuY5eWjHB27iQJY01529TiC51FQ
	 +mGgrhNxeLmn+k1+rD4Zf+1KZg3sRRXZfOR2IffzOE3tqCm/3Qv1Gvt/JKwjaHl/1B
	 sw0VVUoKSV8xgoY0A+dVvqx/so+ou0RvUp0aULKkzOSU+S7k8ffRx5KiMs80mxxCSJ
	 1K7l2EcLdMkJhJ5BJY4R9HBZfN4m5YLeAXqd+1XqhRYSkJ8juTzA+5wIqfkvmerp+1
	 W3oe6jpHlZ3PkEMxvtLKPkeGHCFHDXxgLUMhHFoyO/R806GysZwoUdtASUxxHcgDA7
	 lzdtxHAypjqLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1389C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327356284.23411.18055403951405160136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a16681a30876b3722825e50d744e66427f70e1644f61f5c184fbe14bc1c168
Date: Tue, 16 Apr 2024 13:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713273562
