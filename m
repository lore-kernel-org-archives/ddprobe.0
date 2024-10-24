Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AED483CDA
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729813554; cv=none; b=NG1kXtvBXN7xjMOcVlnbjW3GXvqzhhXF8SkZK3Csup0U07y5oy1uv/f3dzIGw7+hG/YN0CzcfLon3+5pzAdPIHJlXjFx/DusaWx9cKHYCN+Ruj58sdYu63PwVuvniN5Bf9aFNinhAf+tyGzBgXGQjU/Q47wyjjBr9FtHrS6BMG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729813554; c=relaxed/simple;
	bh=HMTmIKOpUCBT7eleehSOgwo3bYNuy/Mi9Oq/mpDZ/oE=;
	h=To:Subject:From:Message-Id:Date; b=bGNP5lR2gBHdC5e6YXyJKPcryPe0d+BogH5NWFe26SCoKpU1dDDtrIXyf2W3Ha5JSVihURi9pQx3q5dnsh22EgobLKFhJnT1qjmcqq5n0NGSaPu6XhB8T42BEE8jw9O7LD3kzY+72p2ECMFewHyEHv0sQiegHVTPifDLq4BaymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl22d4BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl22d4BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B047AC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729813553;
	bh=HMTmIKOpUCBT7eleehSOgwo3bYNuy/Mi9Oq/mpDZ/oE=;
	h=To:Subject:From:Date:From;
	b=Wl22d4BXR7QSDqKX5r+W5+kFB3zrw0G77afcfUq1/eSyCoyehIuK4fBBYTaKLWvPj
	 E3MQSucf56+1rCl6ZAEIlntnYDplt7fmV8l/FllQ6H14EqrQ+tNusMkf0hyCmkabIa
	 3OxOpfPllGu8Ly8L0MPK1h1ugice/8VqXb6jD1H56rVefso6WvBZNxB2OjYWpDrWRJ
	 exrYEkkgUczWfHfSkA33pKmJDo0U1SeBVn9HfBxr2OI9o0HkdxLR1uWYfERBS9ClBm
	 1+GSLTsrGxIJ4373FQZAEe6H00Or+PAmEeAaBNg4GP+XxT7u7gJ6kDj3vuuLGRCEhT
	 BkmSI4suLWcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C105D1038E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172981355362.12019.7649235378550640578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5787277f014a3392bff82245b6b04ebba14841aa8342a97da009f04f9c90c17
Date: Thu, 24 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729813553
