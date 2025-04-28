Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F7B4207A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745806795; cv=none; b=YjiMSSC77fxxq6PhIhbFQdaF1zdUGXwAP/0ekRZpkT3nO3Fmg1tmTanW7so/W0e7XFqX3H6RTTMUManD4rM+PpPBaNIJcvmfDevhbAMO8s5dE568XRxDLnarnlezTSdH5caJ3hYoZbCIA1tEXpeOPA6kuoib5uHh4Vzy3+66aKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745806795; c=relaxed/simple;
	bh=nie1lFzC7yeaE6UOmFzReCvbAkNTSxBbxDpeWOoalaI=;
	h=To:Subject:From:Message-Id:Date; b=Ixbb0DancZ/2MuswoNcSZ74pK40aYA3gxRzk1Z+NUycxmay3SxLUYz1WTp+i0J8Q8p6lVJjdKJGsibKBKbhAqmT7W97ibRvGhxd7l47YVrEQWdgk5FZDvs7jBodsbxdGI0VYqg/vDJydFTrK/0WRHRatvp+xbNEkR5oeJsoSfsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjysyNk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjysyNk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745806793;
	bh=nie1lFzC7yeaE6UOmFzReCvbAkNTSxBbxDpeWOoalaI=;
	h=To:Subject:From:Date:From;
	b=TjysyNk4AZ7gKdEtXqZ/nlbP8xVeVhYSiDNpgLbt0nnuhNlYhcjQjIVNDyUcwzPOZ
	 DO8ZYkEo+i6MbCxJ9x8uhLYe8EUeXA2CT979ZHsnoy4x5GRIqHeZBdJ+auGH/GAnXr
	 yAN+NUS+kHtKa6H3eDAMykdCTqUGNa3OC1U1oN3b+71A83Edy992KftKU7PFzssmpx
	 Ow5FY9a/wkZHNHOdxTuQWs3BwlsjOuWqZYhYnCmraS3eQ8KQ+5LqoOPEmArfL7i8Id
	 p3P+KkND2ekiAo8TnFUKuuKuMqmuBkkKfNWuFFSyCVg8LShuqVVNvNrT65Dznb4UCN
	 EonWk3qjQQJ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBEC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580679358.15354.213024438697684992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baff5fc448b5842d3a31bac833e21d7e63b13c855aabf0121149fd2c66ddc770
Date: Mon, 28 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745806793
