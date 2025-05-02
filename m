Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF4BC2E0
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746209994; cv=none; b=bOSvpYj2XbT9o09czQPvg+3CXc5ge9Reyy1XVj34/6IlHmNXyP3RpRtt+UiHhSQxYfNd0vBxf9sE79tNkMCGdZ/ADS8ORIduJuHUIu+RKYDpYOxF7d1FkyXoHrNv7hdc2QkxLKRKx25wX4wBVky5sV1iZNgaEl0hQdUEG8e5DTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746209994; c=relaxed/simple;
	bh=0U/VbwIlgDObSCFCvoMeswLXU9x4smLp2qOum4OxQNo=;
	h=To:Subject:From:Message-Id:Date; b=q/UHueiEzyrj+h5QNUaSjAADWpTU8TJZqZpCE5Zd30qU1fymOxACCWDSAfDybtNy6Xjrir80DhygDkjiKks+OhNyCNc+u66Qwj6iXudDZA88xCKvvz+xHbx/fAOSgXBhmlp/gwTFtXNMkDkhckVqNyaujBJ6JadWfKlQdTv+gx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4jSnSXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4jSnSXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E79C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746209993;
	bh=0U/VbwIlgDObSCFCvoMeswLXU9x4smLp2qOum4OxQNo=;
	h=To:Subject:From:Date:From;
	b=D4jSnSXRaS0t7xWXr4rub/dk41/q89jaOFceBbMG5iGCuxQajA5lBMy0dBEbbx07o
	 3MHD9BJGiYt3L9lrEyYcu5lFQx/GOmjtZ9nEGjwW9YlGMt67v12E2wXqfW1YKrnJGG
	 pL+10+ya3ESmM6fM7Z1ppwQtarS1e2oVPl0rmjOne3QHgV0S3PdvSCijPegwGHaib+
	 rQCVcv1hcGY5VUyJ5RcfritmJ5JqIDh1XFzS/8HlaChnyFaUNWO2t8al34rrEKiO3a
	 P2utn5gEoslI8EUcETs8Qz/HCi+L1PJBv8XU22asXUPf9hf0fh5LMC+cEz5DE8VIrJ
	 htcKZ4OZQHPFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF1C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620999357.15268.3065937537147817784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dae5ac31012ad0b69445479a9bb82856079c5a589d6214c06b9cd04def2b30e
Date: Fri, 02 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746209993
