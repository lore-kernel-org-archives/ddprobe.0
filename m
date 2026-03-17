Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0707D39F183
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740694; cv=none; b=WcEOvoz87yPLkgT2IlqUHqAb8aOhKB8zzw9Acq/RNNSo3zKpSgL3zcvmP1kikTuSBRBgIGbpiFQGDYcZVGnypazjz7uofypDCkC2bWpleWGxCKPontnyrSQhzvdiJST/aLq1Jf7PIDKShihOZROwRcOIos4SECO1ahUMoBO5V8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740694; c=relaxed/simple;
	bh=f7ECH0nhxx+VoxZqiy6H5dcDJvLAAJ25j5CfRC9utko=;
	h=To:Subject:From:Message-Id:Date; b=hLrwL0jQ4p6nP37GNnFLTuP+cTkp1ogimYjqa/q7jQeDDJOfI1YUs8Ah7EI7F2mPn+fRXCbjwLLcNNX/yTgzPa07Bpiz4Xl7rDy3UHO1x7IkXvzNFytk3Api1vwqanATVebAdTZFSKbzLUjJqPetvIAPaley5tHo7AqzdMquEdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5fK2UoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5fK2UoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF96C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773740693;
	bh=f7ECH0nhxx+VoxZqiy6H5dcDJvLAAJ25j5CfRC9utko=;
	h=To:Subject:From:Date:From;
	b=E5fK2UoSBeMTnk1bicJ+O76bAHV3ykYVKQJNos1XZsa+knrLn5GxsjHAmMQub0sSV
	 tyMuS789tKFnFHAk8+P5sSyu+SIeErEGAs5XxPGRwcACj3//uNzYqWrkmkt2KGVlnT
	 Rzv7rawuGr11XYG5gddTzqYk38hzxikfOW4qlTQ71AMFGuC3EXtWzV7BxSG94HXMiO
	 ocnh+DPJgRsaVGFV5wFdGMU4rn+DnTL79ANPuunh3NR0SMbB8BHjj55Qrer8NnBR7d
	 ZJFDbUbFtwz1W52YYE8i3XgXDb9Q6t6qy08m4cT6wsf2Mqm14XqXVNsNnAxxb6gHea
	 XtnCv/qmtgA4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99392F3382D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374069361.9311.5972836718074086766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32526bbd57e319c453c181806cd08d3bf2e7a0d013e53118c798e110955ccb18
Date: Tue, 17 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773740693
