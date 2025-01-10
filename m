Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A41ACEB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736552754; cv=none; b=SDO7uV8ePLJqDEdXobZhboFHOtR2OPV9VbNbirU7l7dutxxJj+mUV8cBmPiGbKVzfTfmqEr2YvnX7Abz0GfI2WCiF2Oce8QH/1XCM4ZRnNZhA4ARQzwiYasNDcsatPf2X/LJdT/+Be/ZdBpKFD/H5HgjF4Y6fGR9qKk86c69qF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736552754; c=relaxed/simple;
	bh=fqVRUMrbt+4M4cScvxVcuLZvrRqVvkeP+oX9Kkc2xE4=;
	h=To:Subject:From:Message-Id:Date; b=l7ne3xj1WVf0YFNeAgPaJU9GGR8ACmRDZfUP3fB2XDD9B/3FbEpjPQLdp1wWERsZxFWb50+zKoPjOn1zHs+5qX4lKg2lU7EEvAxVQwZb2jZGRghQYjl+0vHFEZFJ07wgVKI1YTXkxGDw0OKkgQWtN9JW2Poyx7dlJYLXXiEWKPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTtXXvDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTtXXvDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED0CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736552753;
	bh=fqVRUMrbt+4M4cScvxVcuLZvrRqVvkeP+oX9Kkc2xE4=;
	h=To:Subject:From:Date:From;
	b=KTtXXvDTiV6zG6AEyMebDUZ4cMYqDa1abHUe8RQKnk0WdKpxHIKgODDRBFIAJIcqe
	 ZvEZxmV3MDFgWtSixNcvEqLdeJgBvRiEuo9J0Gzyc0r0gndY0Jt6yY1qrwoPc4Jo2H
	 c+Cwm3Xlw6pF9+PdVLsKlXbmgcsuRJKZwYnUmehipFbIbGp7A9ri5CFCYZVL6D4QGo
	 ajh2EfYAvp1FqlqJYo2mFsaSCSfM4PA17mC7NEzkYcknd808K5Z8tz6dFGnAC8sDjD
	 21BxX748qcowbbDJzSV84BXukvDA4SC6SZhTC7jgZyu1jc9N0LaGYvksehdHjeDMHN
	 d2xCiWnzLBHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A476CE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655275364.2314.18240417644880500129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0f75556c73db7c60df658daee81bb8c21c7770b278ea4f1165fd5ec6f117c3
Date: Fri, 10 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736552753
