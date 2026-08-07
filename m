Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0EF23D2B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786132234; cv=none; b=fBuRzIoaV5OuhZ9iNeesKdVGjnqHfta30duvIqk0wLppTbXffGtIzKNJrAG3WVL4K3byj2OT6UkxTswoznE/r0pK+PfLJKkzsypsWgobcFLqjZ/uSZR5D45z27pPt9NLvZbhaWklObpMeJyXTtE8ukWIqv48XhORiUGWRPDM4Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786132234; c=relaxed/simple;
	bh=WCVzC8gyTcWePdovQAnzU2LuCTCzAzeOyfgTkQmUckU=;
	h=To:Subject:From:Message-Id:Date; b=T+vcv4Mxw16fYPD/z19rITB09k3Shnsqw3R4JApNL20SgTyawwQQm5ev9ouQ5rqXnjnvlfchGTZokCb+JbtCckgJrH12VVoeNnnvar/b1BpnorcEnk/E6SK8N/7OOHXyh3Tzl8qKIIhQCBgOw5EeZgTUh3gAW4G7QdkY8M0kNFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+skltMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+skltMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C04C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786132233;
	bh=WCVzC8gyTcWePdovQAnzU2LuCTCzAzeOyfgTkQmUckU=;
	h=To:Subject:From:Date:From;
	b=U+skltMDIkMcVSucBJMCoFoCI2InvRm8GbS+mXjZRyzMya8QtCmLPqs7Pw9djdcZd
	 vHwGcQa03tNlzDMRS0/+ZqZrI2fOsP06Apt4BaWHlY/uInse0uSje2CHIuFu1eE2sc
	 Fdljy1lAPJo04D0jOAcibTlqJYa7hJZqdRu7x7tSDLV43kzWxwDdijxWloS0TJaagy
	 w1WR+SgmP2s8cM6AIuEeXXa6xkxqWLlE5BnTs7113l5IRhCeWXfxtSMrt8lp4jP4/9
	 vY2izEymCT/O6WuebTV7t0dhhZ5WD6tVDrYbualxWlKAJ+BPVVHlQDzW1m4yRAh60Z
	 an8SyxWeJMGBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A6C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613223369.29302.7486125759815958059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28a66205f6beaace96863bd6acad98d556cf7130fe37de9f7e40c220a9402af
Date: Fri, 07 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786132233
