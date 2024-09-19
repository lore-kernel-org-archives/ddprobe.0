Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A34199944
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726766754; cv=none; b=rx1DDyE1R4OJMxF7ebhoa0bL+s1kr6DArHbUm4m6UNMYPvBoZ0414drh5UuOwzwI7aIjwXehum0UbrfBUsRvLgVX/8MkJK5bIJ8bMd0RVZFyjVghV/2c5NPiHZhG9brog73ULFUjKTIb/7c0a2eeBUfwUU45dauU4bIdblQyeYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726766754; c=relaxed/simple;
	bh=sApf5rdpiraOMW3eHZ6yF9m7TkjCs4iycwsV58/V4ZQ=;
	h=To:Subject:From:Message-Id:Date; b=PioIsTRXgkgJ3GIywwpFJHZkWrI9NjG50r6jQlCb7tYaHEC1N5uloNVawwf2ZCRfmgC24eyvUCOYVrprqfPbZeoKHYRIJaDD4RYRXptpJFTO4D9i9SC2CXsyTcHQAWHSJOq8UJvQI+wyjpfzm5rjUEqoLyLvn5vdcd44OdEHek4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGz+fhji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGz+fhji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACABAC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726766753;
	bh=sApf5rdpiraOMW3eHZ6yF9m7TkjCs4iycwsV58/V4ZQ=;
	h=To:Subject:From:Date:From;
	b=XGz+fhjipJWSdq8MZZkDmZiSAUbgZ5UORP/3KJaqx3sli7Sd3kD7nIS3qNxpJLRqv
	 qCfzhBWkgBIcXTnw6gyckGWUN825xG3QNmv/byuTdvtgJTpdGSmVhgSmzlLn/inSMy
	 toq3UblgbPs/Nr2/RCnrWvsrCZcnm8h5GSGkLlHrA+vaEuaNfBMq4UWiB4AJb8osje
	 HHcv5BZbQbUE7cORcashw1VN+AOTzvwJbRbdgeVxoPF+pIBKAZAKiXzlhk8ghclCBg
	 IMnbE/VN37B1nQpqNhtJkzY7OzIMjX5mWDQ8qFdahGcZ0p8RululKRkpRrMQJ86kXW
	 bUUDf1lTHf7fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99204CF395D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676675359.20418.13449457733811311926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d9466c280c64ff21780337486af7805a0a1cd8d3677ed64f37f88c1e7b2736
Date: Thu, 19 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726766753
