Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2B5624
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720789703; cv=none; b=jZ7CtwqT194U8w5exUm4c/iKQHBNQkeGzeevxjfnVKvEa1t/pfOJJz4f7cgbtYxeTo9LCW1WYpdgfc2XGhRDc3F+TqGy/8acPU7HyU/+b/FGM5BhF/puTS94wHLZbw1cvVSCWn8MQCfgb3DF+aqswhMRLoIiDYMdBrRQzyYoQQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720789703; c=relaxed/simple;
	bh=LVFaJjvkjwb1NbVVNu/N3HZRQokDMZ81LDM3FbR2VY4=;
	h=To:Subject:From:Message-Id:Date; b=JFK+1bdd4fAOEWTKFp+BKXgqLnHjdvchz46dG+fZMhFAygy04NNid6D769WQG6gdCDzzs+AQASKBjge0X6tx9Z6hrhQm2gC6DS1D79MuFhieX5WZ7mpm6DDxlTN0s62EQb35z41Xf81iRcRR4gefkse3T4UfVZIzfAG5D4yFPhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQBmx4os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQBmx4os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF73CC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720789703;
	bh=LVFaJjvkjwb1NbVVNu/N3HZRQokDMZ81LDM3FbR2VY4=;
	h=To:Subject:From:Date:From;
	b=jQBmx4os/w4PdDkgi4GcfeodfNfWNRe79E5MC6N/h9P/hbQ/mcr0eyqMdW520r05f
	 ATisy8Ryo30fO39IGrtJm8U2dnoBOBqC5B76QKkNEiNBfbO0odhIc83KfRSxqTFyo8
	 8xIeyfYYQSxJVkZzzGqLA176dOJsGpmRrWoVbJhCESkxtXTquH48lCLT9dMJXbF/0I
	 5nlBikiqSU54qNJo6VJv0OtWwqpi6aa00l4Y7ryPBYUR9nktYnp/A938GxIcmLbWN2
	 /nTBcBbY7geLD7bSeRnkXHupKG8FpoWvMen6KygYmyDu4axm+/DRurQ0agt6vZJpdp
	 WyaO68r80yzDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD84C3DA50
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078970282.26339.4327390310982734206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4da4576a9408cc1e5a33d5c8d6a3823e06d8ce1fa74871348aec783fafcbcdd
Date: Fri, 12 Jul 2024 13:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720789702
