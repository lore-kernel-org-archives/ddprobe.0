Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B475155C97
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766713434; cv=none; b=oYj6GUzQFUovedvGJbZF8lE2DEQdMaviycamvQ4m+PqFC+gKoNzMP9cX0Tuq6qjcRuQqOsoHv2TMc5AGUcAI/XdZYsR/9VCr82lPJmHkBqUQhMn2HdAxxTmL1IcsFmFYubRr9GwGs6oH1s55CPYXbO1+8uXE4brYz75WUF2lDtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766713434; c=relaxed/simple;
	bh=3dnV6DEthsx75VNafIKmf+vU2VSt5sDfRPZy9jOwj+k=;
	h=To:Subject:From:Message-Id:Date; b=IOe9nPeunrWZiFAVkQ0QsJGONfFRDGwaQRhtwVrqOfBbRVrOGWvq5Z/MOqe2qjpQEWA5dOGd5RkLXqNqz7Z02xh9UW/2Pbrt/vEE5MsPW/vjrtreTe6csWpb3QZ+KfjtF4CFDjvrfyFPBumr3XZ8jSstkdxISF8N+JYNy9JTHVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2fdLzKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2fdLzKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F929C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766713433;
	bh=3dnV6DEthsx75VNafIKmf+vU2VSt5sDfRPZy9jOwj+k=;
	h=To:Subject:From:Date:From;
	b=o2fdLzKrcHpTsGMh8s4ZVdBgN5pRFG1cWdz1IMMAfBrqhmJHsOj9In42Yt9ReXA5r
	 0LY9JW0DqkN+e/3H64rLJ+Yz79tVTX4jTJdxb3Q/n4Ku+S3tdeVbqCAmerzLwLYbLK
	 GVudwMJjoDuT9pmjzW0HOfklFJz8TbsNdRvsPcQrG+DXmNmvug3R0Mc7yv6CiOYlM9
	 ZJxk+HDUnGX78h7ZOgN1MnioYsn7bLAWcZSHrlGij93n3q1lpJQlK/lZH2DZCROjqC
	 F4Yb9BtEUU8iepxy2mjmVBF7AB5EgVJSKOOHSLBIi++ICjqkwHaHvN54rXx2TLdriz
	 lZjIC7F7cT00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A3BE7AD69
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671343358.25118.7078715774095030318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29a9e5b805fa899e475acada01ccf5068e275c2a3f33ad633c4dff538cb3956
Date: Fri, 26 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766713433
