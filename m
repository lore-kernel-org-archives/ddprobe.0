Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFB540DFDA
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775585734; cv=none; b=XBmz5CZVOkumfuHq6eC/ZAb0i6zHzBRNjax6Zi2NaeF8wBKIfPcniXfnPQt0MCKR2SeESuRqvqgeNa3T3iis4paVzdaDxyq2zIKnmSJ/CZE684AhR4G2D/rydHCUW+ENrvX2wbwZ+PQfaxcJ9Bnoat1kEjt8KhsWqT6JvNWROKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775585734; c=relaxed/simple;
	bh=mtWXk1gTZHiwQMi9W8nLWh662Xg2CZiPFQK6YRJQB3A=;
	h=To:Subject:From:Message-Id:Date; b=WSj2MFbQVsnrRD8DddMeryQOELeaytrQLsbGHFKaoRphshzrCE8RTMrycH5Beb7ooBp7S2tBcvnJFC0KUvzofv8qSu/DmfVttFLqGKSYyASy7Un5n/jaDh7QqrFzchU9XVhIpR+LzGO5/LQ4y7pXcTj59BLz/+eUHk3uWMn9A2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY8TDL5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY8TDL5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA64DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775585733;
	bh=mtWXk1gTZHiwQMi9W8nLWh662Xg2CZiPFQK6YRJQB3A=;
	h=To:Subject:From:Date:From;
	b=DY8TDL5gNwqj87Tae/xBqweDsqgT2t9uPZa6t5sflw6ZoQcyCqk9HTV9kof16M1pm
	 BS5v+IYD5jIlpmddiBGpLb6b/fny0pqdifz9j3IdwjlMdxPICmyfIlAdznuWycRLAE
	 AFyghywwZZ0K5eGfTCDiVL48vI7/H3ajXtopKoDmvh7K2K3Uxg6+DQJqi+uYT91Mw2
	 8HUl39GFVmngnQ4XtiTW8GEYH2BbkpURVQZsuqz8uToHA8I2o7AbLdZcsxg/Dv0jrH
	 hmvNIUYI3L3xYUiFczcEosLBWDtUMitIckqSRr75lpaOAhtkW+54WK98ydp7TJNrUl
	 fzp9hlVr85oGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C3FF5130
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558573370.22276.17815128192577945655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7976b06aa4938ce3c8650c21144bace1ee03512dedf557d6db892c0aa5b121
Date: Tue, 07 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775585733
