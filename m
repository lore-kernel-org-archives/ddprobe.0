Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1995C13FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707247097; cv=none; b=RJPTYCIe5e4ZWrbGO6imSLry0thNgZF3NhJGHh2ITut7gOkg2Ckax83C863UjcXH80o4ZG3xqWlLfzm99p5kmYXq4SJ96FR7Aqw2E2CAI38udVMqQjYL/8FtfRNrmreTTBtG5tb9F22xaPEy6wap5rjWJ8AeB93BH0aQgrKhfKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707247097; c=relaxed/simple;
	bh=e3YlVaAioLYpWdVXVa4VQKYvXHyzgAw15Bk86LzgPRE=;
	h=To:Subject:From:Message-Id:Date; b=StShNFNSik+MVQIQI05XK06Zl6zOKSuCCs8DCbD92yfkmJKO711dTdR9fKJF+2T2xl89mgWaah2K8m2FcghnhA7W2yfv4kO2hzi8Psylq3uybT59xZzz9gy4Rhkzw5MNwFld4PgP//pNpyOaXKudOgACSgkdvwbGfc8T9h8yJgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBYRWBuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBYRWBuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA29C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707247096;
	bh=e3YlVaAioLYpWdVXVa4VQKYvXHyzgAw15Bk86LzgPRE=;
	h=To:Subject:From:Date:From;
	b=UBYRWBuUIX0TXPsaeQFgKQHkE1y4pxC5nJpzkDUJFWdVE7ojybkPapN1S8bOaSZ7d
	 B0ayOjI1pi9762LWaFOieHLoYFYAQ9pJsiX6FuRkjN2cwp65RmSWXabyiBXcy441Ua
	 w73z63O6MqaiRJV//2UVS+cE7dJII7JZnM4GW6vV8RAt/kh1LDVS0l9PeqvkIRtSA7
	 DwRjKg+Q+qdmxTfccuMqqpXVnkVQ+e6FXk8f9DdPnFO/DifyY7/xl3XdB4GFBDwzdb
	 PasV3z/3huwDT3o3kUdD8PnkF13s6jXIY8i8JgCJScethvk3jffAsMjCSrPEc5/tdV
	 WcyjeBROmErsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0BAC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724709640.5200.9471948449124222948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a73a4aed313a960c5264da2c13c7c7d7dfe3b3beff52e2167029b865dbb33b
Date: Tue, 06 Feb 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707247096
