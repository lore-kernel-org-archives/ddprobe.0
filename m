Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDBB25B66A
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744187394; cv=none; b=A0H3oyH+ifJ1sMRywkqGMDEdtlfNIX9bUEh82qYxUCFhi5k8kFssCs7mApjE7pqoYKsPk75HnyC8OicP9vIR4ME3BgZP0hDcSXU/0HR6V1E7e8i5unl4KstqHWVwGAV/7FRxG1or8WY4YUZ5CrPMlRoLNHn3Bb+maoPzK1ercoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744187394; c=relaxed/simple;
	bh=Zx08VJQK9Hjcn5guBwMzJXMy0QjSG4cjBybaAqWI/AE=;
	h=To:Subject:From:Message-Id:Date; b=LaZPj9DWSxKB5TTVPTAtvKPVSGk4lEykwrSsUbMkvL80Bwm8yiHuuetRfbf7jGL0xczAIO7qVQ1kxbZliFS9vvhfDhF1qKd0/jB6xrxhPXYl0aA971ZO6csKYm3R7Xjbq+q2vFt3eDQcc2c7FC7S4W2JJVUfei6yYKJZsF8d6pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/a4r9Us; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/a4r9Us"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA25DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744187393;
	bh=Zx08VJQK9Hjcn5guBwMzJXMy0QjSG4cjBybaAqWI/AE=;
	h=To:Subject:From:Date:From;
	b=W/a4r9UsLJBNMBUEYIKQQ/QaxydrJKea1kfTlYTxXSPX/6LHJQuZwrwzP+MdTacif
	 1Pe3boUNJv7y9J0YGYmDs1MWgdpfMQ3ep4QdNxykmCZUEBl/wf6X3iU880Y/U2L3SK
	 VcNM++8BKHggkj+2F7v++zbZ3NKUUB1rOxTnY0IAs58bo+eEbxSvkYM0wrZErig7sK
	 fxGSGCEHunSvMmZj+gyJlmMe0i7SF0E9avtsj4pfCimGQiUS6A0alAdpnoCPKKIUhT
	 amUxCFikaBb8GfPycV/Z3Ni2mf3uMF95oXKCL05MCJ05qfawOadxDYAP61kNfeEn7C
	 ptWZH+PbehTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC5C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418739359.17524.14197483771905679763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac77598968c680eadbb09e7982544825f067e4e1fe314d0160c0850676ac223
Date: Wed, 09 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744187393
