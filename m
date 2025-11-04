Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEC2222A9
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762258194; cv=none; b=nWNS9mylvQSdSYD6T3shWlgbQ5NAWMBHPMaj5Bp8nXjFWv11PQl7A8zGagripnXD9kV2941+H0MTJKLTwPYYnanEJ5Eap58fipYD/jupI/kjWMzH8dtx973Lr3kDTwVonmRwta5InrFWsLH6ZhahHSQE4Ux4kXfOWly14dq9THk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762258194; c=relaxed/simple;
	bh=MSlTK6XeOtq/SLLnaKfD7TBcj7Y8tESiXGzZ6Ygl4RM=;
	h=To:Subject:From:Message-Id:Date; b=P3lbzUpCUvh03FYu5tZYjFHmOfGUqFSm+2WdwI3HbbA/eylPG8t1wz6/KNouPiohEU3OuE0YG9QZX8upLPXk1CF1NQUl2JWp/0xeXdlZpzhX835Cm/gSObNyjQ47ixFJ74DiZwufyPuwgetRdj9530jdRqzmHjpWF9XsEuNy2/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKbG78Br; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKbG78Br"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C1C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762258193;
	bh=MSlTK6XeOtq/SLLnaKfD7TBcj7Y8tESiXGzZ6Ygl4RM=;
	h=To:Subject:From:Date:From;
	b=oKbG78Br8Zq7puxECfJu/nYMjjO+C1yzSZv/eQAghLEUB3jkH5Tv8pSa802CwfXdo
	 4BdHLrTKaqOLm1T6Waew0kLyG1sAUabvPCWPfIcjUpkgtMhAIToV2o76+zHppdIDht
	 45SMUb2Hwp3ZgHoaTWUGjayOLIbWKecdkWLsJsxXD8WWF/y1L6XNH2Rvkx222mEkLO
	 sSohUqqqqkfX4k74yoXyx9cVA6PAkCWRKVXKLVIm7hVwXOuZSrC3ZdA8SBWorO1XU/
	 4/uQTP1Bj7WKtVN4Nk5FTYByYY39/+tLWXlfENXTSWvWx9PJFTNACskIifEyaMkU2z
	 6uA2SWYnsls7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC4CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225819359.20433.649256357150235113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4f357cf1448d3bbeddee7a48f1a57e1547db574df5efec26deb2d77404cd01
Date: Tue, 04 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762258193
