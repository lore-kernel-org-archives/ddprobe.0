Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4C5199FBA
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739172355; cv=none; b=kOiUVBYVjBlD1F+/du9pZt+WrCqKLi6gelqHuFVQSZhvpxw1yR5g5rxAvRmcwEgZ0DZXURe+jYauQJWsjAPmS6wcup085ALVYIkBWcHfEbOnx19Iwv5+nKzR2TQeAVKQpBjIi3h6+21+fZ5YXhKjisB/6xVwtbUR25fGI2XxQI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739172355; c=relaxed/simple;
	bh=YckxrdFPvLb8YCrEZS03wuYauxfW/AuZwE41CC9mxL8=;
	h=To:Subject:From:Message-Id:Date; b=LVzRBI0SH8dFXe7IR4yy09Wg0bUkm8PfRLPXDp42Ize+iUVKhYqM8e1p0C94p8Lt1ZryqesBODFpxsFkRi/bDAcZmmBXYsJFhIwDs/akKb7YHeXhuiozA4+yPC0symsZB3YoHJYtx6uhe3FX6tuuouZpNmvBN7BgFvRGxP+Rq6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PstgkHtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PstgkHtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A915AC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739172353;
	bh=YckxrdFPvLb8YCrEZS03wuYauxfW/AuZwE41CC9mxL8=;
	h=To:Subject:From:Date:From;
	b=PstgkHtVOjRNNwoU7wbvBD9xbnag+jKjzMr7zwItVeX8GpjYnlCj59Kn1xE/xFyXp
	 mL/P53v+UC8Tdu7E2DNFwhi7YdDFA7k8W/MZTtggzUV858No1e62LYeax3Y/vVErHd
	 J+s10/rmxkAYJyNad7lmFhglnaAGL9/WTwQCckuvlxVaLbj329wC0ziL3OG1U4gn47
	 yNMSdV6s/Um6gWTn44ZVju6bAuUZPfBwQFDEvZCxDWZK9Fws2Jw03/3YsQp7CCn+7L
	 vqDVth48cYVHUBndhYPoKU1Qp8MCzHE1BmY0XGCFVFH97Sym3EgiU+pSOFoWsxqhUq
	 JbtQ8pS/3aPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B75C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917235359.24214.153552712670070792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465b2ee79928b0831750a0ca6d810530299a1d4db37ebcdcf74eda7a463eaf24
Date: Mon, 10 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739172353
