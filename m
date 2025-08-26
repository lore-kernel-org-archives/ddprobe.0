Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD7A26FD9B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756193394; cv=none; b=Cc01fr+wBwzsHgrtDm2s8M3DR+E0xcPPP7FLj2o7fIDw6DZ0lmYgD2FaBOmZx2A3ESbNlHgx4pDEUMhYr4/vLSER2oy177D5FfkZqMkNYWjkBmIJGi7ylJudTVsv4GLo+HRDqn2rvSdsu9qexSisCfF5YpSNk0y41vDJSKzJt9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756193394; c=relaxed/simple;
	bh=X3EHM7znrmVzctwVTtmQX4doKr8SJ80r9I1nKgnLaZQ=;
	h=To:Subject:From:Message-Id:Date; b=FWm3juKwSUhxxwX3tzt7aalvV5zcDYTwh++NWCM5TJrqn4XnvfGw6YWKh7Nr83SxuGmjU/inwhmYZHyjUDGbtCrqebXGa4FDTTT/qVpmPkTgiLdqBBebN1+Ytn2pzGx5ipq1DQzwfUzTaEE6RWi5JsUhG3v84+kEwZrQ3S7aHVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBesdPW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBesdPW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E07BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756193393;
	bh=X3EHM7znrmVzctwVTtmQX4doKr8SJ80r9I1nKgnLaZQ=;
	h=To:Subject:From:Date:From;
	b=EBesdPW6gTlhzOHQHdgBL7io8NNywaobf7uDi9DartMt1AitgKB3FfXvVHd0HfVYc
	 Y9DCBjLiUN5elmQkhZhNSLi5OuzrV2NIrcTOaMZwdGXqeqcTf/m+Ur5dr/n+A4qwSg
	 M8lb6jfsM4WE+/pEmRZwcOGoC0VXeap6JlIOM8bZA3py0c11G8XvXPm2lxeY/OnoF0
	 Ky7qkF83cjs4cgz0DTZQ6H9Av2v7AZoDF1gcoQnxmEpkFwxT4zg2s+PglFc+cVLYba
	 VUxZy7HdVmQl3FHE5V7Go5JoSDRq7R9c2HkHp00A5ByXRXut9gyg+/gKPKtUcfcvZn
	 DVsMGLdd7ehMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95BCA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619339358.19337.1065193944375201236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ce9d9da45b1c7e1fb299572a49d6e4d0fe4d98e2cca89bbd64ece685ba06d3
Date: Tue, 26 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756193393
