Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7079E390235
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781192794; cv=none; b=I4kSfd7Weu4mlQLxQyF6PZFFRw5acXIwz2eqCte8Fn8jh19FoQjWZRXayXWIH6J1IyF8lIm9cV19trLXOzFgVD1QULj8+hUQM305x4W8ruUYHfUeO9s46p0m8fA6a7dHR2O7CJSK7nE0AdzOPNcX4ij0p+Mrkz8Cljz4XkLvYPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781192794; c=relaxed/simple;
	bh=BoQrI/is+AJdj3ezZcUIKUdsxkBkMOPJfGz9v+ESc8c=;
	h=To:Subject:From:Message-Id:Date; b=Ljv5ExVPrljR3u4Vumha8ONUV+0KfB1f6sAutDqZLSMah370h3Adx4wdt1+NdtRrGc7u+2FVadw8wouNoL1s7tSzUrJsTnRlxYE35s1hr+VgDUBDd6v+lDh7qAPGMwALQnfe2cBeK96VW/srAH5dCjsDpOv7DVT9AJpICLDmFqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtecQQ3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtecQQ3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0FEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781192793;
	bh=BoQrI/is+AJdj3ezZcUIKUdsxkBkMOPJfGz9v+ESc8c=;
	h=To:Subject:From:Date:From;
	b=VtecQQ3JqV2AdPN/PoRKJEHDsFbnTfpKM9EGlCzTPzxi1vo8dt4DLik34/6VXnZu7
	 vILlDJ8JPoLbLK7AUjRISb1KM71l98TKYdbUSkp/411qmyJEYwy8BW4gkboJ+B9Ge8
	 UrzA9RmvOf0QlWGwscdfezABskSMXJr6LF8zGG96uZuo1jt1b8QAYMFwXnAHVeVpo9
	 ooXV8NkknaUrjl1lPWIPWOaHZMoAdBhH297rwG4kUqKalvGBFViBQUO75KsA/z9BIS
	 nYZsqLxIJ61hMktO8WHf4PpaJPD4Z+BlVaLRjE3SflMfU0vNFWYBVsXo0Ty8kfuTRl
	 widEe1w1hEMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B59CD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119279371.10493.11831466862742210952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6735ace00925143551101eddaaa4435037903eb41b0afab89ce6534565166f8c
Date: Thu, 11 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781192793
