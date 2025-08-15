Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9F11EEA55
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755267594; cv=none; b=UB088Eu68rvrxki+QZjI8t4kVnTdzSWGW/8RCr9GVu7r5GFLjb6tggY8oCMBzjpYeiJN89Sps4Dl/gnUwrDJFlLCYiE+i2XgYWQkls69lTAGQsi/nSV4q+AM5O4YfM9ikCpX83Dnzaufcf9YNc/JjvEadkjfT2s94HGZCp12+LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755267594; c=relaxed/simple;
	bh=MtQvRyrq1i3bs4VM4PKh7TQ3ixUatk3IYkbKRBbfBQo=;
	h=To:Subject:From:Message-Id:Date; b=FWmc6R/zYZteasD6j+G5CWakRLdEZsDHc+TBpwLATufiqnH5HrF46yJZYrkDkYcd18wP7Y2yhINph+4avM/OnwkS/sDsO1dri1qYis62rCrF1wm+OFj6cAAXtvEb0WmLV7WQAZY4MT4NWe9OxdKnrrYuIETi+cewVxWRSxjVT+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G822hd43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G822hd43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED83C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755267593;
	bh=MtQvRyrq1i3bs4VM4PKh7TQ3ixUatk3IYkbKRBbfBQo=;
	h=To:Subject:From:Date:From;
	b=G822hd43p9ROJ8nSKTDtsJLlF/tmuSQK1N4Q0/vNcs1PDhADBQzr3rs2PRzQyb5++
	 0QWbIpDuKumn9liSBAyb9ViYZdmQ6DHZwH0TOLYfY7NaYGf2K1AhwWCqtigYnIvUNr
	 qExTCcMqqUWyScxO8ypU73zaljnHCU0L3NNavxFNlBhFP+M/byGbQS6Te7z6Y+NcFh
	 ea2S/LZxJMn9VAovFA6ruaDWwKg1+mPfflaYwiUQhEkKIkXwQGhwhig4nuAEzi3oSO
	 Wj+PlgxA/Zs41jEWqEf2MoCM+SwqHgwADmeL/vdVntYSU9l95QvL+o9vJ95vY+pWNc
	 IgdEgRASxgjQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E095CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526759357.7250.2256196595104721452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd4e00546a3c4691bfe9ebc74172d17bb72eb18a1f7d526f1b27df03549c126
Date: Fri, 15 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755267593
