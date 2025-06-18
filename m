Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C524815D1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750243193; cv=none; b=gihqKdcL/EgLEJpr8K4GVgDzF6SF1NHL6CRRyK1HMj2oeHC/nCKusJYEKJrwzH7CCehrwJ/0QfTRh47Ebscog8kpMfV9KD43chO2AcG3fX/iIjAqBXRP277bqRrBZIR1jWcG9sOAOaAuFfta5s8M3spXylZ5U+SkIGcwPk9s+R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750243193; c=relaxed/simple;
	bh=+mzvAHB7w5PcA0oNmwuhL4NgWTbRMGg+OSSlqxw9N38=;
	h=To:Subject:From:Message-Id:Date; b=lhIhUo8DBM7WCYE3Yypj8G1wA3fu3hjxQ/Qio1qBCsOC8jsMPTsVxoNlM30nBMhMmVHNWMaKEd5LMdjUdi7y16WjfasS4sc/PsoMoVJCQdnyH++B9B4W5S3riPbBcsB9tZlEwE6oNpv0Ux0E2XnS9MJR0W6NBEfDTrSAHuVme4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5cRDIuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5cRDIuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A232BC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750243193;
	bh=+mzvAHB7w5PcA0oNmwuhL4NgWTbRMGg+OSSlqxw9N38=;
	h=To:Subject:From:Date:From;
	b=Z5cRDIuuenKRYQ5ebXprxxYEbxmr0lFJ6pIbBwNqt0cktn8wVPgdwBJ70qtZ3OIWU
	 y3OaBAuxIj82uo3pzNFqNisK7WPjFxsJ3emapZg/iOKKQ3DeGVqCcau64hfZRWDDWr
	 ks8nsxxVv3emCCsCyyuMR6vYlr85M0U5fIVW1/nfzLxId4s9b9Rgi6yURg/0RiBtJz
	 Bww7s1746s6sh+zbd9mwAznvoYc31dVBxJX6zJVmNEegjmst6+MqIZdy7ce+FP9eQx
	 1JUitJYIhspp0rAhp2vysEqy1lCcfYTg6K1S7/ZXcgcAQmtfH8u3paHdwFSiopQVd2
	 /0TNWDd71R+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA6C7115D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024319358.12894.1653093764473759234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a8a5f8ec076debbe29ce16456b12035c19a19d879cae80380ee562b162a162
Date: Wed, 18 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750243193
