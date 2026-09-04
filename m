Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D92746AA9F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788519634; cv=none; b=nU0JDeI/sZff7q6s3xVxkdW1vHVipuxIJLJSVai9CWWavKjIg5LvxE8yoHYxML0SPtrudHlMppFNqsazthrXtmrD1cnymLjugEbqjwCtb0IHHgVUuEDaH/8JrYzGzdes+tdqEG+zAzOVWZgz64kQInw/FvkfVFVJf8L5r+f76Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788519634; c=relaxed/simple;
	bh=ZFWV5/y9wfb/ioW5js/1zBz0nZZkfiRZDRVAvIw1Wfs=;
	h=To:Subject:From:Message-Id:Date; b=nWhDGhgqk4EWlF5GZjURiiyi0ZskfUzmH7m2fVhjhQBY0qmvf6U/vg0eRYEykKzUfNYMljIBCsYqoaF3NMrM/5RvT6WPwNNsZoEfd1Ghm3fq4CQY9gZ1Rfsulb8H9no4rzGHspY4MDJgVxBzb/VAJdNOHGqYhNMMaax3wDkodCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpKJW2mA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpKJW2mA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28DAC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788519633;
	bh=ZFWV5/y9wfb/ioW5js/1zBz0nZZkfiRZDRVAvIw1Wfs=;
	h=To:Subject:From:Date:From;
	b=mpKJW2mAZEtwPhib5XYG6V1Mtd5l7ns7eIJTJdqSsvcezM5M5Pk5xuKIg1lu47XUz
	 LAJefY4Wx7wULQrLx8nKKRS15XsD6mBo6AFnKlwTOQf05FLkO4/fDVYCo16D+sS2yT
	 w0DsyfcAMIg/YAz2B/+xrzKNs5mTLbhN90Q3ZiFPeoWsMpSWw+AqbIJO0hxJN+kETL
	 0DS74kA4iovsY70R5UUSQSuk++UTUVCeU8pmd/zRj7zMb1jbMf+nAfWlRd1qG93NVG
	 IQ5s7dbQrBZjrlScYk3xmxPCOSl55FuTP3x6a20/+elRIGwEzmWejQbya0HQ+OKoHq
	 F4neBZytlInWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF80C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851963376.14680.15310598606019474658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299b4a02a517b23da29d412dc74678cf218934f68911677684725878019224d7
Date: Fri, 04 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788519633
