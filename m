Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDBE78F39
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750397394; cv=none; b=etGVKmkAqcmAU9Py1CmIQaPeZhMLOZLXURftYj6ujrCZNexmmD8Hh9Dvvi/omAkdQMLdeOluKm8/rMZPzswKC/6lXIV5CUSY4tWVRzV4VJ844y8xS2+vluZ4k4lBFZSG0RCRrPvNv+P1RDS6KrYYP1AJk0lbfIkMq5QvrJVWj+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750397394; c=relaxed/simple;
	bh=P/xQYSVSxEF30aBmP6lhn95Yg0ZWIupJR1LcVJJ9Aq8=;
	h=To:Subject:From:Message-Id:Date; b=EnJFF11gSQJ+qSDhpNC8HMoE2OE18xHx9Cch1IhT89nJf2GW9uZbeFjT4gRQhSS84TylaRZffDjk1yXO4Wf6/BiaJxaCSd6BpZzvSYR3JcRR4tv+SpKiXWH0Mz0a+n1Ubzdw0x1ef7HPAMdmxpoiQQdQ8ojdP6sZOPLTonVi4GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpCm6eh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpCm6eh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E974C4CEF2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750397393;
	bh=P/xQYSVSxEF30aBmP6lhn95Yg0ZWIupJR1LcVJJ9Aq8=;
	h=To:Subject:From:Date:From;
	b=EpCm6eh2b4aMz7LjM59JRNdgk8lqO7SGuun7YkY9/1qV9LwGRdgXzRk6+voXsdnqn
	 g5ag5AoLAVDHqy5J4NsYTmSJOWV4SBA3gf8qnbo5mVUo/5PCQAQ7S2oYfXnk06v27+
	 gaqyxNNQ2rZLsGpl4EQGXyNeBp/9fbVQhqirp7+mgFS/Vho3SbnHWjBuByN6yfsZyN
	 6GzcS8wDDcs8ID1v56MUVR+nAUg6V5bKVuNmvapoSBw2UkolWAOPhw3CO1m0etdhhp
	 HZEuRkQVGw81W57+L0cpZtPexI2VwzS5l1L+j19CPF3rEA4s8yY/DZ557vdzLcl9b9
	 +Uq47GRxcxuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEBC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039739357.14439.542104309020604836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc6cecb03f945e85ac128a76bf0749e59c684f880cd04f478b27ebfea7716ee
Date: Fri, 20 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750397393
