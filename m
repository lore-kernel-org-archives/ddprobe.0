Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D451E505
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735330554; cv=none; b=CIf3HmcvrnrCdUiMRQkFNsFfkNvxfXlA+eIGJjZy23SdIShCK5muuX3EOTNUwMj/CcDGhxVqvHn1PVS7kQ3PU1ov3U+TTQcbLgQy1sNBmgbOmxhmLkNA1tfRzKqxL+WJzwjxXZQiM9g2/dbW+M5xm0omWAgzFrnJXcLl3zeCRLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735330554; c=relaxed/simple;
	bh=Zi526qaOsqPWBPwZeOUXWRVOFouF97Tzuu+NQg+tZqk=;
	h=To:Subject:From:Message-Id:Date; b=p2pamY9sPCN0I2YMdLGXqyaE8uhwsKgrR/+ra+tZZmLrPA8gZpRg0v1j5IDjrbrjUfWOkTTyjBEGwsx2q2ApgdwjDIXhSuXFAXrS0q7zLH4cXWPW6RlP1ve74jAjicTS2ppIbOjrr6OPrEvbm9KDdrcSdgDoLtv4s2wkND6mNHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3Mboc0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Mboc0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0313C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735330553;
	bh=Zi526qaOsqPWBPwZeOUXWRVOFouF97Tzuu+NQg+tZqk=;
	h=To:Subject:From:Date:From;
	b=A3Mboc0mqZRH9OYP7VMmgPsiymAGrw/NzZNL5FBGpwmb64xv5dc/MGj8zk6zr1Ykr
	 Ek4qdTsq+Iy5Vu1KyxYynzWnDujoviuMUYboDRbBB5RxFeigwp5jvVknrcn7vLlqd8
	 KEVpaBnpjmgSN61YtvHVp1aiFTdban+pCCUzvq+rWdIs5SnhZs+Bq0jy0JieEhdLuG
	 H4xOhJJDCdhLjXCa85eEG1qrIVRdGz1LEzIWp7zSKdi3e8uPwWt5Xyq2BGyFTnXQMS
	 s07C6es9mFtUXbh4uLYVOJZIX/6kftibrLxGECY2lFIUtlf2Z7cD2jZPrsT2/bzCI0
	 dTzwYZBsjLi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F6E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533055358.16713.4583251018450212781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cd4b390d36d2118e77f5f1746eabc4adc6682af2885c141c63409eb2c989ea
Date: Fri, 27 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735330553
