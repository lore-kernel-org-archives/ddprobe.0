Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED281F9F73
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759507194; cv=none; b=iqVqkWGbAQm5n0ymzUl9dQPy6yRSjSsq6+tavuvLOs+KaQ6ac3xFUQ5m96g+AVOj8BSSyL8NQohcELJMWVLPvDh224fFzx/C8hGUPdvvqt5HSin1Tj72/14TNrYFfYuNG+SRD7sqzLlmXXgpETExmPo5kqiXbXU1o1fnVMPUEAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759507194; c=relaxed/simple;
	bh=YVRHC7RLd4fqG7uOCrykxAL7Q1hi0Y4MLM0zRXatMqo=;
	h=To:Subject:From:Message-Id:Date; b=SrUKBr7nbKOVKjMpvCzB9F21wcbIEvqzWHAlSBxtCtIQKR3zY3fQxc6TFI5ymNrolEVrxDY72CUWnJ9HzPyLzamDu0VJRIZQ0y3s9qTHyVBHJid6xLog/LgyE7+T5efrud/cko/dWrENBVZkSUYiA2/ouTZW0KZgoEmxyFAA7TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agYF9NPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agYF9NPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0860C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759507193;
	bh=YVRHC7RLd4fqG7uOCrykxAL7Q1hi0Y4MLM0zRXatMqo=;
	h=To:Subject:From:Date:From;
	b=agYF9NPkNfypP665/mmOOxMU/BKb/GF/NRJOtO6pfKvwbQanOiwyupcuzIX7I/ag6
	 cSYT9ZKDfVJklc5zk6Q8bbMK8vikDHZ+62Q0fJbHjhcrOs9WGnZ/uc3Qi7cy/fWap2
	 FRWKpgoo+6t6Hi04KHvSN4Gsyfj8HbDiwsXlguM9V3nQOtMh+FazAyL2iuE7uZMMQN
	 15F4zGJuwIjO36EumJeogb+05uHmxXh9199Ur9OX7vUNN9SLNZPKRqcOBYe5SFzoje
	 CbPTiQBKBu2kFLPt8whomGUk20rhWoEfGtwq1vqWhMJCMtNt+5ZiHAi1ZcO4yEKAgw
	 etkheKAIu9SZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4CCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950719357.11809.5299919198303881480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741bed712b3a04d753473bdac665345a2f7d64864318801057df71fb0a606679
Date: Fri, 03 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759507193
