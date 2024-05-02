Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657F416D4C2
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714681943; cv=none; b=F4ugIUvFPCFijer+LUzyZfjYKE9w6/nakHWAWXXsPQl6liYo+RSsweSi012E61kGpsccnTIVE7dQVPbXBvi7n1sozVAZdIdGIoxWvy+okNVf6aVCQnteLZQYnlG4dzNOzD5DIkXoPiSSmypX8hETYjz4fWLC/1l2cuOuI+BDzRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714681943; c=relaxed/simple;
	bh=UTsD9uqX2HZ4/IdPAS548RscuDZqOTTSZLcBx0wGGXY=;
	h=To:Subject:From:Message-Id:Date; b=q90tvZhuQAq8CQkMkdD+wUr1rS8DXEwpxmCu6WEI7/5M/Rxuu2oEpAfj4GDyRVzxMSlnWXAMlKVDEzXp2W1GAHVK86PopBhFKlfHCJqVqjueg+CX10VKFPHiJvXTtOwzh0XU7gzdVTFZjAHwHW2K3G30pO5xjpfpr3cm9IaiXas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mz3V8c+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mz3V8c+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1787C4AF19
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714681942;
	bh=UTsD9uqX2HZ4/IdPAS548RscuDZqOTTSZLcBx0wGGXY=;
	h=To:Subject:From:Date:From;
	b=mz3V8c+iJLD0M3Jox8TVkt5zDD9ssQx1gqhmafs2DEMzN2VwBwB7nyAeNLkV+tttg
	 l6mhJQ+F+lNj8J6Q82YpHHWy/8HG8xWYGkhT2vxHWASLSmB79vtY2Ybf48QPopquL3
	 912WghrJHADj8NQjRoz4FYDrU1ZNxWdwQvbtL4hi8OBGiefITJhC6sZ/NOrv8bIE9F
	 7Oc5z99Ny1G6ndhPKtGONvWzI0Zf04yK9YJfT/pTtXLuh+tW6fKzpywsXY0S6AAEes
	 5Ws2Wv0P7BNi/s4ofyvqSa6ewLVEb4TFdB3908+LlhIBOmIun9pyuqQdt7RudwSd49
	 C5JEOaIVbzeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAB3C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468194280.7429.10297081170455546923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb435f38d722f84628131012f448034c6482dc4b511088bcfbcf61a99787d04
Date: Thu, 02 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714681942
