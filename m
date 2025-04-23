Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CC128B4EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745420993; cv=none; b=kpwwQuAnIqaNl+2LPYZlvz0Z9Qc6hgdoqMDq8wgXZwT41m4wqEE7VZU/5RaJ5uyLiWf40IkcyQwkE9Ew+Din0GtIO1CJxFrqEa2ZCj3V78ZzwEZmhPMaPURdOA3jJkySNQT147hVUnWX+S+Dz8AOnMLmnCQjOjbOeLE9wqCOdvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745420993; c=relaxed/simple;
	bh=1BM4VeGRno4q1UkftZ0BvFBucT5CsVBNZWDPm0OyE9k=;
	h=To:Subject:From:Message-Id:Date; b=g6WAIN3SUO96JJuIQ72GaqczAh/Yl0JLzb8fLGmY3IPh10SsZ4eRr9s5UjjYBNFw7ZDwCMrbCKgKL9RDG2Hv+aGphtiuat1K4mvLUnw0qiESd2SFmJZz/T9YpY9BG7HZljdJq9B3YIiU19kAouhshbZM71rz3wIvLjhD9L+xYvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lV1pQIWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lV1pQIWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D998C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745420993;
	bh=1BM4VeGRno4q1UkftZ0BvFBucT5CsVBNZWDPm0OyE9k=;
	h=To:Subject:From:Date:From;
	b=lV1pQIWEVBnmEFg0uAcL0Puqaz2ykLWIt3oj17xnF8ulvyt0nmwOoi+aNe6rzeJyr
	 dm9trqJbgsygwK4fEu4t2kOg0bK0gJ4v6WFjsenqEPHnkk6I8FMwR/M6vFq6sxINk0
	 jc6p9a06YWhKjTNW1VNr48aQOy/sJOhaYGIeNLXFrRO4AtI6rckq1hz9VA+QLQUFbC
	 VeO+FG4KKMQqo/e76Pl3PkFzSp9A6ISVC5k9DrKoHAzTr/frbRNhFtncJR+6H8MG2W
	 fyRfPEBBhuHGwNqnAltiS3Mej7av+DlpIfXp3m2W1K8SkhmesTCghEOuU7UxBzy/J7
	 z7I9ggBUrEccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DDC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542099357.5731.17653977086183209114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3156d32ffeafdb930c5ef584d133b121127ecc44d0867675fb7b54d73b80b92c
Date: Wed, 23 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745420993
