Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ECA3F9ED
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088663; cv=none; b=Pt7E3CphNb58ycA9w7zcSIQ66yTZlgOQDr5ft6C/nIaqozyjgEaYTTsP50i5+6PvAbu1js9QWjaBMlV7ra+AOOlKf8A/OIdUZZ64m2UOCm0cnY9hDXk4H6E5MuruErdsABJVsJa70wn5b/GGuCEKkQUMalLhU0/FIIvCv2lzZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088663; c=relaxed/simple;
	bh=5zOu9zrfRPibzUSONVn0O9nUStiBlHGhAcIZugGhb7E=;
	h=To:Subject:From:Message-Id:Date; b=CnNxrorsTwqI/3EkH7yelNh6kP1gw4TOMLLmP68kirf1oqBErksnaCTe0y4ouX4XQjfcIWHtiars/L7nUGz2DgAcSgHnEamS/h/WVqoqU2d28/HyvGftfuwIYChMD6FFKp6uFydJ6DpDBuAK6Y4nJiFiThEmyGFGOeHreF7mYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARnJ+kLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARnJ+kLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D8C32789
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717088662;
	bh=5zOu9zrfRPibzUSONVn0O9nUStiBlHGhAcIZugGhb7E=;
	h=To:Subject:From:Date:From;
	b=ARnJ+kLRd8CQy3zJzFptwxMwahtQiXP+htOV9fKK5bcOkV5/8flNC+iHIOjTZdCVn
	 3vn0QDFbzLDFeBqwbvwRMXtjEdFQDFNQl3+joPuXQ6lnh7Lgr0z61ii+7zksJkJsS9
	 RgLCWiybHNiE57JRY9jEV+/Mlq9b8L9kO4CxHzVMsaqzAcMy0fBqXkCx/u8oZ2Ahlr
	 uXiFW95EydRKhXqJAYhK6gy8u7H9WBDWpcje2qgwDE7kFHLmavEg2KJUPZnGzQTAsr
	 2i/YUbY9irc3TvVQ4KrXzfwEHo6GDAnFtp60ARW1WIOJjSWo0OqhF35Jocq3vsitkK
	 uML+I53s1hfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE309C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708866277.15669.18030015300147550208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec968575faedbb137ecdb845d97c7c729cd39214cf7bd16760d8d350ce85fb6f
Date: Thu, 30 May 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717088662
