Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362712F1FF1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751075994; cv=none; b=Kk8uPA17Qsa5ZF75d4s/XH5KkrpMhnaIwqX6MlIVJ9bGl/kowrX/dyYObQ/hCNQMWWHnFGqbNNCX+81vLvtmB5/lfX5MHPlNovkbYRLrtteXnG9LTaWeGEHpqNRX/tm4OyZL+sNRfTDY6JmmKOxvIoVbV3TroFgl/xs6YgpecfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751075994; c=relaxed/simple;
	bh=hcRxYkVzfFbJZFDqG6MqyxmZqXRUSAnNBuZEaKiUD0k=;
	h=To:Subject:From:Message-Id:Date; b=kt2z2tm+TzGaBJotUb3bENlvQiOuO9nYktImKibYkY4A2RrjePJHNhTwaynlXm64zbf6TA4LDKvg8lllIHBYg/pw401p8XH1KmG2MBb9pBWa7yLgEo9S5h8bNz7l1X/LtpW07BejB/W0vWgKiODUR6b3aoCkAm1Od0cvRKnr9oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyxJhkgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyxJhkgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751075993;
	bh=hcRxYkVzfFbJZFDqG6MqyxmZqXRUSAnNBuZEaKiUD0k=;
	h=To:Subject:From:Date:From;
	b=YyxJhkgJcd5OX82VfV42kTLnxd+PFqNUtrvQ0oq9NT0ZQ2WIiTCN1eCst9L8K61RA
	 RpT0ilc9q6bQUY3upGwsVKCqjFo9xxCa04Gxu5chDjQq37vPjq0Ecs2NA/geoFrJ7e
	 7k9g+Dk/E21WjaI3o4pJPA19uhyMORMcFbTV5AR4cBFeq1LyPF1g50bO6f9YVrvOY4
	 zNHn8QQ8pBpJGdebPEb8W703cPI0PkaqqEEw68j9twKxu/78wGR2xaMm7uPiDmCFRq
	 aR3+L/raknpjLseDJioMg7jwFn84EMiVGHcKby7FixzjppIqrymupWItvrXGzbHFkl
	 GM7yinECAX2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA5C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107599358.18868.1545234235645621718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6804fc85ea1dd5f33d2deba0b64bb330caed7c2a0c9a6ddc6fe664b3d109a74d
Date: Sat, 28 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751075993
