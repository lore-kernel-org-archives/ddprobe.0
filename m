Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB4625785D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769533434; cv=none; b=uGrZAa4tAtpIOf7HtFTrvu5YQVoG0a9uBRECV/+wOOlaKcg3FAbYapkbY/Z6FpiUagWZa3eQA9zEekppcgIn/jqU450Num10zRfT9OqgWjAIm/xR4Wv8FJyed67Hbujf6/BFSEVTT7snLqAgu3m/nm9QdfSp/CMeM7XJDfEK9os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769533434; c=relaxed/simple;
	bh=Otj5d7hpTyuVnCPEuCH2FY/YycLKkem7W+50CgFaXrs=;
	h=To:Subject:From:Message-Id:Date; b=h9VlISbplw+OzPWk0o5Iogdvaof85fNItxloETXRm3qewQEAy8cFrP2YxvDKloCAUsZ6fp5ki3Y90l3qmcqVRpzRHqwK6sbajghWAr6EHi04IqBUHTZdi4RrJU3+7VUK7Z1uXZdMSI6xz2cG25Mgoe90w2UFKTUs5PAWyxxdJRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv29C7FJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv29C7FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A7AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769533433;
	bh=Otj5d7hpTyuVnCPEuCH2FY/YycLKkem7W+50CgFaXrs=;
	h=To:Subject:From:Date:From;
	b=Jv29C7FJU90f54ZtHomqqoVDfcLN1L9xBmPshBMMBSwzjtc/KM3jttNGbNwm+yoV9
	 9pBQegP+zT0aI5XpauWuVRlw+tnycG91mZvftF8VYNb0FJpAgTCeZg6iJbkqjxEvJB
	 EbZJ0601w2Iiz8YGnKsAfh5+zgzf47I7/PF8yq+2/gKJjH0f4U4q6bYQrIF5DY3Ehh
	 osva9KXT722Lx0iO4IQd1ORxa/dN4KWcPyUBcGrG3VfTfdUYqmeeyiH0FL7Z4TQPST
	 w4Y/8HFWY6JQNouWeAo1fhvw4IUxTg1nc3kMYEFVPhH3mV8r9BjEFo0/w8XuGBBJ2w
	 3b0wVim1ijqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B5D2FEC1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953343358.16831.7871085849531831366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accd0a1ccfc9be4acdab7b138313439e18165a00ebcf5e5c2453fb2d3318c6b0
Date: Tue, 27 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769533433
