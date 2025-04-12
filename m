Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AD0DDAB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744447794; cv=none; b=ZSGBKRqCbSTlDR5mquJ04sg192Vi0JjSkC6ab7zjSmaxThkjLaoG60eq6xx6oWJmKdmmJiR8wND1sxulnz/3+PegVN85YzNviOdKACKV1pyFuKLLgubf9OoU8rICgdJ/8JiMzwRBIil02zmYjF6mm2hJUlffb50U8Hn/Ho3EIqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744447794; c=relaxed/simple;
	bh=vHv08jRQCfxbcOtn1SC6UomVMqbx/AnQ1vul9P2OdAo=;
	h=To:Subject:From:Message-Id:Date; b=ePVi9ff2tfxo21sPuQmSB+/0iB98edFO343wZpfQQ3kzIr6vUWty7JFYjeNkl35w+rUdZA6+9RhPG51eeVX1J02JgvBckM6QiXTmVGdS1kRwCtTDHhAoC6lhkeVm0cUFEruOOA+SS1nMTJtebSJ8Dc2UYz5+H32pRi/57yDRO/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUV6rWD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUV6rWD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C22C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744447793;
	bh=vHv08jRQCfxbcOtn1SC6UomVMqbx/AnQ1vul9P2OdAo=;
	h=To:Subject:From:Date:From;
	b=UUV6rWD/e3TylZlsnc8HbIfKzTVYjOUcRv1/90fE7NjEqts0gdM6pqpI4U2md9CXP
	 Lu8VeMK2XoWe3Nwyygty2KOq2OCsfUXw/gmzpf9JyumPbAcHOpBYkVFOaJVQBUj6WM
	 2MtBs3vs7bjzfnDNbnbH9OExWlRaTsktJ3OYSnXj4UUJsyK5gNu19JFjblyc3YymUj
	 PmI4kJPTIAxiLiklBGPkTTWmLET5tcXfWp7fGSO9IXCB/OlWbdik6NsWRK5IyLb3s/
	 VT40L5p194ZPlOyVkoY1mObPL1vjAWT1/ow52Su7YbEKjp5d5e4tpjsv7+1Wtu4tW0
	 oH1kdB1Jo0Kbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F9C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444779358.19177.1525761402678760160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b579406d7fd3a2f1d811224dee124112e8d1d13bff9ebad25491424b1acb9e84
Date: Sat, 12 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744447793
