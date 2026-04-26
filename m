Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20966311C11
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777191454; cv=none; b=I6F6FBJp7QOoscUhPrDCbe+I6rN2nKbe37AwZMx7VSBmqxwIO+rdZYLxjva4ZfJyFxejIOeuVjK/nu6pYExXkHLjlZck3K2yCVg38PrW0KhCZ1z9Q2VN2wpO7OAW7duGwUSMayFHpUsD44OwWU+0sADrtRcMmu7JEPQkqk9jOms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777191454; c=relaxed/simple;
	bh=27qTHLzL7tI0514h9yiXhzLVKePXxcmqlsfouPpZcsA=;
	h=To:Subject:From:Message-Id:Date; b=fbm7QzwPQ2/syoSr9J7jplE2Tv75fvBPWZ9kvINBbIaraZFGU47s9/P1kiznR/+XRXCH0OZPqyKY4Ye10gDy8kgjX5IV3OJOjF/WBWyM35HfiJa/MvnX+LaQnddDWLD9TCJePyF3b1TbqpIP3gAcLaly26WtWZrVs6ABKMzju9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVZBJNX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVZBJNX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CF1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777191453;
	bh=27qTHLzL7tI0514h9yiXhzLVKePXxcmqlsfouPpZcsA=;
	h=To:Subject:From:Date:From;
	b=WVZBJNX2G9mqc+NstMJr6VeX/uusxXGHpQw3165h2NoCOE0TczdcEFFEX8wi+csjq
	 NX6BhTI4CbtNeNWnQOcp1CdEq/IYrBwXjSLsC17SHyAKQcf/ifi7wPXsqWbg7GPPWP
	 AJq4MlS3/DtFU0hwbGHnRTFTKsRAOiG+tf3YzEgR51lJkJQZlqi5mWlB9WzcFJVbcG
	 xeIjaeD7TUHlO8siZCRtLeGaUlnA4BmV7LUIwN+0X39SHXthV67SCyuDkqVAVtaoF9
	 YNH9UBSOCarXqJWregDktLm9qX6Dc8RCwZZciWYIfkvwx80Wf1EJw2LGhgbWH8gyRS
	 sxxdfWPIVcLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A944FFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719145368.16472.14457058163787373675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19efc0f6a9ecbd4432404122459855382ba561b4ab8257fe6a2f7b89b48e430
Date: Sun, 26 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777191453
