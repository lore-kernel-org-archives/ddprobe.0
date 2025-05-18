Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8F52CA6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747609794; cv=none; b=KoqluozQQ0y30SlIQheasp3IKCtTfV2de6ktNBa76HJmMIiGnkmaWGgwjln6wQTOFdA9M8P+S2nCk5GF9X19srolbgsrW/52EpWbLrPmXjm2a56uHKfBDOEAeA6GsAdKLCkUWMVNJ5tr9MuNlso0SVNCqPoK8c8mYBnBNtrNhmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747609794; c=relaxed/simple;
	bh=AkqbZSS/BzrpXnGJssIfPap4GE10olK6D5g7PXqoEjY=;
	h=To:Subject:From:Message-Id:Date; b=dwImqpHaafuvk/WfC4Gy+dBj8MaHDbCyPn+NxPi3QxSv0AQ4bUIq25bgwLmseAFezawhKa7AUUNDvEi6fsuIDGDUD3KX3dF6b9uw1IJCOiyEJzAeZUKl/0644FydD5yiZ1ttI3J0h9hmeeO5QGVnOhj7k4r99ax6iN4P9k1jNVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHDDIQZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHDDIQZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747609793;
	bh=AkqbZSS/BzrpXnGJssIfPap4GE10olK6D5g7PXqoEjY=;
	h=To:Subject:From:Date:From;
	b=dHDDIQZlrz564hJJLRSocigFipH1oDAswDV6Vdv/T8FOWEQtb0dYfzoG8WhyBfXfU
	 3HjvulhMuE8xjsEtrIStqGAzX3xxDe0T5uccvMikkKwOa41GWTaeb6XHvNcKmTMZ2H
	 JeetDzdVdcNHCfkwyaQ7ZdUuosPLU9Wy6Eki3ACo7XxaDg75RzVl0d9525Rte6CoHG
	 0OHrIB04nkHGgC3ldE1gHNcQGJTjqLpBESp11Q2QDqlowprCkB+wqH9ogGxFhOYfND
	 SAbtgywInYPOxACQlxlGCpc7tC4Ht4RiRd2CVpODsgyfnPRRYQA6akYsaBnNLVZJ09
	 Avi96FuSFkwig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C5C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760979357.30602.17040705887224697859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69d3ad9d381653c28f59183f08b29e0cec741d831f230655ddb9e81e37cab87
Date: Sun, 18 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747609793
