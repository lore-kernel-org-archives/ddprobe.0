Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0D19EED3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767173034; cv=none; b=Kc2EM3E/B/N2a/gDE52ZuAaxmyuU8Xae/nffJSZXkhG4485BW0pgKCnsUDVE5CdfrUIUa7gNBm35zaeLyzt6t0YtKuaz1wlPiPATtj2eimN3HgLZ4/NLNkPo1nN/Qo2jTAnouz5IzG5eveNd3lBkrt9Vkgs0iKYaSDXuEh7is7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767173034; c=relaxed/simple;
	bh=uwwUkr+PyZPovhR0NUtyup/02j+A8PXnQZ1HutXH/4s=;
	h=To:Subject:From:Message-Id:Date; b=B7sxQ2+qvtoWUGC+JZHkBegk6BZRICO/53JZ71EnaXpU53uMIw6O21Vy1D1RsyT6I7jg6f/8pJFF5MiR7fCEACcdCxmo1TCk24AnycOebJAmoZjE+IQb53+oPqF8YWRH5/x0/ms4/9hajz7GBQB0LXAP3KvnTORTutj6gDtv3/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO8kCenc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO8kCenc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDAC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767173033;
	bh=uwwUkr+PyZPovhR0NUtyup/02j+A8PXnQZ1HutXH/4s=;
	h=To:Subject:From:Date:From;
	b=IO8kCencaDoeMcyxYbjToSNYZOZjJ46VFKCi636WORrkcVJJg0zJrRbhojqFU+yFh
	 uf3+YEwRZkKdkgHD5vmy6zfeoanMIFCJkVK3gx4N7EWwnP9yJZifTghOJYYyYWVCa2
	 QuMoxrOZ0rlf/bE5Ggd0QffW8Jqfbz8uM3mAKPg+N3sUvKnyKrkFAk6cSWsEHqwZAN
	 fs2xbMrxqoCdKKxJQ5X5Umn0YISyuzyaRaG5lM4zF8sR/KFHxaO2SFBRwNxExtd/NF
	 79qplowCMVJ3UlIyjRSG59E8Iod2a756E7SP/pZIsqOK62UZfaX7QMdwA081wamUYO
	 WB+0tIkrKET6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93675EE57D2
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717303358.29099.9239182330880568939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97526cc18d52520754b52f73e25cc819bf2fd931d6c86637e75d07f923c6a027
Date: Wed, 31 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767173033
