Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D22A26B77A
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751457594; cv=none; b=fZ2VUTcZfu7RFgYJssILdPcNM4lQuklnzzz8B4yZdPHhbjhxs/54ps8K46sNg075TPeWOH2+iBm26FQaR417SmgNhB74APnELvBw1Dtw40ThRoNdOyCNA0U/TGBiFeCyDt21Ho0d7xB1phDyOGPOxFOSfuukaklE4ApvJOVn6VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751457594; c=relaxed/simple;
	bh=vX9lwPD2X0y93eBAPx5gtIqszYG5zocPg6yqD2eqA6s=;
	h=To:Subject:From:Message-Id:Date; b=OrD6gGZPbwzqz+9gI1cX5DdeltlcHLrDXgXh4svf3ZVbpCQyLfuq6Enkc15/IYk5HyjqnU4FqdwFeMcKWUAhcWPLPkX2vCgIKATT9UvdYVdkIpW9IHPc9WsZmALcvKSYsHXHQhFqttnu4OpUnuO+qxc6H96Dgi/IxvFUA1Q568k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVc3eWwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVc3eWwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD73C4CEF2
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751457593;
	bh=vX9lwPD2X0y93eBAPx5gtIqszYG5zocPg6yqD2eqA6s=;
	h=To:Subject:From:Date:From;
	b=ZVc3eWwv1J0OohdRsxkyeoPh0ugBRLvx80sxU3zX+jmXdVwnicgTPQ1iEsGP9C7Pj
	 U2DssImRFuVFB2LemjEEop+1mgdlvOcdGjU+u5s3EDGje3C+wYL2JZdfoAZvwyu87b
	 yB+AYcz+FwKj9l4VB+FE3kx0KQNhIecuvO6uXSOXBoGNhlw635Si4VOFz8gJy+5BD+
	 FH48u6rk7eqT3NlKbE5+khBqJt4B/kChNfVd6T6HO3o7/MfPos6H31UAjmJFjZ3f8D
	 fpP0EVDigbUgXMX+73QwgfusV5w3foCKujFjSoxGgKFHz8efcRtzdeLtCfSFlmIRUg
	 gMDheUmGgcK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F785C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145759357.1876.12385647190548821915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9baf16d1691010695123d09eb01cd9620da1fe817e5e72c6002035c24590000
Date: Wed, 02 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751457593
