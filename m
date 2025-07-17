Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289D229290A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752746394; cv=none; b=lHPSSyirWPqX4dJgusQae4ke1ztYs/vDoD4PR9AeQyee59phs25arnQriDqYUhWnqzw2StKYIbyrz6ZYhB9kfItl8+gC/IUtrhjlRlQvenijFiXASQicxJ52HuDo0zWyqAin4xJTugPxQB2dfhUASwcKI/U+Gp0i4WKI0VV1jC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752746394; c=relaxed/simple;
	bh=lTkvjdtPwuNcXFXdnRW1ZIHwUfbK+TsqWcjvAUbEH2c=;
	h=To:Subject:From:Message-Id:Date; b=LeuVHj6a5rgak70N41Ohi8jG1HW88ATfmVSmm/o9u78+IvgcfA7hd9j4KNJW96TqYVlljS7PPSANDqGxvcjnUqP+WqZN9cAyIJksKAYdxzmSWAofE2s+05QuFRV+YtIYWxz0knVUf/IkJv9ATE9Tk/T+u1TPCFZGKAeyVeDS7VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3SvCDdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3SvCDdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0A7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752746393;
	bh=lTkvjdtPwuNcXFXdnRW1ZIHwUfbK+TsqWcjvAUbEH2c=;
	h=To:Subject:From:Date:From;
	b=T3SvCDdbuObmOyU7vrsSSywZ+8ASyDSm1FiHYDDv5pCXu8/dR7Gex5m1WYH2PNP5D
	 XtMddqgH/ZdNrmqX9D7TXUEfWbMOI+qQPoBA/4ksG+ZufFft9dec9zyX3B5t6ont9h
	 JTk7DUbAS2Clcrul74ShwGn8dljC4BK58eB4vnrd8Hax8OBjJlU1MqWa0r0ukQPTU8
	 0M0sQKBvF5pqnGNNNFVTb2/YXnhV24MHh6GsAOEylHhYzPnl3M7N6AwGGsIeKPcEf+
	 AtiHGsVxph5CNOHuYflCSWj62BAmy5docGISinl5S503sWOGqo4tOsvl/0MByF1Rm2
	 LYh5lWpW2zSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB6C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274639357.28375.16348483213939511890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fa56e84d07a95cb576d09af730dde13a018298f5a80f702e93d8996b7aab3f
Date: Thu, 17 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752746393
