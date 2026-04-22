Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA3C36C5A1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776889654; cv=none; b=tICE8vMYpOwhiAeqQ+ewaDOnjK5zDeBpwYd0QN+ZCNRwBTMFcpbEtGE6GjFr4P4QLl3pgq09LJGNgK9ikS1W0EtoxfkdOM/JLK7Hmqia/LoWy5pZg+9hKW0DllLhgihdwTd0wJOxdJRUvRXJ8ofJpWVjiI4o+wjNV5xwdQKhjrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776889654; c=relaxed/simple;
	bh=866FXjkM5yeATmxqzLPIR0AQt69MaxJ92ML2A+y5p2Q=;
	h=To:Subject:From:Message-Id:Date; b=BBLn2TZ8p7zkiGxpX10oyaWvh/v7HjtXgfaq4VAfwXQepnf0RFfAOhnfXgagqKAfK369eNzw/rO4QQeTkCE35+Rtat2m+zNJ6bHuTgKEgsuHPdaQmfTBHMYgJnVlfcYOdhoHehYxfogLa1y3dxWl8OjE70GyP6yUNeqm2LE6bdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4dGmPJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4dGmPJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE17C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776889653;
	bh=866FXjkM5yeATmxqzLPIR0AQt69MaxJ92ML2A+y5p2Q=;
	h=To:Subject:From:Date:From;
	b=j4dGmPJOBDoiaYo93aznynOOgHEaHbSO3WLt4/eFGsp1v/1vHO0SNao/iCxsK2B2C
	 YEsHkYdg5XXNrNzNgrvwaakvwxIQJl4O+PQ4oAAFD2dpLrY3rE7BhJ/h6VmcHjguaz
	 /hNjeswGgU88R0fxtrgnGUKdraLXgAJKuNxRfs9wVh6ESZKvMFE8bKFJZZEJe8byWK
	 Sn77YAYyiLqZkoqyAw69m/jHQADSVmUTcFCbNOfQH34VqT7RO9wi1Swy538VkLSApB
	 t7LS6XkuhJs8k8I+1btBq90U6yZWVtYBg0BReWh3ER/cysikibMLf94wGOZpEPwlSC
	 Genxk+yA475eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C9FA1FED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688965370.24219.16439330870741984516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e89516464049c9c34653f4aaa68b3fdf7719c26e9cc39a24013aa051cf5f92
Date: Wed, 22 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776889653
