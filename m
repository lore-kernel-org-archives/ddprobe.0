Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D593559DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773948294; cv=none; b=pyJDtW/EQrolnnH+ubwTBO0wz0WQEW3pqiIngykmDNCeqJOPB3rX2mQOmen43m+cTSnntTF9rPj7Q70q3wB4SuZZmImW4DWOGO2qdKQbVkBELTV2zJ551CV+stQxP/7npvn4kIyesDKSwyc/tfksgeFbKTBrW6JQx1RqopCI7kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773948294; c=relaxed/simple;
	bh=YHwCcsKn5eOY+qtLD4qGf5braIc/VSM9kyx7KiHtSyU=;
	h=To:Subject:From:Message-Id:Date; b=rGjDhwK2eNPDnYuPAAzXtN+GvdqQ1PhXEmdyHBJKRF6h17Mw7uonC0YIr81MYnmB4npkermfNZVKiBsS8NsVsq5RPNRfbNp8B9IpTsVecR5ZWRGy1YlGpa+bk9hrJKfk3XEq3Yqle+eR7nfvZXVoIbem3V6W/eIQvy/Zv92u3X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcMej0+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcMej0+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E9C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773948293;
	bh=YHwCcsKn5eOY+qtLD4qGf5braIc/VSM9kyx7KiHtSyU=;
	h=To:Subject:From:Date:From;
	b=NcMej0+5d90ax960MOMTi2znFJkslRCcuXXb3yuWwOjCAr1vlpqicRFdk8AgKfOFT
	 UiMzchE25r+bw7cegSjn5LgGvxAfDnSL56TSUPYFtqa6pPEAeJlxYEHVbWHyDqY/Ge
	 1ovVmqMhJgz0hjErPwScKIfcRfPcVwf1OoxlGZB7E9PFmahV/qbwWKaAyMERsDopko
	 LIn7MZhW6G0EmkH871uMqrVmxwAp2z496+/ccqtB4THUGGf1m30IU4JvaIVMrUKfMn
	 dL7HdSYWalPk9FF66qh1jbZ71SXEcrafKzm7rGqf4usEf15SHrsxVA8RivpkjTiC8I
	 w8kxKLV/baemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CD1091911
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394829358.4404.11720597081867266246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fe2c256102c05eb51cfaebbe8439684830ea6d27bc90026680c1dd80044fb0
Date: Thu, 19 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773948293
