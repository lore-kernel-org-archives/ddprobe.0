Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7B167DB7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750635594; cv=none; b=Bl2eZ2OoJktwlCEi247xBHoioFR8bjodXT7ozdv7Hvh4otcOUmaxLeNwXj66qUeyC+P7119QzlCuUVfJpsMD/no/2HPXKJ4dVxo9e6VHtdUZve4i+sPJ+v3U3TH+dFsrrkqizlfNdhzFqWoWpnqRbNZBa7IQpSg3AihffVru6II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750635594; c=relaxed/simple;
	bh=R5FAsw8NHQr5/k5CgoN4Njq6DXrkMnu1VV2q66h0nZE=;
	h=To:Subject:From:Message-Id:Date; b=DioWj2VWQlwb66WLb5ZANgQ3ZRyf3Xlsu6sMZI2P1AN0C8GzEhIdoV/CndxFdr2hloCjg4fb+Z7tsJTo8zYsUUjEH/DWJ3zck9+MzbtvJ9pgtfJ+2TSfuNYav4D5XHhSajf3MtPN/Ndi8esBJIXfT/D4fWg5oPkUlgc7Sniya4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBSR5vgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBSR5vgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFA4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750635593;
	bh=R5FAsw8NHQr5/k5CgoN4Njq6DXrkMnu1VV2q66h0nZE=;
	h=To:Subject:From:Date:From;
	b=rBSR5vgCMmr75y1z0GkCKxYYH7GQI40/2n61lgfMsacbUC/H8fiAMom1vf8Nh19sU
	 8p2A8jtoByVA0R586cbLEDDvZRd0BFtT04vJU26VcP7CArkps8iZBbtjx4XrwKd2Va
	 55sWmZsizCADIg8oZssGJqeZShdH1J3NItSZF/7qPy4NzLFyBE+R7LatuZf3Uun7OB
	 yp06RFxo3jUA/elXybzWJmNC1lvw6NhFinoiZbL7GeDXs1+OtojsoICRtbCYssp1E5
	 XLAalsdeK3C44UAPfVLi4+oHcNtEGa+xMOdRVVQofIFP9aiKOVElMV71NAKXSiHvbD
	 j5lnCKOM/vkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B807C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063559357.571.10936829018371003211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee501adb11b158c167d29091743ae5b99be408a087acdedd15e0cb7d008ff4e
Date: Sun, 22 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750635593
